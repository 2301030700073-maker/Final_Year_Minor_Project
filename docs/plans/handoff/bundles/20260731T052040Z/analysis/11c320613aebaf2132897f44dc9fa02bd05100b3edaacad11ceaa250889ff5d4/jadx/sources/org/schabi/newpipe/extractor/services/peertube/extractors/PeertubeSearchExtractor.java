package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import java.util.Collections;
import java.util.List;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MultiInfoItemsCollector;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.linkhandler.SearchQueryHandler;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.services.peertube.PeertubeService;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeSearchExtractor extends SearchExtractor {
    public final boolean sepia;

    public PeertubeSearchExtractor(PeertubeService peertubeService, SearchQueryHandler searchQueryHandler, boolean z) {
        super(peertubeService, searchQueryHandler, 0);
        this.sepia = z;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return getPage(new Page(Owner.CC.m$1(this.linkHandler.getUrl(), "&start=0&count=12")));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final List getMetaInfo() {
        return Collections.EMPTY_LIST;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        JsonObject jsonObject = null;
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        String str = (String) this.downloader.get(page.getUrl()).mHiddenViews;
        if (!Utils.isBlank(str)) {
            try {
                jsonObject = (JsonObject) JsonParser.object().from(str);
            } catch (Exception e) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for search info", e);
                return null;
            }
        }
        if (jsonObject == null) {
            throw new ExtractionException("Unable to get PeerTube search info");
        }
        BundleKt.validate(jsonObject);
        long j = jsonObject.getLong("total", 0L);
        MultiInfoItemsCollector multiInfoItemsCollector = new MultiInfoItemsCollector(this.service.serviceId);
        BundleKt.collectItemsFrom(multiInfoItemsCollector, jsonObject, this.linkHandler.getBaseUrl(), this.sepia);
        return new ListExtractor.InfoItemsPage(multiInfoItemsCollector, BundleKt.getNextPage(page.getUrl(), j));
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final String getSearchSuggestion() {
        return "";
    }

    @Override // org.schabi.newpipe.extractor.search.SearchExtractor
    public final boolean isCorrectedSearch() {
        return false;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
    }
}
