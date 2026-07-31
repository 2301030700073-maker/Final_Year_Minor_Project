package org.schabi.newpipe.extractor.services.soundcloud.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import com.grack.nanojson.JsonParserException;
import java.util.Iterator;
import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.comments.CommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.BandcampCommentsInfoItemExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudCommentsExtractor extends SearchExtractor {
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return getPage(this.linkHandler.getUrl());
    }

    public final ListExtractor.InfoItemsPage getPage(String str) {
        try {
            JsonObject jsonObject = (JsonObject) JsonParser.object().from((String) Utility.downloader.get(str).mHiddenViews);
            StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 2);
            JsonArray array = jsonObject.getArray("collection");
            String url = this.linkHandler.getUrl();
            Iterator<E> it = array.iterator();
            while (it.hasNext()) {
                streamInfoItemsCollector.commit((CommentsInfoItemExtractor) new BandcampCommentsInfoItemExtractor((JsonObject) it.next(), url, 1));
            }
            String string = jsonObject.getString("next_href", null);
            return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, Utils.isNullOrEmpty(string) ? null : new Page(string));
        } catch (JsonParserException e) {
            Utils$$ExternalSyntheticBUOutline0.m("Could not parse json", e);
            return null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (page != null && !Utils.isNullOrEmpty(page.getUrl())) {
            return getPage(page.getUrl());
        }
        return ListExtractor.InfoItemsPage.EMPTY;
    }
}
