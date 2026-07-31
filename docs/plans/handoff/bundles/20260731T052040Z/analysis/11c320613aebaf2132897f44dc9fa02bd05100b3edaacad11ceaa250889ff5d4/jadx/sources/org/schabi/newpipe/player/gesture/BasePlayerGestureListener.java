package org.schabi.newpipe.player.gesture;

import android.os.Handler;
import android.os.Looper;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.lifecycle.LiveData;
import androidx.work.OperationKt;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.views.player.PlayerFastSeekOverlay;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BasePlayerGestureListener extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {
    public static final Companion Companion = new Companion();
    public final PlayerBinding binding;
    public PlayerFastSeekOverlay doubleTapControls;
    public final long doubleTapDelay;
    public final Handler doubleTapHandler;
    public boolean isDoubleTapping;
    public final Player player;
    public final VideoPlayerUi playerUi;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        String str = Player.TAG;
    }

    public BasePlayerGestureListener(VideoPlayerUi videoPlayerUi) {
        this.playerUi = videoPlayerUi;
        Player player = videoPlayerUi.player;
        player.getClass();
        this.player = player;
        PlayerBinding playerBinding = videoPlayerUi.binding;
        playerBinding.getClass();
        this.binding = playerBinding;
        this.doubleTapDelay = 550L;
        this.doubleTapHandler = new Handler(Looper.getMainLooper());
    }

    public abstract DisplayPortion getDisplayPortion(MotionEvent motionEvent);

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        motionEvent.getClass();
        DisplayPortion displayPortion = getDisplayPortion(motionEvent);
        VideoPlayerUi videoPlayerUi = this.playerUi;
        if (videoPlayerUi.isSomePopupMenuVisible) {
            videoPlayerUi.hideControls(0L, 0L);
        }
        if (displayPortion == DisplayPortion.LEFT || displayPortion == DisplayPortion.RIGHT) {
            if (!this.isDoubleTapping) {
                this.isDoubleTapping = true;
                Handler handler = this.doubleTapHandler;
                handler.removeCallbacksAndMessages("doubleTap");
                OperationKt.postDelayed(handler, new LiveData.AnonymousClass1(this, 21), "doubleTap", 550L);
                PlayerFastSeekOverlay playerFastSeekOverlay = this.doubleTapControls;
                if (playerFastSeekOverlay != null) {
                    getDisplayPortion(motionEvent);
                    playerFastSeekOverlay.initTap = false;
                    playerFastSeekOverlay.secondsView.stopAnimation();
                }
            }
        } else if (displayPortion == DisplayPortion.MIDDLE) {
            Player player = this.player;
            player.playPause();
            if (player.isPlaying()) {
                videoPlayerUi.hideControls(0L, 0L);
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0292 A[ORIG_RETURN, RETURN] */
    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onDown(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.gesture.BasePlayerGestureListener.onDown(android.view.MotionEvent):boolean");
    }

    public boolean onDownNotDoubleTapping(MotionEvent motionEvent) {
        return false;
    }

    public final void onSingleTap() {
        VideoPlayerUi videoPlayerUi = this.playerUi;
        if (videoPlayerUi.isControlsVisible()) {
            videoPlayerUi.hideControls(150L, 0L);
        } else if (this.player.currentState == 128) {
            videoPlayerUi.showControls(0L);
        } else {
            videoPlayerUi.showControlsThenHide();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        view.getClass();
        motionEvent.getClass();
        this.playerUi.gestureDetector.onTouchEvent(motionEvent);
        return false;
    }
}
