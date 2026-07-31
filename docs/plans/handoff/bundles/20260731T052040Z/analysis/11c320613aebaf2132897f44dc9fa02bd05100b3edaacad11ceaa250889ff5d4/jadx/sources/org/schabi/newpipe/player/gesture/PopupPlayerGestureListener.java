package org.schabi.newpipe.player.gesture;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.animation.AnticipateInterpolator;
import androidx.transition.Transition;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import kotlin.ranges.RangesKt;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.ui.PopupPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PopupPlayerGestureListener extends BasePlayerGestureListener {
    public static final Companion Companion = new Companion();
    public float initFirstPointerX;
    public float initFirstPointerY;
    public double initPointerDistance;
    public float initSecPointerX;
    public float initSecPointerY;
    public int initialPopupX;
    public int initialPopupY;
    public boolean isMoving;
    public boolean isResizing;
    public final PopupPlayerUi playerUi;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        int i = MainActivity.$r8$clinit;
    }

    public PopupPlayerGestureListener(PopupPlayerUi popupPlayerUi) {
        super(popupPlayerUi);
        this.playerUi = popupPlayerUi;
        this.initialPopupX = -1;
        this.initialPopupY = -1;
        this.initPointerDistance = -1.0d;
        this.initFirstPointerX = -1.0f;
        this.initFirstPointerY = -1.0f;
        this.initSecPointerX = -1.0f;
        this.initSecPointerY = -1.0f;
    }

    @Override // org.schabi.newpipe.player.gesture.BasePlayerGestureListener
    public final DisplayPortion getDisplayPortion(MotionEvent motionEvent) {
        double x = motionEvent.getX();
        PopupPlayerUi popupPlayerUi = this.playerUi;
        return x < ((double) popupPlayerUi.popupLayoutParams.width) / 3.0d ? DisplayPortion.LEFT : ((double) motionEvent.getX()) > (((double) popupPlayerUi.popupLayoutParams.width) * 2.0d) / 3.0d ? DisplayPortion.RIGHT : DisplayPortion.MIDDLE;
    }

    @Override // org.schabi.newpipe.player.gesture.BasePlayerGestureListener
    public final boolean onDownNotDoubleTapping(MotionEvent motionEvent) {
        PopupPlayerUi popupPlayerUi = this.playerUi;
        popupPlayerUi.updateScreenSize();
        popupPlayerUi.checkPopupPositionBounds();
        WindowManager.LayoutParams layoutParams = popupPlayerUi.popupLayoutParams;
        this.initialPopupX = layoutParams.x;
        this.initialPopupY = layoutParams.y;
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        motionEvent2.getClass();
        if (this.player.playerType != PlayerType.POPUP) {
            return true;
        }
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((abs < abs2 ? abs2 : abs) <= 2500.0f) {
            return false;
        }
        PopupPlayerUi popupPlayerUi = this.playerUi;
        if (abs > 2500.0f) {
            popupPlayerUi.popupLayoutParams.x = (int) f;
        }
        if (abs2 > 2500.0f) {
            popupPlayerUi.popupLayoutParams.y = (int) f2;
        }
        popupPlayerUi.checkPopupPositionBounds();
        popupPlayerUi.windowManager.updateViewLayout(this.binding.rootView, popupPlayerUi.popupLayoutParams);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        motionEvent.getClass();
        PopupPlayerUi popupPlayerUi = this.playerUi;
        popupPlayerUi.updateScreenSize();
        popupPlayerUi.checkPopupPositionBounds();
        popupPlayerUi.changePopupSize(popupPlayerUi.screenWidth);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        motionEvent2.getClass();
        if (motionEvent == null) {
            return false;
        }
        if (this.isResizing) {
            return super.onScroll(motionEvent, motionEvent2, f, f2);
        }
        boolean z = this.isMoving;
        PopupPlayerUi popupPlayerUi = this.playerUi;
        if (!z) {
            AppKt.animate$default((FloatingActionButton) popupPlayerUi.closeOverlayBinding.builder, true, 200L, null, 0L, null, 28);
        }
        this.isMoving = true;
        float rawX = this.initialPopupX + (motionEvent2.getRawX() - motionEvent.getRawX());
        float f3 = popupPlayerUi.screenWidth - popupPlayerUi.popupLayoutParams.width;
        if (f3 < 0.0f) {
            f3 = 0.0f;
        }
        float coerceIn = RangesKt.coerceIn(rawX, 0.0f, f3);
        float rawY = this.initialPopupY + (motionEvent2.getRawY() - motionEvent.getRawY());
        float f4 = popupPlayerUi.screenHeight - popupPlayerUi.popupLayoutParams.height;
        if (f4 < 0.0f) {
            f4 = 0.0f;
        }
        float coerceIn2 = RangesKt.coerceIn(rawY, 0.0f, f4);
        WindowManager.LayoutParams layoutParams = popupPlayerUi.popupLayoutParams;
        layoutParams.x = (int) coerceIn;
        layoutParams.y = (int) coerceIn2;
        boolean isInsideClosingRadius = popupPlayerUi.isInsideClosingRadius(motionEvent2);
        PlayerBinding playerBinding = this.binding;
        if ((playerBinding.closingOverlay.getVisibility() == 0) != isInsideClosingRadius) {
            AppKt.animate$default(playerBinding.closingOverlay, isInsideClosingRadius, 200L, null, 0L, null, 28);
        }
        popupPlayerUi.windowManager.updateViewLayout(playerBinding.rootView, popupPlayerUi.popupLayoutParams);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        motionEvent.getClass();
        if (this.isDoubleTapping) {
            return true;
        }
        if (this.player.exoPlayerIsNull()) {
            return false;
        }
        onSingleTap();
        return true;
    }

    @Override // org.schabi.newpipe.player.gesture.BasePlayerGestureListener, android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        view.getClass();
        motionEvent.getClass();
        super.onTouch(view, motionEvent);
        int pointerCount = motionEvent.getPointerCount();
        PlayerBinding playerBinding = this.binding;
        PopupPlayerUi popupPlayerUi = this.playerUi;
        if (pointerCount == 2 && !this.isMoving && !this.isResizing) {
            playerBinding.loadingPanel.setVisibility(8);
            popupPlayerUi.hideControls(0L, 0L);
            AppKt.animate$default(playerBinding.fastSeekOverlay, false, 0L, null, 0L, null, 28);
            AppKt.animate$default(playerBinding.currentDisplaySeek, false, 0L, AnimationType.ALPHA, 0L, null, 16);
            this.initFirstPointerX = motionEvent.getX(0);
            this.initFirstPointerY = motionEvent.getY(0);
            this.initSecPointerX = motionEvent.getX(1);
            float y = motionEvent.getY(1);
            this.initSecPointerY = y;
            this.initPointerDistance = Math.hypot(this.initFirstPointerX - this.initSecPointerX, this.initFirstPointerY - y);
            this.isResizing = true;
        }
        int action = motionEvent.getAction();
        Player player = this.player;
        if (action == 2 && !this.isMoving && this.isResizing) {
            if (this.initPointerDistance != -1.0d && motionEvent.getPointerCount() == 2) {
                if (Math.max(Math.hypot(motionEvent.getX(0) - this.initFirstPointerX, motionEvent.getY(0) - this.initFirstPointerY), Math.hypot(motionEvent.getX(1) - this.initSecPointerX, motionEvent.getY(1) - this.initSecPointerY)) > ViewConfiguration.get(player.context).getScaledTouchSlop()) {
                    double hypot = Math.hypot(motionEvent.getX(0) - motionEvent.getX(1), motionEvent.getY(0) - motionEvent.getY(1));
                    WindowManager.LayoutParams layoutParams = popupPlayerUi.popupLayoutParams;
                    double d = layoutParams.width;
                    double d2 = (d * hypot) / this.initPointerDistance;
                    this.initPointerDistance = hypot;
                    layoutParams.x += (int) ((d - d2) / 2.0d);
                    popupPlayerUi.checkPopupPositionBounds();
                    popupPlayerUi.updateScreenSize();
                    popupPlayerUi.changePopupSize((int) Math.min(popupPlayerUi.screenWidth, d2));
                    return true;
                }
            }
            return false;
        }
        if (motionEvent.getAction() == 1) {
            if (this.isMoving) {
                this.isMoving = false;
                VideoPlayerUi videoPlayerUi = super.playerUi;
                if (videoPlayerUi.isControlsVisible() && player.currentState == 124) {
                    videoPlayerUi.hideControls(300L, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                }
                if (popupPlayerUi.isInsideClosingRadius(motionEvent)) {
                    int i = MainActivity.$r8$clinit;
                    if (!popupPlayerUi.isPopupClosing) {
                        popupPlayerUi.isPopupClosing = true;
                        popupPlayerUi.player.saveStreamProgressState();
                        popupPlayerUi.windowManager.removeView(popupPlayerUi.binding.rootView);
                        int height = (int) (((FloatingActionButton) popupPlayerUi.closeOverlayBinding.builder).getRootView().getHeight() - ((FloatingActionButton) popupPlayerUi.closeOverlayBinding.builder).getY());
                        ((FloatingActionButton) popupPlayerUi.closeOverlayBinding.builder).animate().setListener(null).cancel();
                        ((FloatingActionButton) popupPlayerUi.closeOverlayBinding.builder).animate().setInterpolator(new AnticipateInterpolator()).translationY(height).setDuration(400L).setListener(new Transition.AnonymousClass3(popupPlayerUi, 12)).start();
                    }
                } else if (!popupPlayerUi.isPopupClosing) {
                    AppKt.animate$default((FloatingActionButton) popupPlayerUi.closeOverlayBinding.builder, false, 200L, null, 0L, null, 28);
                    AppKt.animate$default(playerBinding.closingOverlay, false, 200L, null, 0L, null, 28);
                }
            }
            if (this.isResizing) {
                this.isResizing = false;
                this.initPointerDistance = -1.0d;
                this.initFirstPointerX = -1.0f;
                this.initFirstPointerY = -1.0f;
                this.initSecPointerX = -1.0f;
                this.initSecPointerY = -1.0f;
                player.changeState(player.currentState);
            }
            if (!popupPlayerUi.isPopupClosing && popupPlayerUi.popupLayoutParams != null) {
                Player player2 = popupPlayerUi.player;
                PlayerService playerService = player2.context;
                player2.prefs.edit().putFloat(playerService.getString(R.string.popup_saved_width_key), popupPlayerUi.popupLayoutParams.width).putInt(playerService.getString(R.string.popup_saved_x_key), popupPlayerUi.popupLayoutParams.x).putInt(playerService.getString(R.string.popup_saved_y_key), popupPlayerUi.popupLayoutParams.y).apply();
            }
        }
        view.performClick();
        return true;
    }
}
