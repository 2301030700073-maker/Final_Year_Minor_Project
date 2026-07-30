package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.AbstractStateChangeTouchController;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class PortraitStatesTouchController extends AbstractStateChangeTouchController {
    public final InterpolatorWrapper mAllAppsInterpolatorWrapper;
    public final boolean mAllowDragToOverview;
    public boolean mFinishFastOnSecondTouch;
    public final PortraitOverviewStateTouchHelper mOverviewPortraitStateTouchHelper;

    public class InterpolatorWrapper implements Interpolator {
        public TimeInterpolator baseInterpolator = Interpolators.LINEAR;

        public InterpolatorWrapper(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return this.baseInterpolator.getInterpolation(f);
        }
    }

    public PortraitStatesTouchController(Launcher launcher, boolean z) {
        super(launcher, SingleAxisSwipeDetector.VERTICAL);
        this.mAllAppsInterpolatorWrapper = new InterpolatorWrapper(null);
        this.mOverviewPortraitStateTouchHelper = new PortraitOverviewStateTouchHelper(launcher);
        this.mAllowDragToOverview = z;
    }

    public static int getHotseatTop(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        return launcher.mDragLayer.getHeight() - (deviceProfile.hotseatBarSizePx + deviceProfile.mInsets.bottom);
    }

    public static boolean isTouchOverHotseat(Launcher launcher, MotionEvent motionEvent) {
        return motionEvent.getY() >= ((float) getHotseatTop(launcher));
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController != null) {
            if (this.mFinishFastOnSecondTouch) {
                animatorPlaybackController.mAnimationPlayer.end();
            }
            AllAppsTransitionController allAppsTransitionController = this.mLauncher.mAllAppsController;
            if (motionEvent.getY() >= allAppsTransitionController.mShiftRange * allAppsTransitionController.mProgress) {
                return true;
            }
            AnimatorSet animatorSet = this.mAtomicAnim;
            if (animatorSet != null) {
                animatorSet.end();
            }
            return false;
        }
        if (this.mLauncher.isInState(LauncherState.ALL_APPS)) {
            if (!this.mLauncher.mAppsView.shouldContainerScroll(motionEvent)) {
                return false;
            }
        } else if (this.mLauncher.isInState(LauncherState.OVERVIEW)) {
            PortraitOverviewStateTouchHelper portraitOverviewStateTouchHelper = this.mOverviewPortraitStateTouchHelper;
            if (!(portraitOverviewStateTouchHelper.mRecentsView.getTaskViewCount() > 0 ? motionEvent.getY() >= ((float) portraitOverviewStateTouchHelper.mRecentsView.getTaskViewAt(0).getBottom()) : isTouchOverHotseat(portraitOverviewStateTouchHelper.mLauncher, motionEvent))) {
                return false;
            }
        } else {
            if (!(this.mLauncher.isInState(LauncherState.NORMAL) && !this.mAllowDragToOverview) && !isTouchOverHotseat(this.mLauncher, motionEvent)) {
                return false;
            }
        }
        return AbstractFloatingView.getTopOpenViewWithType(this.mLauncher, 3775) == null;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public StateAnimationConfig getConfigForStates(LauncherState launcherState, LauncherState launcherState2) {
        if (launcherState == LauncherState.NORMAL && launcherState2 == LauncherState.OVERVIEW) {
            this.mAllAppsInterpolatorWrapper.baseInterpolator = Interpolators.LINEAR;
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            stateAnimationConfig.mInterpolators[0] = this.mAllAppsInterpolatorWrapper;
            return stateAnimationConfig;
        }
        if (launcherState == LauncherState.OVERVIEW && launcherState2 == LauncherState.ALL_APPS) {
            StateAnimationConfig stateAnimationConfig2 = new StateAnimationConfig();
            stateAnimationConfig2.mInterpolators[10] = Interpolators.clampToProgress(Interpolators.ACCEL, RecentsState.NO_OFFSET, 0.08f);
            stateAnimationConfig2.mInterpolators[9] = Interpolators.clampToProgress(Interpolators.DEACCEL, 0.88f, 1.0f);
            return stateAnimationConfig2;
        }
        if (launcherState == LauncherState.ALL_APPS && launcherState2 == LauncherState.OVERVIEW) {
            StateAnimationConfig stateAnimationConfig3 = new StateAnimationConfig();
            stateAnimationConfig3.mInterpolators[10] = Interpolators.clampToProgress(Interpolators.DEACCEL, 0.92f, 1.0f);
            stateAnimationConfig3.mInterpolators[9] = Interpolators.clampToProgress(Interpolators.ACCEL, RecentsState.NO_OFFSET, 0.120000005f);
            return stateAnimationConfig3;
        }
        if (launcherState == LauncherState.NORMAL && launcherState2 == LauncherState.ALL_APPS) {
            StateAnimationConfig stateAnimationConfig4 = new StateAnimationConfig();
            stateAnimationConfig4.mInterpolators[10] = Interpolators.clampToProgress(Interpolators.ACCEL, RecentsState.NO_OFFSET, 0.08f);
            return stateAnimationConfig4;
        }
        if (launcherState != LauncherState.ALL_APPS || launcherState2 != LauncherState.NORMAL) {
            return new StateAnimationConfig();
        }
        StateAnimationConfig stateAnimationConfig5 = new StateAnimationConfig();
        stateAnimationConfig5.mInterpolators[10] = Interpolators.clampToProgress(Interpolators.DEACCEL, 0.92f, 1.0f);
        return stateAnimationConfig5;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public int getLogContainerTypeForNormalState(MotionEvent motionEvent) {
        return isTouchOverHotseat(this.mLauncher, motionEvent) ? 2 : 1;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        if (launcherState == LauncherState.ALL_APPS && !z) {
            return TouchInteractionService.isConnected() ? (LauncherState) this.mLauncher.getStateManager().mLastStableState : LauncherState.NORMAL;
        }
        if (launcherState != LauncherState.OVERVIEW) {
            if (launcherState == LauncherState.NORMAL && z) {
                return (this.mAllowDragToOverview && TouchInteractionService.isConnected() && (((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).getLastSystemUiStateFlags() & 128) == 0) ? LauncherState.OVERVIEW : LauncherState.ALL_APPS;
            }
            return launcherState;
        }
        LauncherState launcherState2 = LauncherState.ALL_APPS;
        if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(this.mLauncher)) {
            launcherState2 = LauncherState.OVERVIEW;
        }
        return z ? launcherState2 : LauncherState.NORMAL;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e0  */
    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float initCurrentAnimation(int r8) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController.initCurrentAnimation(int):float");
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void onSwipeInteractionCompleted(LauncherState launcherState, int i) {
        super.onSwipeInteractionCompleted(launcherState, i);
        if (this.mStartState == LauncherState.NORMAL && launcherState == LauncherState.OVERVIEW) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).onOverviewShown(true, "PortraitStatesTouchCtrl");
        }
    }

    public int updateAnimComponentsOnReinit(int i) {
        return i;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void updateSwipeCompleteAnimation(ValueAnimator valueAnimator, long j, LauncherState launcherState, float f, boolean z) {
        valueAnimator.setDuration(j).setInterpolator(Interpolators.scrollInterpolatorForVelocity(f));
        if (FeatureFlags.UNSTABLE_SPRINGS.get() && this.mFromState == LauncherState.OVERVIEW && this.mToState == LauncherState.ALL_APPS && launcherState == LauncherState.OVERVIEW) {
            this.mFinishFastOnSecondTouch = true;
            return;
        }
        if (this.mFromState == LauncherState.NORMAL) {
            LauncherState launcherState2 = this.mToState;
            LauncherState launcherState3 = LauncherState.OVERVIEW;
            if (launcherState2 == launcherState3 && launcherState == launcherState3) {
                this.mFinishFastOnSecondTouch = true;
                if (!z || j == 0) {
                    return;
                }
                float f2 = this.mCurrentAnimation.mCurrentFraction;
                this.mAllAppsInterpolatorWrapper.baseInterpolator = Interpolators.clampToProgress(new OvershootInterpolator(Math.min(Math.abs(f), 3.0f)), f2, 1.0f);
                valueAnimator.setDuration(Math.min(j, this.ATOMIC_DURATION)).setInterpolator(Interpolators.LINEAR);
                return;
            }
        }
        this.mFinishFastOnSecondTouch = false;
    }
}
