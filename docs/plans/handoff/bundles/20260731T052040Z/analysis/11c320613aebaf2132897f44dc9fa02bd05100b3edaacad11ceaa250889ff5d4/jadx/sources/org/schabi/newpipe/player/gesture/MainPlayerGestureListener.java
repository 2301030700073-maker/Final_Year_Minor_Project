package org.schabi.newpipe.player.gesture;

import android.media.AudioManager;
import android.view.MotionEvent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.preference.PreferenceManager;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.helper.AudioReactor;
import org.schabi.newpipe.player.ui.MainPlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class MainPlayerGestureListener extends BasePlayerGestureListener {
    public static final Companion Companion = new Companion();
    public boolean isMoving;
    public final MainPlayerUi playerUi;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        int i = MainActivity.$r8$clinit;
    }

    public MainPlayerGestureListener(MainPlayerUi mainPlayerUi) {
        super(mainPlayerUi);
        this.playerUi = mainPlayerUi;
    }

    @Override // org.schabi.newpipe.player.gesture.BasePlayerGestureListener
    public final DisplayPortion getDisplayPortion(MotionEvent motionEvent) {
        double x = motionEvent.getX();
        PlayerBinding playerBinding = this.binding;
        return x < ((double) playerBinding.rootView.getWidth()) / 3.0d ? DisplayPortion.LEFT : ((double) motionEvent.getX()) > (((double) playerBinding.rootView.getWidth()) * 2.0d) / 3.0d ? DisplayPortion.RIGHT : DisplayPortion.MIDDLE;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        motionEvent2.getClass();
        if (motionEvent != null && this.playerUi.isFullscreen) {
            Player player = this.player;
            PlayerService playerService = player.context;
            PlayerService playerService2 = player.context;
            int identifier = playerService.getResources().getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier <= 0 ? 0 : playerService.getResources().getDimensionPixelSize(identifier);
            int identifier2 = playerService2.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
            int dimensionPixelSize2 = identifier2 <= 0 ? 0 : playerService2.getResources().getDimensionPixelSize(identifier2);
            boolean z = motionEvent.getY() < ((float) dimensionPixelSize);
            boolean z2 = motionEvent.getY() > ((float) (this.binding.rootView.getHeight() - dimensionPixelSize2));
            if (!z && !z2) {
                boolean z3 = Math.abs(motionEvent2.getY() - motionEvent.getY()) <= 40.0f;
                if ((this.isMoving || (!z3 && Math.abs(f) <= Math.abs(f2))) && player.currentState != 128) {
                    this.isMoving = true;
                    double x = motionEvent.getX();
                    double width = r7.rootView.getWidth() / 2.0d;
                    DisplayPortion displayPortion = DisplayPortion.RIGHT_HALF;
                    if ((x < width ? DisplayPortion.LEFT_HALF : displayPortion) == displayPortion) {
                        String string = PreferenceManager.getDefaultSharedPreferences(playerService2).getString(playerService2.getString(R.string.right_gesture_control_key), playerService2.getString(R.string.default_right_gesture_control_value));
                        if (Intrinsics.areEqual(string, playerService2.getString(R.string.volume_control_key))) {
                            onScrollVolume(f2);
                            return true;
                        }
                        if (Intrinsics.areEqual(string, playerService2.getString(R.string.brightness_control_key))) {
                            onScrollBrightness(f2);
                            return true;
                        }
                    } else {
                        String string2 = PreferenceManager.getDefaultSharedPreferences(playerService2).getString(playerService2.getString(R.string.left_gesture_control_key), playerService2.getString(R.string.default_left_gesture_control_value));
                        if (Intrinsics.areEqual(string2, playerService2.getString(R.string.volume_control_key))) {
                            onScrollVolume(f2);
                            return true;
                        }
                        if (Intrinsics.areEqual(string2, playerService2.getString(R.string.brightness_control_key))) {
                            onScrollBrightness(f2);
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final void onScrollBrightness(float f) {
        AppCompatActivity appCompatActivity = (AppCompatActivity) this.playerUi.getParentActivity().orElse(null);
        if (appCompatActivity == null) {
            return;
        }
        Window window = appCompatActivity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        PlayerBinding playerBinding = this.binding;
        ProgressBar progressBar = playerBinding.brightnessProgressBar;
        RelativeLayout relativeLayout = playerBinding.brightnessRelativeLayout;
        progressBar.setProgress((int) (RangesKt.coerceIn(attributes.screenBrightness, 0.0f, 1.0f) * progressBar.getMax()));
        progressBar.incrementProgressBy((int) f);
        float progress = progressBar.getProgress() / progressBar.getMax();
        attributes.screenBrightness = progress;
        window.setAttributes(attributes);
        appCompatActivity.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(appCompatActivity), 0).edit().putFloat(appCompatActivity.getString(R.string.screen_brightness_key), progress).putLong(appCompatActivity.getString(R.string.screen_brightness_timestamp_key), System.currentTimeMillis()).apply();
        double d = progress;
        playerBinding.brightnessImageView.setImageDrawable(Cookie.Companion.getDrawable(this.player.context, d < 0.25d ? R.drawable.ic_brightness_low : d < 0.75d ? R.drawable.ic_brightness_medium : R.drawable.ic_brightness_high));
        if (relativeLayout.getVisibility() != 0) {
            AppKt.animate$default(relativeLayout, true, 200L, AnimationType.SCALE_AND_ALPHA, 0L, null, 24);
        }
        playerBinding.volumeRelativeLayout.setVisibility(8);
    }

    public final void onScrollVolume(float f) {
        int i;
        PlayerBinding playerBinding = this.binding;
        ProgressBar progressBar = playerBinding.volumeProgressBar;
        Player player = this.player;
        AudioReactor audioReactor = player.audioReactor;
        audioReactor.getClass();
        AudioManager audioManager = audioReactor.audioManager;
        RelativeLayout relativeLayout = playerBinding.volumeRelativeLayout;
        if (relativeLayout.getVisibility() != 0) {
            progressBar.setProgress((int) ((audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3)) * progressBar.getMax()));
        }
        playerBinding.volumeProgressBar.incrementProgressBy((int) f);
        float progress = progressBar.getProgress() / progressBar.getMax();
        audioManager.setStreamVolume(3, (int) (audioManager.getStreamMaxVolume(3) * progress), 0);
        AppCompatImageView appCompatImageView = playerBinding.volumeImageView;
        PlayerService playerService = player.context;
        if (progress <= 0.0f) {
            i = R.drawable.ic_volume_off;
        } else {
            double d = progress;
            i = d < 0.25d ? R.drawable.ic_volume_mute : d < 0.75d ? R.drawable.ic_volume_down : R.drawable.ic_volume_up;
        }
        appCompatImageView.setImageDrawable(Cookie.Companion.getDrawable(playerService, i));
        if (relativeLayout.getVisibility() != 0) {
            AppKt.animate$default(relativeLayout, true, 200L, AnimationType.SCALE_AND_ALPHA, 0L, null, 24);
        }
        playerBinding.brightnessRelativeLayout.setVisibility(8);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        motionEvent.getClass();
        if (!this.isDoubleTapping) {
            super.onSingleTapConfirmed(motionEvent);
            if (this.player.currentState != 123) {
                onSingleTap();
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
    
        if (r0 != 2) goto L31;
     */
    @Override // org.schabi.newpipe.player.gesture.BasePlayerGestureListener, android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r15, android.view.MotionEvent r16) {
        /*
            r14 = this;
            r15.getClass()
            r16.getClass()
            super.onTouch(r15, r16)
            int r0 = r16.getAction()
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L5e
            boolean r0 = r14.isMoving
            if (r0 == 0) goto L5e
            r14.isMoving = r1
            org.schabi.newpipe.player.ui.VideoPlayerUi r0 = r14.playerUi
            boolean r3 = r0.isControlsVisible()
            if (r3 == 0) goto L2e
            org.schabi.newpipe.player.Player r3 = r14.player
            int r3 = r3.currentState
            r4 = 124(0x7c, float:1.74E-43)
            if (r3 != r4) goto L2e
            r3 = 300(0x12c, double:1.48E-321)
            r5 = 2000(0x7d0, double:9.88E-321)
            r0.hideControls(r3, r5)
        L2e:
            org.schabi.newpipe.databinding.PlayerBinding r0 = r14.binding
            android.widget.RelativeLayout r3 = r0.volumeRelativeLayout
            android.widget.RelativeLayout r4 = r0.brightnessRelativeLayout
            int r3 = r3.getVisibility()
            org.schabi.newpipe.ktx.AnimationType r8 = org.schabi.newpipe.ktx.AnimationType.SCALE_AND_ALPHA
            if (r3 != 0) goto L4b
            android.widget.RelativeLayout r5 = r0.volumeRelativeLayout
            r12 = 0
            r13 = 16
            r6 = 0
            r9 = r8
            r7 = 200(0xc8, double:9.9E-322)
            r10 = 200(0xc8, double:9.9E-322)
            net.newpipe.app.AppKt.animate$default(r5, r6, r7, r9, r10, r12, r13)
            goto L4c
        L4b:
            r9 = r8
        L4c:
            int r0 = r4.getVisibility()
            if (r0 != 0) goto L5e
            r11 = 0
            r12 = 16
            r5 = 0
            r6 = 200(0xc8, double:9.9E-322)
            r8 = r9
            r9 = 200(0xc8, double:9.9E-322)
            net.newpipe.app.AppKt.animate$default(r4, r5, r6, r8, r9, r11, r12)
        L5e:
            int r0 = r16.getAction()
            if (r0 == 0) goto L74
            if (r0 == r2) goto L6a
            r1 = 2
            if (r0 == r1) goto L74
            goto L81
        L6a:
            android.view.ViewParent r14 = r15.getParent()
            if (r14 == 0) goto L73
            r14.requestDisallowInterceptTouchEvent(r1)
        L73:
            return r1
        L74:
            android.view.ViewParent r0 = r15.getParent()
            if (r0 == 0) goto L81
            org.schabi.newpipe.player.ui.MainPlayerUi r14 = r14.playerUi
            boolean r14 = r14.isFullscreen
            r0.requestDisallowInterceptTouchEvent(r14)
        L81:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.gesture.MainPlayerGestureListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
