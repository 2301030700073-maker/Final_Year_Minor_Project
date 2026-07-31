package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.source.ads.AdsMediaSource;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AdsMediaSource$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AdsMediaSource f$0;
    public final /* synthetic */ AdsMediaSource.ComponentListener f$1;

    public /* synthetic */ AdsMediaSource$$ExternalSyntheticLambda0(AdsMediaSource adsMediaSource, AdsMediaSource.ComponentListener componentListener, int i) {
        this.$r8$classId = i;
        this.f$0 = adsMediaSource;
        this.f$1 = componentListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        AdsMediaSource.ComponentListener componentListener = this.f$1;
        AdsMediaSource adsMediaSource = this.f$0;
        switch (i) {
            case 0:
                adsMediaSource.lambda$prepareSourceInternal$0(componentListener);
                break;
            default:
                adsMediaSource.lambda$releaseSourceInternal$1(componentListener);
                break;
        }
    }
}
