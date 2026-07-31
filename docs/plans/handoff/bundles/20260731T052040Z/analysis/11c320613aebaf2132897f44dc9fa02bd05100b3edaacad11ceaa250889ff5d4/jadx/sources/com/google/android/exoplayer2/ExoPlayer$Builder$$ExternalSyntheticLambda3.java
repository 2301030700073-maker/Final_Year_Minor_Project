package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda3 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RenderersFactory f$0;

    public /* synthetic */ ExoPlayer$Builder$$ExternalSyntheticLambda3(RenderersFactory renderersFactory, int i) {
        this.$r8$classId = i;
        this.f$0 = renderersFactory;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        RenderersFactory lambda$new$6;
        RenderersFactory lambda$new$2;
        RenderersFactory lambda$setRenderersFactory$16;
        RenderersFactory lambda$new$8;
        int i = this.$r8$classId;
        RenderersFactory renderersFactory = this.f$0;
        switch (i) {
            case 0:
                lambda$new$6 = ExoPlayer.Builder.lambda$new$6(renderersFactory);
                return lambda$new$6;
            case 1:
                lambda$new$2 = ExoPlayer.Builder.lambda$new$2(renderersFactory);
                return lambda$new$2;
            case 2:
                lambda$setRenderersFactory$16 = ExoPlayer.Builder.lambda$setRenderersFactory$16(renderersFactory);
                return lambda$setRenderersFactory$16;
            default:
                lambda$new$8 = ExoPlayer.Builder.lambda$new$8(renderersFactory);
                return lambda$new$8;
        }
    }
}
