package org.schabi.newpipe.extractor.services.peertube.extractors;

import androidx.compose.ui.node.Owner;
import androidx.core.os.BundleKt;
import com.grack.nanojson.JsonObject;
import com.grack.nanojson.JsonParser;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PeertubeTrendingExtractor extends KioskExtractor {
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return getPage(new Page(Owner.CC.m$1(this.linkHandler.getUrl(), "&start=0&count=12")));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.id;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        JsonObject jsonObject;
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        String str = (String) this.downloader.get(page.getUrl()).mHiddenViews;
        if (Utils.isBlank(str)) {
            jsonObject = null;
        } else {
            try {
                jsonObject = (JsonObject) JsonParser.object().from(str);
            } catch (Exception e) {
                Utils$$ExternalSyntheticBUOutline0.m("Could not parse json data for kiosk info", e);
                return null;
            }
        }
        if (jsonObject == null) {
            throw new ExtractionException("Unable to get PeerTube kiosk info");
        }
        BundleKt.validate(jsonObject);
        long j = jsonObject.getLong("total", 0L);
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        BundleKt.collectItemsFrom(streamInfoItemsCollector, jsonObject, this.linkHandler.getBaseUrl(), false);
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, BundleKt.getNextPage(page.getUrl(), j));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
    }
}
