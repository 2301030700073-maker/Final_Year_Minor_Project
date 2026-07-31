package com.google.android.exoplayer2;

import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleBasePlayer$$ExternalSyntheticLambda3 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SimpleBasePlayer.State f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ SimpleBasePlayer$$ExternalSyntheticLambda3(SimpleBasePlayer.State state, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
        this.f$1 = z;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        SimpleBasePlayer.State lambda$setShuffleModeEnabled$9;
        SimpleBasePlayer.State lambda$setPlayWhenReady$1;
        SimpleBasePlayer.State lambda$setDeviceMuted$28;
        SimpleBasePlayer.State lambda$setDeviceMuted$29;
        switch (this.$r8$classId) {
            case 0:
                lambda$setShuffleModeEnabled$9 = SimpleBasePlayer.lambda$setShuffleModeEnabled$9(this.f$0, this.f$1);
                return lambda$setShuffleModeEnabled$9;
            case 1:
                lambda$setPlayWhenReady$1 = SimpleBasePlayer.lambda$setPlayWhenReady$1(this.f$0, this.f$1);
                return lambda$setPlayWhenReady$1;
            case 2:
                lambda$setDeviceMuted$28 = SimpleBasePlayer.lambda$setDeviceMuted$28(this.f$0, this.f$1);
                return lambda$setDeviceMuted$28;
            default:
                lambda$setDeviceMuted$29 = SimpleBasePlayer.lambda$setDeviceMuted$29(this.f$0, this.f$1);
                return lambda$setDeviceMuted$29;
        }
    }
}
