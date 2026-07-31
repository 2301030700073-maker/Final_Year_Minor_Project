package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import androidx.compose.ui.Modifier;
import androidx.sqlite.SQLite;
import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParserException;
import j$.util.Collection;
import j$.util.Objects;
import java.util.Collections;
import java.util.List;
import kotlin.io.CloseableKt;
import kotlin.ranges.RangesKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.jsoup.select.Evaluator;
import org.jsoup.select.Evaluator$$ExternalSyntheticLambda0;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.PaidContentException;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.streaminfoitem.BandcampPlaylistStreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.stream.StreamInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampPlaylistExtractor extends SearchExtractor {
    public JsonObject albumJson;
    public Document document;
    public String name;
    public JsonArray trackInfo;

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    /* renamed from: getDescription */
    public final Description mo861getDescription() {
        Document document = this.document;
        document.getClass();
        SQLite.notEmpty("trackInfo");
        Element element = (Element) RangesKt.stream(document, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(new Evaluator.Id(0, "trackInfo", false), document, 1)).findFirst().orElse(null);
        if (element == null) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not find trackInfo in document");
            return null;
        }
        Elements elementsByClass = element.getElementsByClass("tralbum-about");
        Elements elementsByClass2 = element.getElementsByClass("tralbum-credits");
        Document document2 = this.document;
        document2.getClass();
        SQLite.notEmpty("license");
        Element element2 = (Element) RangesKt.stream(document2, Element.class).filter(new Evaluator$$ExternalSyntheticLambda0(new Evaluator.Id(0, "license", false), document2, 1)).findFirst().orElse(null);
        if (elementsByClass.isEmpty() && elementsByClass2.isEmpty() && element2 == null) {
            return Description.EMPTY_DESCRIPTION;
        }
        StringBuilder sb = new StringBuilder();
        if (!elementsByClass.isEmpty()) {
            Element element3 = (Element) elementsByClass.first$org$jsoup$select$Nodes();
            Objects.requireNonNull(element3);
            sb.append(element3.html());
        }
        if (!elementsByClass2.isEmpty()) {
            Element element4 = (Element) elementsByClass2.first$org$jsoup$select$Nodes();
            Objects.requireNonNull(element4);
            sb.append(element4.html());
        }
        if (element2 != null) {
            sb.append(element2.html());
        }
        return new Description(sb.toString(), 1);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        StreamingService streamingService = this.service;
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
        for (int i = 0; i < this.trackInfo.size(); i++) {
            JsonObject object = this.trackInfo.getObject(i);
            if (this.trackInfo.size() < 10) {
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) new BandcampPlaylistStreamInfoItemExtractor(object, getUploaderUrl(), streamingService));
            } else {
                String uploaderUrl = getUploaderUrl();
                List thumbnails = getThumbnails();
                BandcampPlaylistStreamInfoItemExtractor bandcampPlaylistStreamInfoItemExtractor = new BandcampPlaylistStreamInfoItemExtractor(object, uploaderUrl, null);
                bandcampPlaylistStreamInfoItemExtractor.substituteCovers = thumbnails;
                streamInfoItemsCollector.commit((StreamInfoItemExtractor) bandcampPlaylistStreamInfoItemExtractor);
            }
        }
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.name;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final long getStreamCount() {
        return this.trackInfo.size();
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getThumbnails() {
        return this.albumJson.isNull("art_id") ? Collections.EMPTY_LIST : BandcampExtractorHelper.getImagesFromImageId(this.albumJson.getLong("art_id", 0L), true);
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getUploaderAvatars() {
        return BandcampExtractorHelper.getImagesFromImageUrl((String) Collection.EL.stream(this.document.getElementsByClass("band-photo")).map(new Nodes$$ExternalSyntheticLambda0(29)).findFirst().orElse(""));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderName() {
        return this.albumJson.getString("artist", null);
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final String getUploaderUrl() {
        return Modifier.CC.m("https://", this.linkHandler.getUrl().split("/")[2], "/");
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        String str = (String) closeableKt.get(((ListLinkHandler) this.linkHandler).getUrl()).mHiddenViews;
        this.document = Jsoup.parse(str);
        JsonObject albumInfoJson = BandcampStreamExtractor.getAlbumInfoJson(str);
        this.albumJson = albumInfoJson;
        this.trackInfo = albumInfoJson.getArray("trackinfo");
        try {
            this.name = Parser.getJsonData(str, "data-embed").getString("album_title", null);
            if (this.trackInfo.isEmpty()) {
                throw new PaidContentException("Album needs to be purchased");
            }
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Faulty JSON; page likely does not contain album data", e);
        } catch (ArrayIndexOutOfBoundsException e2) {
            Utils$$ExternalSyntheticBUOutline0.m("JSON does not exist", e2);
        }
    }
}
