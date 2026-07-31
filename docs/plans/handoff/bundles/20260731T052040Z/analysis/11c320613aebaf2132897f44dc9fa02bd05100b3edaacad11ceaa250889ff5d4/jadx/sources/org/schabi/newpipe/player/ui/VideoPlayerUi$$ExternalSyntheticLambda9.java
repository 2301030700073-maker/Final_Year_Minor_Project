package org.schabi.newpipe.player.ui;

import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.ktx.AnimationType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda9(Object obj, long j, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        long j = this.f$1;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                VideoPlayerUi videoPlayerUi = (VideoPlayerUi) obj;
                long j2 = this.f$1;
                videoPlayerUi.showHideShadow(j2, false);
                AppKt.animate(videoPlayerUi.binding.playbackControlRoot, false, j2, AnimationType.ALPHA, 0L, new VideoPlayerUi$$ExternalSyntheticLambda8(videoPlayerUi, 14));
                break;
            case 1:
                ((VideoPlayerUi) obj).hideControls(300L, j);
                break;
            default:
                ((AudioRendererEventListener.EventDispatcher) obj).lambda$positionAdvancing$3(j);
                break;
        }
    }
}
