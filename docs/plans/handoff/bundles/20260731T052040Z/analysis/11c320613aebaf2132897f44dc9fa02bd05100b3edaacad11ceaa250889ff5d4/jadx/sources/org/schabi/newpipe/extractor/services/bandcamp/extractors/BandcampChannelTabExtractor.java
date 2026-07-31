package org.schabi.newpipe.extractor.services.bandcamp.extractors;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.util.Iterator;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.linkhandler.LinkHandler;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.bandcamp.extractors.streaminfoitem.BandcampDiscographStreamInfoItemExtractor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BandcampChannelTabExtractor extends SearchExtractor {
    public JsonArray discography;
    public final String filter;

    public BandcampChannelTabExtractor(StreamingService streamingService, ListLinkHandler listLinkHandler) {
        super(streamingService, listLinkHandler, 0);
        String str = (String) listLinkHandler.getContentFilters().get(0);
        str.getClass();
        if (str.equals("albums")) {
            this.filter = "album";
        } else if (str.equals("tracks")) {
            this.filter = "track";
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Unsupported channel tab: ".concat(str));
            throw null;
        }
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
        Iterator<E> it = this.discography.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next instanceof JsonObject) {
                JsonObject jsonObject = (JsonObject) next;
                String string = jsonObject.getString("item_type", "");
                if (string.equals(this.filter)) {
                    boolean equals = string.equals("album");
                    LinkHandler linkHandler = this.linkHandler;
                    if (equals) {
                        multiInfoItemsCollector.commit(new BandcampAlbumInfoItemExtractor(jsonObject, linkHandler.getUrl()));
                    } else if (string.equals("track")) {
                        multiInfoItemsCollector.commit(new BandcampDiscographStreamInfoItemExtractor(jsonObject, linkHandler.getUrl()));
                    }
                }
            }
        }
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, null);
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        return null;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        if (this.discography == null) {
            this.discography = BandcampExtractorHelper.getArtistDetails(this.linkHandler.getId()).getArray("discography");
        }
    }
}
