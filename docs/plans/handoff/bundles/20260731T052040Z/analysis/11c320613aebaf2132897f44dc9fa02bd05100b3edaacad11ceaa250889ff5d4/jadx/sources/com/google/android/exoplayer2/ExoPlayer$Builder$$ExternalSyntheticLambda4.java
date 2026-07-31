package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda4 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaSource.Factory f$0;

    public /* synthetic */ ExoPlayer$Builder$$ExternalSyntheticLambda4(MediaSource.Factory factory, int i) {
        this.$r8$classId = i;
        this.f$0 = factory;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        MediaSource.Factory lambda$new$7;
        MediaSource.Factory lambda$new$5;
        MediaSource.Factory lambda$setMediaSourceFactory$17;
        MediaSource.Factory lambda$new$9;
        int i = this.$r8$classId;
        MediaSource.Factory factory = this.f$0;
        switch (i) {
            case 0:
                lambda$new$7 = ExoPlayer.Builder.lambda$new$7(factory);
                return lambda$new$7;
            case 1:
                lambda$new$5 = ExoPlayer.Builder.lambda$new$5(factory);
                return lambda$new$5;
            case 2:
                lambda$setMediaSourceFactory$17 = ExoPlayer.Builder.lambda$setMediaSourceFactory$17(factory);
                return lambda$setMediaSourceFactory$17;
            default:
                lambda$new$9 = ExoPlayer.Builder.lambda$new$9(factory);
                return lambda$new$9;
        }
    }
}
