package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.graphics.WorkspaceAndHotseatScrim;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class FlingAndHoldTouchController extends PortraitStatesTouchController {
    public final MotionPauseDetector mMotionPauseDetector;
    public final float mMotionPauseMaxDisplacement;
    public final float mMotionPauseMinDisplacement;
    public AnimatorSet mPeekAnim;

    public interface FeedbackHandler {
        void resetFeedback();
    }

    public FlingAndHoldTouchController(Launcher launcher) {
        super(launcher, false);
        this.mMotionPauseDetector = new MotionPauseDetector(launcher);
        this.mMotionPauseMinDisplacement = ViewConfiguration.get(launcher).getScaledTouchSlop();
        this.mMotionPauseMaxDisplacement = getMotionPauseMaxDisplacement();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public long getAtomicDuration() {
        return 300L;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public StateAnimationConfig getConfigForStates(LauncherState launcherState, LauncherState launcherState2) {
        if (launcherState != LauncherState.NORMAL || launcherState2 != LauncherState.ALL_APPS) {
            if (launcherState != LauncherState.ALL_APPS || launcherState2 != LauncherState.NORMAL) {
                return super.getConfigForStates(launcherState, launcherState2);
            }
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            float verticalProgress = LauncherState.OVERVIEW.getVerticalProgress(this.mLauncher);
            stateAnimationConfig.mInterpolators[10] = Interpolators.clampToProgress(Interpolators.DEACCEL, verticalProgress - 0.08f, verticalProgress);
            stateAnimationConfig.mInterpolators[12] = Interpolators.clampToProgress(Interpolators.DEACCEL, 0.92f, 1.0f);
            return stateAnimationConfig;
        }
        StateAnimationConfig stateAnimationConfig2 = new StateAnimationConfig();
        float verticalProgress2 = LauncherState.NORMAL.getVerticalProgress(this.mLauncher) - LauncherState.OVERVIEW.getVerticalProgress(this.mLauncher);
        stateAnimationConfig2.mInterpolators[12] = Interpolators.clampToProgress(Interpolators.ACCEL, RecentsState.NO_OFFSET, 0.08f);
        Interpolator clampToProgress = Interpolators.clampToProgress(Interpolators.ACCEL, verticalProgress2, 0.08f + verticalProgress2);
        Interpolator[] interpolatorArr = stateAnimationConfig2.mInterpolators;
        interpolatorArr[10] = clampToProgress;
        Interpolator interpolator = Interpolators.DEACCEL_3;
        interpolatorArr[1] = interpolator;
        interpolatorArr[2] = interpolator;
        interpolatorArr[3] = interpolator;
        return stateAnimationConfig2;
    }

    public float getMotionPauseMaxDisplacement() {
        return getShiftRange() * 0.75f;
    }

    public void goToOverviewOnDragEnd(float f) {
        AnimatorSet animatorSet = this.mPeekAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        Animator createStateElementAnimation = this.mLauncher.createAtomicAnimationFactory().createStateElementAnimation(3, new float[0]);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mAtomicAnim = animatorSet2;
        animatorSet2.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController.2
            @Override // com.android.launcher3.anim.AnimationSuccessListener, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (this.mCancelled) {
                    StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
                    stateAnimationConfig.animFlags = 4;
                    stateAnimationConfig.duration = 100L;
                    FlingAndHoldTouchController flingAndHoldTouchController = FlingAndHoldTouchController.this;
                    StateManager stateManager = flingAndHoldTouchController.mLauncher.getStateManager();
                    FlingAndHoldTouchController flingAndHoldTouchController2 = FlingAndHoldTouchController.this;
                    flingAndHoldTouchController.mPeekAnim = stateManager.createAtomicAnimation(flingAndHoldTouchController2.mFromState, flingAndHoldTouchController2.mToState, stateAnimationConfig);
                    FlingAndHoldTouchController.this.mPeekAnim.start();
                }
                FlingAndHoldTouchController.this.mAtomicAnim = null;
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                FlingAndHoldTouchController.this.onSwipeInteractionCompleted(LauncherState.OVERVIEW, 3);
            }
        });
        this.mAtomicAnim.play(createStateElementAnimation);
        this.mAtomicAnim.start();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void goToTargetState(final LauncherState launcherState, final int i) {
        AnimatorSet animatorSet = this.mPeekAnim;
        if (animatorSet == null || !animatorSet.isStarted()) {
            super.goToTargetState(launcherState, i);
        } else {
            this.mPeekAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    FlingAndHoldTouchController.super.goToTargetState(launcherState, i);
                }
            });
        }
    }

    public boolean handlingOverviewAnim() {
        return this.mStartState == LauncherState.NORMAL && (((SystemUiProxy) SystemUiProxy.INSTANCE.b(this.mLauncher)).getLastSystemUiStateFlags() & 128) == 0;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f, MotionEvent motionEvent) {
        float f2 = -f;
        this.mMotionPauseDetector.setDisallowPause(!handlingOverviewAnim() || f2 < this.mMotionPauseMinDisplacement || f2 > this.mMotionPauseMaxDisplacement);
        this.mMotionPauseDetector.addPosition(motionEvent);
        super.onDrag(f, motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f) {
        if (this.mMotionPauseDetector.isPaused() && handlingOverviewAnim()) {
            goToOverviewOnDragEnd(f);
        } else {
            super.onDragEnd(f);
        }
        KeyEvent.Callback callback = this.mLauncher.mAppsView.mSearchContainer;
        if (callback instanceof FeedbackHandler) {
            ((FeedbackHandler) callback).resetFeedback();
        }
        this.mMotionPauseDetector.clear();
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
        this.mMotionPauseDetector.clear();
        super.onDragStart(z, f);
        if (handlingOverviewAnim()) {
            this.mMotionPauseDetector.setOnMotionPauseListener(new MotionPauseDetector.OnMotionPauseListener() { // from class: c.a.a.Z0.m.t
                @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
                public final void onMotionPauseChanged(boolean z2) {
                    FlingAndHoldTouchController.this.onMotionPauseChanged(z2);
                }
            });
        }
        AnimatorSet animatorSet = this.mAtomicAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public void onMotionPauseChanged(boolean z) {
        ((RecentsView) this.mLauncher.getOverviewPanel()).setOverviewStateEnabled(z);
        AnimatorSet animatorSet = this.mPeekAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        LauncherState launcherState = z ? LauncherState.NORMAL : LauncherState.OVERVIEW_PEEK;
        LauncherState launcherState2 = z ? LauncherState.OVERVIEW_PEEK : LauncherState.NORMAL;
        long j = z ? 240L : 100L;
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.duration = j;
        stateAnimationConfig.animFlags = 4;
        AnimatorSet createAtomicAnimation = this.mLauncher.getStateManager().createAtomicAnimation(launcherState, launcherState2, stateAnimationConfig);
        this.mPeekAnim = createAtomicAnimation;
        createAtomicAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FlingAndHoldTouchController.this.mPeekAnim = null;
            }
        });
        this.mPeekAnim.start();
        ((VibratorWrapper) VibratorWrapper.INSTANCE.b(this.mLauncher)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
        WorkspaceAndHotseatScrim workspaceAndHotseatScrim = this.mLauncher.mDragLayer.mWorkspaceScrim;
        float[] fArr = new float[1];
        fArr[0] = z ? RecentsState.NO_OFFSET : 1.0f;
        workspaceAndHotseatScrim.createSysuiMultiplierAnim(fArr).setDuration(j).start();
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController
    public int updateAnimComponentsOnReinit(int i) {
        return handlingOverviewAnim() ? i | 8 : i;
    }
}
