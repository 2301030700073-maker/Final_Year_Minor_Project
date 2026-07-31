package org.schabi.newpipe.extractor.services.youtube.extractors.kiosk;

import kotlin.io.CloseableKt;
import org.schabi.newpipe.extractor.exceptions.UnsupportedContentInCountryException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class YoutubeTrendingMusicExtractor extends YoutubeChartsBaseKioskExtractor {
    @Override // org.schabi.newpipe.extractor.ListExtractor
    public final String getName() {
        return "Trending Music Videos";
    }

    @Override // org.schabi.newpipe.extractor.services.youtube.extractors.kiosk.YoutubeChartsBaseKioskExtractor, org.schabi.newpipe.extractor.ListExtractor
    public final void onFetchPage(CloseableKt closeableKt) {
        if (!YoutubeChartsBaseKioskExtractor.YT_CHARTS_SUPPORTED_COUNTRY_CODES.contains(this.service.getContentCountry().getCountryCode())) {
            throw new UnsupportedContentInCountryException("YouTube Charts doesn't support this country for trending music videos charts");
        }
        super.onFetchPage(closeableKt);
    }
}
