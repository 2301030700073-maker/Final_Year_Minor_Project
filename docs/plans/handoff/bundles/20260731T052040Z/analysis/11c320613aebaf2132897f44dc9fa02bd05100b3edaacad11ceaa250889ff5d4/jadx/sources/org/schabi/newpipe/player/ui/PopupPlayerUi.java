package org.schabi.newpipe.player.ui;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import androidx.appcompat.view.menu.MenuPopupHelper;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.gesture.BasePlayerGestureListener;
import org.schabi.newpipe.player.gesture.PopupPlayerGestureListener;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PopupPlayerUi extends VideoPlayerUi {
    public TokenData closeOverlayBinding;
    public boolean isPopupClosing;
    public WindowManager.LayoutParams popupLayoutParams;
    public int screenHeight;
    public int screenWidth;
    public final WindowManager windowManager;

    public PopupPlayerUi(Player player, PlayerBinding playerBinding) {
        super(player, playerBinding);
        this.isPopupClosing = false;
        this.windowManager = (WindowManager) this.context.getSystemService(WindowManager.class);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final BasePlayerGestureListener buildGestureListener() {
        return new PopupPlayerGestureListener(this);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final float calculateMaxEndScreenThumbnailHeight(Bitmap bitmap) {
        return bitmap.getHeight();
    }

    public final void changePopupSize(int i) {
        WindowManager windowManager;
        int i2 = MainActivity.$r8$clinit;
        if (this.popupLayoutParams == null || (windowManager = this.windowManager) == null) {
            return;
        }
        PlayerBinding playerBinding = this.binding;
        if (playerBinding.rootView.getParent() == null) {
            return;
        }
        int clamp = Cookie.Companion.clamp(i, (int) this.context.getResources().getDimension(R.dimen.popup_minimum_width), this.screenWidth);
        int i3 = (int) (i / 1.7777778f);
        WindowManager.LayoutParams layoutParams = this.popupLayoutParams;
        layoutParams.width = clamp;
        layoutParams.height = i3;
        playerBinding.surfaceView.setHeights(i3, i3);
        windowManager.updateViewLayout(playerBinding.rootView, this.popupLayoutParams);
    }

    public final void changePopupWindowFlags(int i) {
        WindowManager windowManager;
        int i2 = MainActivity.$r8$clinit;
        if (this.popupLayoutParams == null || (windowManager = this.windowManager) == null) {
            return;
        }
        PlayerBinding playerBinding = this.binding;
        if (playerBinding.rootView.getParent() == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = this.popupLayoutParams;
        layoutParams.flags = i;
        windowManager.updateViewLayout(playerBinding.rootView, layoutParams);
    }

    public final void checkPopupPositionBounds() {
        int i = MainActivity.$r8$clinit;
        WindowManager.LayoutParams layoutParams = this.popupLayoutParams;
        if (layoutParams == null) {
            return;
        }
        layoutParams.x = Cookie.Companion.clamp(layoutParams.x, 0, this.screenWidth - layoutParams.width);
        WindowManager.LayoutParams layoutParams2 = this.popupLayoutParams;
        layoutParams2.y = Cookie.Companion.clamp(layoutParams2.y, 0, this.screenHeight - layoutParams2.height);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0033 A[Catch: IllegalArgumentException -> 0x0039, TRY_LEAVE, TryCatch #1 {IllegalArgumentException -> 0x0039, blocks: (B:24:0x001e, B:26:0x0028, B:5:0x0033), top: B:23:0x001e }] */
    @Override // org.schabi.newpipe.player.ui.PlayerUi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void destroy() {
        /*
            r5 = this;
            org.schabi.newpipe.databinding.PlayerBinding r0 = r5.binding
            android.widget.ImageView r1 = r0.endScreen
            r2 = 0
            r1.setImageDrawable(r2)
            org.schabi.newpipe.views.player.PlayerFastSeekOverlay r1 = r0.fastSeekOverlay
            org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0 r3 = new org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0
            r4 = 14
            r3.<init>(r4)
            r1.seekSecondsSupplier = r3
            r1.performListener = r2
            r5.deinitListeners()
            java.lang.String r1 = "PopupPlayerUi"
            android.view.WindowManager r2 = r5.windowManager
            if (r0 == 0) goto L30
            android.widget.RelativeLayout r3 = r0.rootView     // Catch: java.lang.IllegalArgumentException -> L39
            android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()     // Catch: java.lang.IllegalArgumentException -> L39
            boolean r4 = r4 instanceof android.view.WindowManager.LayoutParams     // Catch: java.lang.IllegalArgumentException -> L39
            if (r4 == 0) goto L30
            android.view.ViewParent r3 = r3.getParent()     // Catch: java.lang.IllegalArgumentException -> L39
            if (r3 == 0) goto L30
            r3 = 1
            goto L31
        L30:
            r3 = 0
        L31:
            if (r3 == 0) goto L3f
            android.widget.RelativeLayout r0 = r0.rootView     // Catch: java.lang.IllegalArgumentException -> L39
            r2.removeView(r0)     // Catch: java.lang.IllegalArgumentException -> L39
            goto L3f
        L39:
            r0 = move-exception
            java.lang.String r3 = "Failed to remove popup from window manager"
            android.util.Log.w(r1, r3, r0)
        L3f:
            org.jsoup.parser.TokenData r0 = r5.closeOverlayBinding     // Catch: java.lang.IllegalArgumentException -> L57
            if (r0 == 0) goto L5d
            java.lang.Object r0 = r0.value     // Catch: java.lang.IllegalArgumentException -> L57
            android.widget.FrameLayout r0 = (android.widget.FrameLayout) r0     // Catch: java.lang.IllegalArgumentException -> L57
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.IllegalArgumentException -> L57
            if (r0 == 0) goto L5d
            org.jsoup.parser.TokenData r5 = r5.closeOverlayBinding     // Catch: java.lang.IllegalArgumentException -> L57
            java.lang.Object r5 = r5.value     // Catch: java.lang.IllegalArgumentException -> L57
            android.widget.FrameLayout r5 = (android.widget.FrameLayout) r5     // Catch: java.lang.IllegalArgumentException -> L57
            r2.removeView(r5)     // Catch: java.lang.IllegalArgumentException -> L57
            goto L5d
        L57:
            r5 = move-exception
            java.lang.String r0 = "Failed to remove popup overlay from window manager"
            android.util.Log.w(r1, r0, r5)
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.ui.PopupPlayerUi.destroy():void");
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void initPlayback() {
        super.initPlayback();
        Player player = this.player;
        player.useVideoAndSubtitles(player.screenOn);
    }

    public final boolean isInsideClosingRadius(MotionEvent motionEvent) {
        int width = (((FloatingActionButton) this.closeOverlayBinding.builder).getWidth() / 2) + ((FloatingActionButton) this.closeOverlayBinding.builder).getLeft();
        return ((float) ((int) Math.sqrt(Math.pow((double) (((float) ((((FloatingActionButton) this.closeOverlayBinding.builder).getHeight() / 2) + ((FloatingActionButton) this.closeOverlayBinding.builder).getTop())) - (motionEvent.getY() + ((float) this.popupLayoutParams.y))), 2.0d) + Math.pow((double) (((float) width) - (motionEvent.getX() + ((float) this.popupLayoutParams.x))), 2.0d)))) <= ((float) (((FloatingActionButton) this.closeOverlayBinding.builder).getWidth() / 2)) * 1.2f;
    }

    @Override // org.schabi.newpipe.player.ui.PlayerUi
    public final void onBroadcastReceived(Intent intent) {
        boolean equals = "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction());
        Player player = this.player;
        if (equals) {
            updateEndScreenThumbnail(player.currentThumbnail);
        }
        if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
            updateScreenSize();
            changePopupSize(this.popupLayoutParams.width);
            checkPopupPositionBounds();
        } else if (player.isPlaying() || player.isLoading()) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                player.useVideoAndSubtitles(false);
            } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                player.useVideoAndSubtitles(true);
            }
        }
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onCompleted() {
        super.onCompleted();
        changePopupWindowFlags(131080);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onPaused() {
        super.onPaused();
        changePopupWindowFlags(131080);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void onPlaybackSpeedClicked() {
        MenuPopupHelper menuPopupHelper = (MenuPopupHelper) this.playbackSpeedPopupMenu.keyers;
        if (!menuPopupHelper.isShowing()) {
            if (menuPopupHelper.mAnchorView == null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("MenuPopupHelper cannot be used without an anchor");
                return;
            }
            menuPopupHelper.showPopup(0, 0, false, false);
        }
        this.isSomePopupMenuVisible = true;
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi, org.schabi.newpipe.player.ui.PlayerUi
    public final void onPlaying() {
        super.onPlaying();
        changePopupWindowFlags(131208);
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void removeViewFromParent() {
        this.windowManager.removeViewImmediate(this.binding.rootView);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x00d7, code lost:
    
        if (r12.getParent() != null) goto L27;
     */
    @Override // org.schabi.newpipe.player.ui.PlayerUi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setupAfterIntent() {
        /*
            Method dump skipped, instructions count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.ui.PopupPlayerUi.setupAfterIntent():void");
    }

    @Override // org.schabi.newpipe.player.ui.VideoPlayerUi
    public final void setupSubtitleView(float f) {
        this.binding.subtitleView.setFractionalTextSize(f * 0.0533f);
    }

    public final void updateScreenSize() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = Build.VERSION.SDK_INT;
        WindowManager windowManager = this.windowManager;
        if (i5 >= 30) {
            WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
            Rect bounds = currentWindowMetrics.getBounds();
            Insets insetsIgnoringVisibility = currentWindowMetrics.getWindowInsets().getInsetsIgnoringVisibility(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout());
            int width = bounds.width();
            i = insetsIgnoringVisibility.left;
            i2 = insetsIgnoringVisibility.right;
            this.screenWidth = width - (i + i2);
            int height = bounds.height();
            i3 = insetsIgnoringVisibility.top;
            i4 = insetsIgnoringVisibility.bottom;
            this.screenHeight = height - (i3 + i4);
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.screenWidth = displayMetrics.widthPixels;
            this.screenHeight = displayMetrics.heightPixels;
        }
        int i6 = MainActivity.$r8$clinit;
    }
}
