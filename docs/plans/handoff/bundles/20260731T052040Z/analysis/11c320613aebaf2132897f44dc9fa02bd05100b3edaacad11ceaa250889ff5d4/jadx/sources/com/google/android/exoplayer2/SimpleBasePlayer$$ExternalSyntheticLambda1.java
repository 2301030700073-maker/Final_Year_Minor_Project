package com.google.android.exoplayer2;

import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleBasePlayer$$ExternalSyntheticLambda1 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SimpleBasePlayer.State f$0;

    public /* synthetic */ SimpleBasePlayer$$ExternalSyntheticLambda1(SimpleBasePlayer.State state, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        SimpleBasePlayer.State lambda$increaseDeviceVolume$24;
        SimpleBasePlayer.State lambda$release$13;
        SimpleBasePlayer.State lambda$decreaseDeviceVolume$27;
        SimpleBasePlayer.State lambda$setVideoSurface$17;
        SimpleBasePlayer.State lambda$increaseDeviceVolume$25;
        SimpleBasePlayer.State lambda$stop$12;
        SimpleBasePlayer.State lambda$prepare$7;
        SimpleBasePlayer.State lambda$decreaseDeviceVolume$26;
        SimpleBasePlayer.State lambda$clearVideoOutput$21;
        int i = this.$r8$classId;
        SimpleBasePlayer.State state = this.f$0;
        switch (i) {
            case 0:
                lambda$increaseDeviceVolume$24 = SimpleBasePlayer.lambda$increaseDeviceVolume$24(state);
                return lambda$increaseDeviceVolume$24;
            case 1:
                lambda$release$13 = SimpleBasePlayer.lambda$release$13(state);
                return lambda$release$13;
            case 2:
                lambda$decreaseDeviceVolume$27 = SimpleBasePlayer.lambda$decreaseDeviceVolume$27(state);
                return lambda$decreaseDeviceVolume$27;
            case 3:
                lambda$setVideoSurface$17 = SimpleBasePlayer.lambda$setVideoSurface$17(state);
                return lambda$setVideoSurface$17;
            case 4:
                lambda$increaseDeviceVolume$25 = SimpleBasePlayer.lambda$increaseDeviceVolume$25(state);
                return lambda$increaseDeviceVolume$25;
            case 5:
                lambda$stop$12 = SimpleBasePlayer.lambda$stop$12(state);
                return lambda$stop$12;
            case 6:
                lambda$prepare$7 = SimpleBasePlayer.lambda$prepare$7(state);
                return lambda$prepare$7;
            case 7:
                lambda$decreaseDeviceVolume$26 = SimpleBasePlayer.lambda$decreaseDeviceVolume$26(state);
                return lambda$decreaseDeviceVolume$26;
            default:
                lambda$clearVideoOutput$21 = SimpleBasePlayer.lambda$clearVideoOutput$21(state);
                return lambda$clearVideoOutput$21;
        }
    }
}
