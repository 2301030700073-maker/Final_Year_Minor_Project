package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayer$Builder$$ExternalSyntheticLambda8 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ TrackSelector f$0;

    public /* synthetic */ ExoPlayer$Builder$$ExternalSyntheticLambda8(TrackSelector trackSelector, int i) {
        this.$r8$classId = i;
        this.f$0 = trackSelector;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        TrackSelector lambda$new$10;
        TrackSelector lambda$setTrackSelector$18;
        int i = this.$r8$classId;
        TrackSelector trackSelector = this.f$0;
        switch (i) {
            case 0:
                lambda$new$10 = ExoPlayer.Builder.lambda$new$10(trackSelector);
                return lambda$new$10;
            default:
                lambda$setTrackSelector$18 = ExoPlayer.Builder.lambda$setTrackSelector$18(trackSelector);
                return lambda$setTrackSelector$18;
        }
    }
}
