package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.upstream.experimental.ExperimentalBandwidthMeter;
import com.google.android.exoplayer2.util.NetworkTypeObserver;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultBandwidthMeter$$ExternalSyntheticLambda0 implements NetworkTypeObserver.Listener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ DefaultBandwidthMeter$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // com.google.android.exoplayer2.util.NetworkTypeObserver.Listener
    public final void onNetworkTypeChanged(int i) {
        int i2 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i2) {
            case 0:
                ((DefaultBandwidthMeter) obj).onNetworkTypeChanged(i);
                break;
            default:
                ((ExperimentalBandwidthMeter) obj).onNetworkTypeChanged(i);
                break;
        }
    }
}
