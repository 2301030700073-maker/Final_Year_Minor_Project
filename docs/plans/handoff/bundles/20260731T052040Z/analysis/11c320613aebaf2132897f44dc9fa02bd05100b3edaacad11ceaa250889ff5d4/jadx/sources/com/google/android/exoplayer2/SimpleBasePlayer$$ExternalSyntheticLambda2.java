package com.google.android.exoplayer2;

import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Size;
import com.google.common.base.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleBasePlayer$$ExternalSyntheticLambda2 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SimpleBasePlayer.State f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SimpleBasePlayer$$ExternalSyntheticLambda2(SimpleBasePlayer.State state, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
        this.f$1 = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        SimpleBasePlayer.State lambda$setVideoSurfaceView$19;
        SimpleBasePlayer.State lambda$setPlaylistMetadata$15;
        SimpleBasePlayer.State lambda$setVideoSurfaceHolder$18;
        SimpleBasePlayer.State lambda$setPlaybackParameters$11;
        SimpleBasePlayer.State lambda$setVideoTextureView$20;
        SimpleBasePlayer.State lambda$setTrackSelectionParameters$14;
        int i = this.$r8$classId;
        Object obj = this.f$1;
        SimpleBasePlayer.State state = this.f$0;
        switch (i) {
            case 0:
                lambda$setVideoSurfaceView$19 = SimpleBasePlayer.lambda$setVideoSurfaceView$19(state, (SurfaceView) obj);
                return lambda$setVideoSurfaceView$19;
            case 1:
                lambda$setPlaylistMetadata$15 = SimpleBasePlayer.lambda$setPlaylistMetadata$15(state, (MediaMetadata) obj);
                return lambda$setPlaylistMetadata$15;
            case 2:
                lambda$setVideoSurfaceHolder$18 = SimpleBasePlayer.lambda$setVideoSurfaceHolder$18(state, (SurfaceHolder) obj);
                return lambda$setVideoSurfaceHolder$18;
            case 3:
                lambda$setPlaybackParameters$11 = SimpleBasePlayer.lambda$setPlaybackParameters$11(state, (PlaybackParameters) obj);
                return lambda$setPlaybackParameters$11;
            case 4:
                lambda$setVideoTextureView$20 = SimpleBasePlayer.lambda$setVideoTextureView$20(state, (Size) obj);
                return lambda$setVideoTextureView$20;
            default:
                lambda$setTrackSelectionParameters$14 = SimpleBasePlayer.lambda$setTrackSelectionParameters$14(state, (TrackSelectionParameters) obj);
                return lambda$setTrackSelectionParameters$14;
        }
    }
}
