package com.android.launcher3.uioverrides.touchcontrollers;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.MotionEvent;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonNavbarToOverviewTouchController;
import com.android.launcher3.util.VibratorWrapper;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.views.RecentsView;
import java.util.Objects;

/* loaded from: classes.dex */
public class NoButtonNavbarToOverviewTouchController extends FlingAndHoldTouchController {
    public boolean mDidTouchStartInNavBar;
    public boolean mIsHomeStaggeredAnimFinished;
    public boolean mIsOverviewRehidden;
    public ObjectAnimator mNormalToHintOverviewScrimAnimator;
    public boolean mReachedOverview;
    public final RecentsView mRecentsView;
    public PointF mStartDisplacement;

    public NoButtonNavbarToOverviewTouchController(Launcher launcher) {
        super(launcher);
        this.mStartDisplacement = new PointF();
        this.mRecentsView = (RecentsView) launcher.getOverviewPanel();
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public boolean canInterceptTouch(MotionEvent motionEvent) {
        this.mDidTouchStartInNavBar = (motionEvent.getEdgeFlags() & 256) != 0;
        return super.canInterceptTouch(motionEvent);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController
    public float getMotionPauseMaxDisplacement() {
        return Float.MAX_VALUE;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public LauncherState getTargetState(LauncherState launcherState, boolean z) {
        if (launcherState == LauncherState.NORMAL && this.mDidTouchStartInNavBar) {
            return LauncherState.HINT_STATE;
        }
        LauncherState launcherState2 = LauncherState.OVERVIEW;
        return (launcherState == launcherState2 && z) ? launcherState2 : super.getTargetState(launcherState, z);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController
    public void goToOverviewOnDragEnd(float f) {
        boolean z = Math.abs(Utilities.dpiFromPx(f, this.mLauncher.getResources().getDisplayMetrics())) > 1.0f;
        StateManager stateManager = this.mLauncher.getStateManager();
        if (z) {
            if (f > RecentsState.NO_OFFSET) {
                stateManager.goToState(LauncherState.NORMAL, true, new Runnable() { // from class: c.a.a.Z0.m.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController = NoButtonNavbarToOverviewTouchController.this;
                        Objects.requireNonNull(noButtonNavbarToOverviewTouchController);
                        noButtonNavbarToOverviewTouchController.onSwipeInteractionCompleted(LauncherState.NORMAL, 4);
                    }
                });
            } else {
                this.mIsOverviewRehidden = false;
                this.mIsHomeStaggeredAnimFinished = false;
                new StaggeredWorkspaceAnim(this.mLauncher, f, false).addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.launcher3.uioverrides.touchcontrollers.NoButtonNavbarToOverviewTouchController.1
                    @Override // com.android.launcher3.anim.AnimationSuccessListener
                    public void onAnimationSuccess(Animator animator) {
                        NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController = NoButtonNavbarToOverviewTouchController.this;
                        noButtonNavbarToOverviewTouchController.mIsHomeStaggeredAnimFinished = true;
                        if (1 == 0 || !noButtonNavbarToOverviewTouchController.mIsOverviewRehidden) {
                            return;
                        }
                        noButtonNavbarToOverviewTouchController.onSwipeInteractionCompleted(LauncherState.NORMAL, 4);
                    }
                }).start();
                stateManager.mConfig.reset();
                StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
                stateAnimationConfig.duration = LauncherState.OVERVIEW.getTransitionDuration(this.mLauncher);
                stateAnimationConfig.animFlags = 4;
                AnimatorSet createAtomicAnimation = stateManager.createAtomicAnimation((LauncherState) stateManager.mState, LauncherState.NORMAL, stateAnimationConfig);
                createAtomicAnimation.addListener(AnimationSuccessListener.forRunnable(new Runnable() { // from class: c.a.a.Z0.m.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController = NoButtonNavbarToOverviewTouchController.this;
                        noButtonNavbarToOverviewTouchController.mIsOverviewRehidden = true;
                        if (noButtonNavbarToOverviewTouchController.mIsHomeStaggeredAnimFinished) {
                            noButtonNavbarToOverviewTouchController.onSwipeInteractionCompleted(LauncherState.NORMAL, 4);
                        }
                    }
                }));
                createAtomicAnimation.start();
            }
        }
        if (this.mReachedOverview) {
            this.mRecentsView.animate().translationX(RecentsState.NO_OFFSET).translationY(RecentsState.NO_OFFSET).setInterpolator(Interpolators.ACCEL_DEACCEL).setDuration((long) Math.max(80.0f, Utilities.dpiFromPx(Math.max(Math.abs(this.mRecentsView.getTranslationX()), Math.abs(this.mRecentsView.getTranslationY())), this.mLauncher.getResources().getDisplayMetrics()) / 0.8f)).withEndAction(z ? null : new Runnable() { // from class: c.a.a.Z0.m.i
                @Override // java.lang.Runnable
                public final void run() {
                    NoButtonNavbarToOverviewTouchController.this.maybeSwipeInteractionToOverviewComplete();
                }
            });
        }
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController
    public boolean handlingOverviewAnim() {
        return this.mDidTouchStartInNavBar && super.handlingOverviewAnim();
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public float initCurrentAnimation(int i) {
        return this.mToState == LauncherState.HINT_STATE ? (-1.0f) / getShiftRange() : super.initCurrentAnimation(i);
    }

    public final void maybeSwipeInteractionToOverviewComplete() {
        if (this.mReachedOverview) {
            if (this.mDetector.mState == BaseSwipeDetector.ScrollState.SETTLING) {
                onSwipeInteractionCompleted(LauncherState.OVERVIEW, 3);
            }
        }
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f, float f2, MotionEvent motionEvent) {
        if (!this.mMotionPauseDetector.isPaused()) {
            return onDrag(f, motionEvent);
        }
        if (!this.mReachedOverview) {
            this.mStartDisplacement.set(f2, f);
            return true;
        }
        this.mRecentsView.setTranslationX((f2 - this.mStartDisplacement.x) * 0.25f);
        this.mRecentsView.setTranslationY((f - this.mStartDisplacement.y) * 0.25f);
        return true;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragEnd(float f) {
        super.onDragEnd(f);
        this.mNormalToHintOverviewScrimAnimator = null;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController, com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
        super.onDragStart(z, f);
        LauncherState launcherState = this.mFromState;
        if (launcherState == LauncherState.NORMAL && this.mToState == LauncherState.HINT_STATE) {
            Launcher launcher = this.mLauncher;
            this.mNormalToHintOverviewScrimAnimator = ObjectAnimator.ofFloat(launcher.mDragLayer.mOverviewScrim, Scrim.SCRIM_PROGRESS, launcherState.getOverviewScrimAlpha(launcher), this.mToState.getOverviewScrimAlpha(this.mLauncher));
        }
        this.mReachedOverview = false;
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.FlingAndHoldTouchController
    public void onMotionPauseChanged(boolean z) {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            return;
        }
        this.mNormalToHintOverviewScrimAnimator = null;
        Runnable runnable = animatorPlaybackController.mOnCancelRunnable;
        animatorPlaybackController.mOnCancelRunnable = null;
        animatorPlaybackController.dispatchOnCancel();
        this.mLauncher.getStateManager().goToState(LauncherState.OVERVIEW, true, new Runnable() { // from class: c.a.a.Z0.m.f
            @Override // java.lang.Runnable
            public final void run() {
                NoButtonNavbarToOverviewTouchController noButtonNavbarToOverviewTouchController = NoButtonNavbarToOverviewTouchController.this;
                noButtonNavbarToOverviewTouchController.mReachedOverview = true;
                noButtonNavbarToOverviewTouchController.maybeSwipeInteractionToOverviewComplete();
            }
        });
        animatorPlaybackController.mOnCancelRunnable = runnable;
        ((VibratorWrapper) VibratorWrapper.INSTANCE.b(this.mLauncher)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
    }

    @Override // com.android.launcher3.touch.AbstractStateChangeTouchController
    public void updateProgress(float f) {
        super.updateProgress(f);
        ObjectAnimator objectAnimator = this.mNormalToHintOverviewScrimAnimator;
        if (objectAnimator != null) {
            objectAnimator.setCurrentFraction(f);
        }
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
    public void updateSwipeCompleteAnimation(ValueAnimator valueAnimator, long j, LauncherState launcherState, float f, boolean z) {
        super.updateSwipeCompleteAnimation(valueAnimator, j, launcherState, f, z);
        if (launcherState == LauncherState.HINT_STATE) {
            valueAnimator.setDuration(r2.getTransitionDuration(this.mLauncher));
        }
    }
}
