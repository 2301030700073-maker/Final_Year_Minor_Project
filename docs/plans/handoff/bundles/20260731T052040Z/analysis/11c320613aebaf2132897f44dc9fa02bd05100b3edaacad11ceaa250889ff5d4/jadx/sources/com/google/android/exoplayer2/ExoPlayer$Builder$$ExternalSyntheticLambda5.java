package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda5 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BandwidthMeter f$0;

    public /* synthetic */ ExoPlayer$Builder$$ExternalSyntheticLambda5(BandwidthMeter bandwidthMeter, int i) {
        this.$r8$classId = i;
        this.f$0 = bandwidthMeter;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        BandwidthMeter lambda$setBandwidthMeter$20;
        BandwidthMeter lambda$new$12;
        int i = this.$r8$classId;
        BandwidthMeter bandwidthMeter = this.f$0;
        switch (i) {
            case 0:
                lambda$setBandwidthMeter$20 = ExoPlayer.Builder.lambda$setBandwidthMeter$20(bandwidthMeter);
                return lambda$setBandwidthMeter$20;
            default:
                lambda$new$12 = ExoPlayer.Builder.lambda$new$12(bandwidthMeter);
                return lambda$new$12;
        }
    }
}
