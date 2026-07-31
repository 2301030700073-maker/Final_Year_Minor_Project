package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LoadControl f$0;

    public /* synthetic */ ExoPlayer$Builder$$ExternalSyntheticLambda0(LoadControl loadControl, int i) {
        this.$r8$classId = i;
        this.f$0 = loadControl;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        LoadControl lambda$setLoadControl$19;
        LoadControl lambda$new$11;
        int i = this.$r8$classId;
        LoadControl loadControl = this.f$0;
        switch (i) {
            case 0:
                lambda$setLoadControl$19 = ExoPlayer.Builder.lambda$setLoadControl$19(loadControl);
                return lambda$setLoadControl$19;
            default:
                lambda$new$11 = ExoPlayer.Builder.lambda$new$11(loadControl);
                return lambda$new$11;
        }
    }
}
