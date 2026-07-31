package org.schabi.newpipe.extractor.services.media_ccc.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import j$.util.Comparator;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.services.youtube.YoutubeChannelHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MediaCCCRecentKiosk extends KioskExtractor {
    public JsonObject doc;

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        JsonArray array = this.doc.getArray("events");
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, Comparator.EL.reversed(Comparator.CC.comparing(new YoutubeChannelHelper$$ExternalSyntheticLambda2(12), Comparator.CC.nullsLast(Comparator.CC.comparing(new YoutubeChannelHelper$$ExternalSyntheticLambda2(13))))), 0);
        array.streamAsJsonObjects().map(new YoutubeChannelHelper$$ExternalSyntheticLambda2(14)).filter(new JsonArray$$ExternalSyntheticLambda0(9)).forEach(new MediaCCCRecentKiosk$$ExternalSyntheticLambda4(streamInfoItemsCollector, 0));
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return "recent";
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        return ListExtractor.InfoItemsPage.EMPTY;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        try {
            this.doc = (JsonObject) JsonParser.object().from((String) closeableKt.get("https://api.media.ccc.de/public/events/recent", null, this.service.getLocalization()).mHiddenViews);
        } catch (JsonParserException e) {
            throw new ExtractionException("Could not parse json.", e);
        }
    }
}
