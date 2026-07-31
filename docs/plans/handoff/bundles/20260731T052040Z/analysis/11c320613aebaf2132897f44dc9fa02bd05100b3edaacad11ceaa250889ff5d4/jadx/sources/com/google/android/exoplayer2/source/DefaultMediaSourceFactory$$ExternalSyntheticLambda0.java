package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.source.ProgressiveMediaExtractor;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultMediaSourceFactory$$ExternalSyntheticLambda0 implements ExtractorsFactory, ProgressiveMediaExtractor.Factory {
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DefaultMediaSourceFactory$$ExternalSyntheticLambda0(Object obj) {
        this.f$0 = obj;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public Extractor[] createExtractors() {
        Extractor[] lambda$createMediaSource$0;
        lambda$createMediaSource$0 = DefaultMediaSourceFactory.lambda$createMediaSource$0((Format) this.f$0);
        return lambda$createMediaSource$0;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
    public ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
        ProgressiveMediaExtractor lambda$new$0;
        lambda$new$0 = ProgressiveMediaSource.Factory.lambda$new$0((ExtractorsFactory) this.f$0, playerId);
        return lambda$new$0;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
    public Extractor[] createExtractors(Uri uri, Map map) {
        Extractor[] lambda$createMediaSource$0;
        lambda$createMediaSource$0 = DefaultMediaSourceFactory.lambda$createMediaSource$0((Format) this.f$0);
        return lambda$createMediaSource$0;
    }
}
