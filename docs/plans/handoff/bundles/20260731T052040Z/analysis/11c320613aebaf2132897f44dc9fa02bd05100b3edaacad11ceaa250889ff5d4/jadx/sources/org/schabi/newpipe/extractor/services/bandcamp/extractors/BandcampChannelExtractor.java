package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.node.Owner;
import androidx.sqlite.SQLite;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.util.DesugarCollections;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.io.CloseableKt;
import kotlin.ranges.RangesKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Evaluator$$ExternalSyntheticLambda0;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ReCaptchaException;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampChannelExtractor extends ListExtractor {
    public JsonObject channelInfo;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TabExtractorBuilder implements ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder {
        private final JsonArray discography;

        public TabExtractorBuilder(JsonArray jsonArray) {
            this.discography = jsonArray;
        }

        @Override // org.schabi.newpipe.extractor.linkhandler.ReadyChannelTabListLinkHandler.ChannelTabExtractorBuilder
        public final SearchExtractor build(StreamingService streamingService, ListLinkHandler listLinkHandler) {
            JsonArray jsonArray = this.discography;
            BandcampChannelTabExtractor bandcampChannelTabExtractor = new BandcampChannelTabExtractor(streamingService, listLinkHandler);
            bandcampChannelTabExtractor.discography = jsonArray;
            return bandcampChannelTabExtractor;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getAvatars() {
        return BandcampExtractorHelper.getImagesFromImageId(this.channelInfo.getLong("bio_image_id", 0L), false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getBanners() {
        try {
            Document parse = Jsoup.parse((String) this.downloader.get(Utils.replaceHttpWithHttps(this.channelInfo.getString("bandcamp_url", null))).mHiddenViews);
            parse.getClass();
            SQLite.notEmpty("customHeader");
            return (List) Stream.CC.of((Element) RangesKt.stream(parse, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(new Evaluator.Id(0, "customHeader", 0 == true ? 1 : 0), parse, 1)).findFirst().orElse(null)).filter(new JsonArray$$ExternalSyntheticLambda0(4)).flatMap(new Nodes$$ExternalSyntheticLambda0(23)).map(new Nodes$$ExternalSyntheticLambda0(24)).filter(new JsonArray$$ExternalSyntheticLambda0(5)).map(new Nodes$$ExternalSyntheticLambda0(25)).collect(Collectors.toUnmodifiableList());
        } catch (IOException | ReCaptchaException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not download artist web site", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getDescription() {
        return this.channelInfo.getString("bio", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getFeedUrl() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.channelInfo.getString("name", null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getParentChannelAvatars() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getParentChannelName() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getParentChannelUrl() {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final long getSubscriberCount() {
        return -1L;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final List getTabs() {
        JsonArray array = this.channelInfo.getArray("discography");
        TabExtractorBuilder tabExtractorBuilder = new TabExtractorBuilder(array);
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = array.iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (z && z2) {
                break;
            }
            if (next instanceof JsonObject) {
                String string = ((JsonObject) next).getString("item_type", null);
                LinkHandler linkHandler = this.linkHandler;
                if (!z && "track".equals(string)) {
                    arrayList.add(new ReadyChannelTabListLinkHandler(Owner.CC.m$1(linkHandler.getUrl(), "/track"), linkHandler.getId(), "tracks", tabExtractorBuilder));
                    z = true;
                }
                if (!z2 && "album".equals(string)) {
                    arrayList.add(new ReadyChannelTabListLinkHandler(Owner.CC.m$1(linkHandler.getUrl(), "/album"), linkHandler.getId(), "albums", tabExtractorBuilder));
                    z2 = true;
                }
            }
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final boolean isVerified() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        this.channelInfo = BandcampExtractorHelper.getArtistDetails(this.linkHandler.getId());
    }
}
