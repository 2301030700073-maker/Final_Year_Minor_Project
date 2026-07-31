package com.google.android.exoplayer2;

import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleBasePlayer$$ExternalSyntheticLambda4 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SimpleBasePlayer.State f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ SimpleBasePlayer$$ExternalSyntheticLambda4(SimpleBasePlayer.State state, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = state;
        this.f$1 = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        SimpleBasePlayer.State lambda$setDeviceVolume$22;
        SimpleBasePlayer.State lambda$setRepeatMode$8;
        SimpleBasePlayer.State lambda$setDeviceVolume$23;
        switch (this.$r8$classId) {
            case 0:
                lambda$setDeviceVolume$22 = SimpleBasePlayer.lambda$setDeviceVolume$22(this.f$0, this.f$1);
                return lambda$setDeviceVolume$22;
            case 1:
                lambda$setRepeatMode$8 = SimpleBasePlayer.lambda$setRepeatMode$8(this.f$0, this.f$1);
                return lambda$setRepeatMode$8;
            default:
                lambda$setDeviceVolume$23 = SimpleBasePlayer.lambda$setDeviceVolume$23(this.f$0, this.f$1);
                return lambda$setDeviceVolume$23;
        }
    }
}
