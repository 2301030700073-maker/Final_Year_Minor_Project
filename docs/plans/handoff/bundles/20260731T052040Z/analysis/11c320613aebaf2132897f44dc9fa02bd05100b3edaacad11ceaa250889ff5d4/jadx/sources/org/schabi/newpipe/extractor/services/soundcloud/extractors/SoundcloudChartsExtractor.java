package org.schabi.newpipe.extractor.services.soundcloud.extractors;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import java.io.IOException;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.services.soundcloud.SoundcloudParsingHelper;
import org.schabi.newpipe.extractor.stream.StreamInfoItemsCollector;
import org.schabi.newpipe.extractor.utils.Utils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SoundcloudChartsExtractor extends KioskExtractor {
    public StreamInfoItemsCollector initialFetchCollector;
    public String initialFetchNextPageUrl;

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getInitialPage() {
        return new ListExtractor.InfoItemsPage(this.initialFetchCollector, new Page(this.initialFetchNextPageUrl));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return this.id;
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final ListExtractor.InfoItemsPage getPage(Page page) {
        if (page == null || Utils.isNullOrEmpty(page.getUrl())) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Page doesn't contain an URL");
            return null;
        }
        StreamInfoItemsCollector streamInfoItemsCollector = new StreamInfoItemsCollector(this.service.serviceId, null, 0);
        return new ListExtractor.InfoItemsPage(streamInfoItemsCollector, new Page(SoundcloudParsingHelper.getStreamsFromApi(streamInfoItemsCollector, page.getUrl(), true)));
    }

    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        if (this.initialFetchNextPageUrl != null) {
            return;
        }
        StreamingService streamingService = this.service;
        this.initialFetchCollector = new StreamInfoItemsCollector(streamingService.serviceId, null, 0);
        String m = Modifier.CC.m("https://api-v2.soundcloud.com/charts?genre=soundcloud:genres:all-music&client_id=", SoundcloudParsingHelper.clientId(), "&kind=trending");
        ContentCountry contentCountry = ServiceList.SoundCloud.getContentCountry();
        String m2 = streamingService.getSupportedCountries().contains(contentCountry) ? Owner.CC.m(m, "&region=soundcloud:regions:", contentCountry.getCountryCode()) : null;
        try {
            StreamInfoItemsCollector streamInfoItemsCollector = this.initialFetchCollector;
            if (m2 == null) {
                m2 = m;
            }
            this.initialFetchNextPageUrl = SoundcloudParsingHelper.getStreamsFromApi(streamInfoItemsCollector, m2, true);
        } catch (IOException unused) {
            this.initialFetchNextPageUrl = SoundcloudParsingHelper.getStreamsFromApi(this.initialFetchCollector, m, true);
        }
    }
}
