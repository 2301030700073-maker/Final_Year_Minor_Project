package com.android.launcher3.uioverrides.touchcontrollers;

import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import c.a.a.Z0.m.k;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.BothAxesSwipeDetector;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.ShelfPeekAnim;
import com.android.quickstep.views.LauncherRecentsView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class NoButtonQuickSwitchTouchController implements TouchController, BothAxesSwipeDetector.Listener, MotionPauseDetector.OnMotionPauseListener {
    public boolean mIsHomeScreenVisible = true;
    public final BaseQuickstepLauncher mLauncher;
    public final MotionPauseDetector mMotionPauseDetector;
    public final float mMotionPauseMinDisplacement;
    public boolean mNoIntercept;
    public AnimatorPlaybackController mNonOverviewAnim;
    public final LauncherRecentsView mRecentsView;
    public final ShelfPeekAnim mShelfPeekAnim;
    public LauncherState mStartState;
    public final BothAxesSwipeDetector mSwipeDetector;
    public AnimatorPlaybackController mXOverviewAnim;
    public final float mXRange;
    public AnimatorPlaybackController mYOverviewAnim;
    public final float mYRange;
    public static final Interpolator FADE_OUT_INTERPOLATOR = Interpolators.DEACCEL_5;
    public static final Interpolator TRANSLATE_OUT_INTERPOLATOR = Interpolators.ACCEL_0_75;
    public static final Interpolator SCALE_DOWN_INTERPOLATOR = Interpolators.DEACCEL;

    public NoButtonQuickSwitchTouchController(BaseQuickstepLauncher baseQuickstepLauncher) {
        this.mLauncher = baseQuickstepLauncher;
        BaseQuickstepLauncher baseQuickstepLauncher2 = this.mLauncher;
        this.mSwipeDetector = new BothAxesSwipeDetector(ViewConfiguration.get(baseQuickstepLauncher2), this, Utilities.isRtl(baseQuickstepLauncher2.getResources()));
        BaseQuickstepLauncher baseQuickstepLauncher3 = this.mLauncher;
        this.mShelfPeekAnim = baseQuickstepLauncher3.mShelfPeekAnim;
        this.mRecentsView = (LauncherRecentsView) baseQuickstepLauncher3.getOverviewPanel();
        this.mXRange = this.mLauncher.getDeviceProfile().widthPx / 2.0f;
        BaseQuickstepLauncher baseQuickstepLauncher4 = this.mLauncher;
        this.mYRange = LayoutUtils.getShelfTrackingDistance(baseQuickstepLauncher4, baseQuickstepLauncher4.getDeviceProfile(), this.mRecentsView.getPagedOrientationHandler());
        this.mMotionPauseDetector = new MotionPauseDetector(this.mLauncher);
        this.mMotionPauseMinDisplacement = this.mLauncher.getResources().getDimension(R.dimen.motion_pause_detector_min_displacement_from_app);
    }

    public static void a(NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController) {
        noButtonQuickSwitchTouchController.cancelAnimations();
        noButtonQuickSwitchTouchController.mNonOverviewAnim = null;
        noButtonQuickSwitchTouchController.mXOverviewAnim = null;
        noButtonQuickSwitchTouchController.mYOverviewAnim = null;
        noButtonQuickSwitchTouchController.mIsHomeScreenVisible = true;
        noButtonQuickSwitchTouchController.mSwipeDetector.a(BaseSwipeDetector.ScrollState.IDLE);
        noButtonQuickSwitchTouchController.mRecentsView.setOnEmptyMessageUpdatedListener(null);
    }

    public final void cancelAnimations() {
        AnimatorPlaybackController animatorPlaybackController = this.mNonOverviewAnim;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.mAnimationPlayer.cancel();
        }
        AnimatorPlaybackController animatorPlaybackController2 = this.mXOverviewAnim;
        if (animatorPlaybackController2 != null) {
            animatorPlaybackController2.mAnimationPlayer.cancel();
        }
        AnimatorPlaybackController animatorPlaybackController3 = this.mYOverviewAnim;
        if (animatorPlaybackController3 != null) {
            animatorPlaybackController3.mAnimationPlayer.cancel();
        }
        this.mShelfPeekAnim.setShelfState(ShelfPeekAnim.ShelfAnimState.CANCEL, Interpolators.LINEAR, 0L);
        this.mMotionPauseDetector.clear();
    }

    public final void onAnimationToStateCompleted(LauncherState launcherState, int i) {
        this.mLauncher.getUserEventDispatcher().logStateChangeAction(i, Utilities.isRtl(this.mLauncher.getResources()) ? 3 : 4, this.mSwipeDetector.getDownX(), this.mSwipeDetector.getDownY(), 11, this.mStartState.containerType, launcherState.containerType, this.mLauncher.mWorkspace.getCurrentPage());
        StatsLogManager.StatsLogger withDstState = this.mLauncher.getStatsLogManager().logger().withSrcState(2).withDstState(StatsLogManager.containerTypeToAtomState(launcherState.containerType));
        LauncherState launcherState2 = this.mStartState;
        withDstState.log(StatsLogManager.getLauncherAtomEvent(launcherState2.containerType, launcherState.containerType, launcherState.ordinal > launcherState2.ordinal ? StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEUP : StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEDOWN));
        this.mLauncher.getStateManager().goToState(launcherState, false, 0L, new k(this));
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            boolean z = !(this.mLauncher.isInState(LauncherState.NORMAL) && (motionEvent.getEdgeFlags() & 256) != 0 && (((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).getLastSystemUiStateFlags() & 128) == 0);
            this.mNoIntercept = z;
            if (z) {
                return false;
            }
            BothAxesSwipeDetector bothAxesSwipeDetector = this.mSwipeDetector;
            bothAxesSwipeDetector.mScrollDirections = 2;
            bothAxesSwipeDetector.mIgnoreSlopWhenSettling = false;
        }
        if (this.mNoIntercept) {
            return false;
        }
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return this.mSwipeDetector.isDraggingOrSettling();
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
    public void onMotionPauseChanged(boolean z) {
        ((VibratorWrapper) VibratorWrapper.INSTANCE.b(this.mLauncher)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
        if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) {
            return;
        }
        ShelfPeekAnim.ShelfAnimState shelfAnimState = z ? ShelfPeekAnim.ShelfAnimState.PEEK : ShelfPeekAnim.ShelfAnimState.HIDE;
        if (shelfAnimState == ShelfPeekAnim.ShelfAnimState.PEEK) {
            this.mLauncher.mAllAppsController.setAlphas(LauncherState.NORMAL, new StateAnimationConfig(), PropertySetter.NO_ANIM_PROPERTY_SETTER);
            if ((LauncherState.OVERVIEW.getVisibleElements(this.mLauncher) & 1) != 0) {
                this.mLauncher.mHotseat.setAlpha(1.0f);
            }
        }
        this.mShelfPeekAnim.setShelfState(shelfAnimState, ShelfPeekAnim.INTERPOLATOR, 240L);
    }

    public final void setupOverviewAnimators() {
        LauncherState launcherState = LauncherState.QUICK_SWITCH;
        LauncherState launcherState2 = LauncherState.OVERVIEW;
        LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) this.mRecentsView, Float.valueOf(launcherState.getOverviewScaleAndOffset(this.mLauncher)[0]));
        RecentsView.ADJACENT_PAGE_OFFSET.set((FloatProperty) this.mRecentsView, Float.valueOf(1.0f));
        this.mRecentsView.setContentAlpha(1.0f);
        this.mRecentsView.setFullscreenProgress(launcherState.getOverviewFullscreenProgress());
        this.mLauncher.mActionsView.getVisibilityAlpha().setValue((launcherState.getVisibleElements(this.mLauncher) & 64) == 0 ? RecentsState.NO_OFFSET : 1.0f);
        float[] overviewScaleAndOffset = launcherState2.getOverviewScaleAndOffset(this.mLauncher);
        PendingAnimation pendingAnimation = new PendingAnimation((long) (this.mXRange * 2.0f));
        pendingAnimation.setFloat(this.mRecentsView, RecentsView.ADJACENT_PAGE_OFFSET, overviewScaleAndOffset[1], Interpolators.LINEAR);
        BaseQuickstepLauncher baseQuickstepLauncher = this.mLauncher;
        pendingAnimation.setFloat(baseQuickstepLauncher.mDragLayer.mOverviewScrim, Scrim.SCRIM_PROGRESS, launcherState2.getOverviewScrimAlpha(baseQuickstepLauncher), Interpolators.LINEAR);
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        this.mXOverviewAnim = createPlaybackController;
        createPlaybackController.dispatchOnStart();
        PendingAnimation pendingAnimation2 = new PendingAnimation((long) (this.mYRange * 2.0f));
        pendingAnimation2.setFloat(this.mRecentsView, LauncherAnimUtils.SCALE_PROPERTY, overviewScaleAndOffset[0], SCALE_DOWN_INTERPOLATOR);
        pendingAnimation2.setFloat(this.mRecentsView, RecentsView.FULLSCREEN_PROGRESS, launcherState2.getOverviewFullscreenProgress(), SCALE_DOWN_INTERPOLATOR);
        AnimatorPlaybackController createPlaybackController2 = pendingAnimation2.createPlaybackController();
        this.mYOverviewAnim = createPlaybackController2;
        createPlaybackController2.dispatchOnStart();
    }

    public final void updateNonOverviewAnim(LauncherState launcherState, StateAnimationConfig stateAnimationConfig) {
        stateAnimationConfig.duration = (long) (Math.max(this.mXRange, this.mYRange) * 2.0f);
        stateAnimationConfig.animFlags |= 8;
        AnimatorPlaybackController createAnimationToNewWorkspace = this.mLauncher.getStateManager().createAnimationToNewWorkspace(launcherState, stateAnimationConfig);
        createAnimationToNewWorkspace.mOnCancelRunnable = new k(this);
        this.mNonOverviewAnim = createAnimationToNewWorkspace;
    }
}
