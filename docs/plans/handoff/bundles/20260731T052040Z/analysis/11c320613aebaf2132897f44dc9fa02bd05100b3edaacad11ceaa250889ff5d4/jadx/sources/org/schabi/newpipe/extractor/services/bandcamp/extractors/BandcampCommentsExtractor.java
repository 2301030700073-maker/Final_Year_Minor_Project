package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import androidx.sqlite.SQLite;
import com.android.tools.r8.RecordTag;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import com.grack.nanojson.JsonStringWriter;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.io.CloseableKt;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.Jsoup;
import org.jsoup.internal.StringUtil$$ExternalSyntheticLambda3;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Evaluator$$ExternalSyntheticLambda0;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.jsoup.select.QueryParser;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.peertube.extractors.PeertubeCommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampCommentsExtractor extends SearchExtractor {
    public final /* synthetic */ int $r8$classId;
    public Object document;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BandcampCommentsExtractor(StreamingService streamingService, LinkHandler linkHandler, int i) {
        super(streamingService, linkHandler);
        this.$r8$classId = i;
    }

    public static String getNextPageToken(JsonArray jsonArray) {
        return (String) jsonArray.streamAsJsonObjects().map(new Nodes$$ExternalSyntheticLambda0(26)).reduce(new StringUtil$$ExternalSyntheticLambda3(1)).orElseThrow(new Entities$$ExternalSyntheticLambda0(9));
    }

    public void collectRepliesFrom(StreamInfoItemsCollector streamInfoItemsCollector, JsonObject jsonObject) {
        Iterator<E> it = jsonObject.getArray("children").iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof JsonObject) {
                JsonObject jsonObject2 = (JsonObject) next;
                JsonObject object = jsonObject2.getObject("comment");
                JsonArray array = jsonObject2.getArray("children");
                if (!object.getBoolean("isDeleted")) {
                    LinkHandler linkHandler = this.linkHandler;
                    streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new PeertubeCommentsInfoItemExtractor(object, array, linkHandler.getUrl(), linkHandler.getBaseUrl(), isReply()));
                }
            }
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        switch (i) {
            case 0:
                StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 2);
                Document document = (Document) this.document;
                document.getClass();
                SQLite.notEmpty("collectors-data");
                int i2 = 0;
                int i3 = 1;
                JsonObject jsonObject = Parser.toJsonObject(((Element) RangesKt.stream(document, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(new Evaluator.Id(0, "collectors-data", false), document, i3)).findFirst().orElse(null)).attr("data-blob"));
                JsonArray array = jsonObject.getArray("reviews");
                Iterator<E> it = array.iterator();
                while (it.hasNext()) {
                    streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new BandcampCommentsInfoItemExtractor((JsonObject) it.next(), linkHandler.getUrl(), i2));
                }
                if (!jsonObject.getBoolean("more_reviews_available")) {
                    return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
                }
                Document document2 = (Document) this.document;
                document2.getClass();
                SQLite.notEmpty("meta[name=bc-page-properties]");
                Evaluator parse = QueryParser.parse("meta[name=bc-page-properties]");
                parse.reset();
                Element element = (Element) RangesKt.stream(document2, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(parse, document2, i3)).findFirst().orElse(null);
                parse.reset();
                Object[] objArr = {Long.toString(Parser.toJsonObject(element.attr("content")).getLong("item_id", 0L)), getNextPageToken(array)};
                ArrayList arrayList = new ArrayList(2);
                while (i2 < 2) {
                    Object obj = objArr[i2];
                    i2 = RecordTag.m(obj, arrayList, obj, i2, 1);
                }
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, new Page(DesugarCollections.unmodifiableList(arrayList)));
            default:
                return isReply() ? getPage(new Page(linkHandler.getOriginalUrl())) : getPage(new Page(Owner.CC.m$1(linkHandler.getUrl(), "?start=0&count=12")));
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        long size;
        int i = this.$r8$classId;
        LinkHandler linkHandler = this.linkHandler;
        CloseableKt closeableKt = this.downloader;
        StreamingService streamingService = this.service;
        JsonObject jsonObject = null;
        switch (i) {
            case 0:
                StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 2);
                List ids = page.getIds();
                int i2 = 0;
                String str = (String) ids.get(0);
                String str2 = (String) ids.get(1);
                try {
                    Map map = Collections.EMPTY_MAP;
                    JsonStringWriter jsonStringWriter = new JsonStringWriter();
                    jsonStringWriter.object();
                    jsonStringWriter.value("tralbum_type", "t");
                    jsonStringWriter.value("tralbum_id", str);
                    jsonStringWriter.value("token", str2);
                    jsonStringWriter.value(7, "count");
                    jsonStringWriter.array("exclude_fan_ids");
                    jsonStringWriter.end();
                    jsonStringWriter.end();
                    JsonObject jsonObject2 = Parser.toJsonObject((String) closeableKt.postWithContentTypeJson("https://bandcamp.com/api/tralbumcollectors/2/reviews", map, jsonStringWriter.done().getBytes(StandardCharsets.UTF_8)).mHiddenViews);
                    JsonArray array = jsonObject2.getArray("results");
                    Iterator<E> it = array.iterator();
                    while (it.hasNext()) {
                        streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new BandcampCommentsInfoItemExtractor((JsonObject) it.next(), linkHandler.getUrl(), i2));
                    }
                    if (!jsonObject2.getBoolean("more_available")) {
                        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
                    }
                    Object[] objArr = {str, getNextPageToken(array)};
                    ArrayList arrayList = new ArrayList(2);
                    while (i2 < 2) {
                        Object obj = objArr[i2];
                        i2 = RecordTag.m(obj, arrayList, obj, i2, 1);
                    }
                    return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, new Page(DesugarCollections.unmodifiableList(arrayList)));
                } catch (IOException | ReCaptchaException e) {
                    Utils$$ExternalSyntheticBUOutline0.m("Could not fetch reviews", e);
                    return null;
                }
            default:
                if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
                    return null;
                }
                StreamInfoItemsCollector streamInfoItemsCollector2 = new StreamInfoItemsCollector(streamingService.serviceId, null, 2);
                if (page.getBody() == null) {
                    String str3 = (String) closeableKt.get(page.getUrl()).mHiddenViews;
                    if (!Utils.isBlank(str3)) {
                        try {
                            jsonObject = (JsonObject) JsonParser.object().from(str3);
                        } catch (Exception e2) {
                            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for comments info", e2);
                            return null;
                        }
                    }
                    if (jsonObject == null) {
                        throw new ExtractionException("Unable to get PeerTube kiosk info");
                    }
                    BundleKt.validate(jsonObject);
                    if (isReply() || jsonObject.containsKey("children")) {
                        size = jsonObject.getArray("children").size();
                        collectRepliesFrom(streamInfoItemsCollector2, jsonObject);
                    } else {
                        size = jsonObject.getLong("total", 0L);
                        Iterator<E> it2 = jsonObject.getArray("data").iterator();
                        while (it2.hasNext()) {
                            Object next = it2.next();
                            if (next instanceof JsonObject) {
                                JsonObject jsonObject3 = (JsonObject) next;
                                if (!jsonObject3.getBoolean("isDeleted")) {
                                    streamInfoItemsCollector2.commit((CommentsInfoItemExtractor) new PeertubeCommentsInfoItemExtractor(jsonObject3, null, linkHandler.getUrl(), linkHandler.getBaseUrl(), isReply()));
                                }
                            }
                        }
                    }
                } else {
                    try {
                        JsonObject jsonObject4 = (JsonObject) JsonParser.object().from(new String(page.getBody(), StandardCharsets.UTF_8));
                        this.document = Boolean.TRUE;
                        size = jsonObject4.getArray("children").size();
                        collectRepliesFrom(streamInfoItemsCollector2, jsonObject4);
                    } catch (JsonParserException e3) {
                        Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for nested comments  info", e3);
                        return null;
                    }
                }
                return new ListExtractor.InfoItemsPage(streamInfoItemsCollector2, BundleKt.getNextPage(page.getUrl(), size));
        }
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public boolean isCommentsDisabled() {
        switch (this.$r8$classId) {
            case 0:
                return BandcampExtractorHelper.isRadioUrl(this.linkHandler.getUrl());
            default:
                return super.isCommentsDisabled();
        }
    }

    public boolean isReply() {
        if (((Boolean) this.document) == null) {
            LinkHandler linkHandler = this.linkHandler;
            if (linkHandler.getOriginalUrl().contains("/videos/watch/")) {
                this.document = Boolean.FALSE;
            } else {
                this.document = Boolean.valueOf(linkHandler.getOriginalUrl().contains("/comment-threads/"));
            }
        }
        return ((Boolean) this.document).booleanValue();
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        switch (this.$r8$classId) {
            case 0:
                this.document = Jsoup.parse((String) closeableKt.get(((ListLinkHandler) this.linkHandler).getUrl()).mHiddenViews);
                break;
        }
    }

    private final void onFetchPage$org$schabi$newpipe$extractor$services$peertube$extractors$PeertubeCommentsExtractor(CloseableKt closeableKt) {
    }
}
