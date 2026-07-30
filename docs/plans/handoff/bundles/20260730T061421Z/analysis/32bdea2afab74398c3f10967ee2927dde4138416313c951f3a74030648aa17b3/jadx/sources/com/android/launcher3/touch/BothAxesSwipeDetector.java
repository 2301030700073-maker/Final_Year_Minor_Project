package com.android.launcher3.touch;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonQuickSwitchTouchController;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.ShelfPeekAnim;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
import com.android.quickstep.views.RecentsView;
import java.util.Objects;

/* loaded from: classes.dex */
public class BothAxesSwipeDetector extends BaseSwipeDetector {
    public final Listener mListener;
    public int mScrollDirections;

    public interface Listener {
    }

    public BothAxesSwipeDetector(ViewConfiguration viewConfiguration, Listener listener, boolean z) {
        super(viewConfiguration, z);
        this.mListener = listener;
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public void reportDragEndInternal(PointF pointF) {
        final LauncherState launcherState;
        final NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController = (NoButtonQuickSwitchTouchController) this.mListener;
        boolean isFling = noButtonQuickSwitchTouchController.mSwipeDetector.isFling(pointF.x);
        boolean isFling2 = noButtonQuickSwitchTouchController.mSwipeDetector.isFling(pointF.y);
        boolean z = (isFling || isFling2) ? false : true;
        final int i = z ? 3 : 4;
        if (noButtonQuickSwitchTouchController.mMotionPauseDetector.isPaused() && z) {
            noButtonQuickSwitchTouchController.cancelAnimations();
            Animator createStateElementAnimation = noButtonQuickSwitchTouchController.mLauncher.createAtomicAnimationFactory().createStateElementAnimation(3, new float[0]);
            createStateElementAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.uioverrides.touchcontrollers.NoButtonQuickSwitchTouchController.1
                public final /* synthetic */ int val$logAction;

                public AnonymousClass1(final int i2) {
                    r2 = i2;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    NoButtonQuickSwitchTouchController.this.onAnimationToStateCompleted(LauncherState.OVERVIEW, r2);
                }
            });
            createStateElementAnimation.start();
            return;
        }
        if (isFling && isFling2) {
            float f = pointF.x;
            launcherState = f < RecentsState.NO_OFFSET ? LauncherState.NORMAL : pointF.y > RecentsState.NO_OFFSET ? LauncherState.QUICK_SWITCH : Math.abs(f) > Math.abs(pointF.y) ? LauncherState.QUICK_SWITCH : LauncherState.NORMAL;
        } else if (isFling) {
            launcherState = pointF.x > RecentsState.NO_OFFSET ? LauncherState.QUICK_SWITCH : LauncherState.NORMAL;
        } else if (isFling2) {
            launcherState = pointF.y > RecentsState.NO_OFFSET ? LauncherState.QUICK_SWITCH : LauncherState.NORMAL;
        } else {
            launcherState = (noButtonQuickSwitchTouchController.mXOverviewAnim.getInterpolatedProgress() > 0.5f ? 1 : (noButtonQuickSwitchTouchController.mXOverviewAnim.getInterpolatedProgress() == 0.5f ? 0 : -1)) > 0 ? LauncherState.QUICK_SWITCH : LauncherState.NORMAL;
        }
        float boundToRange = Utilities.boundToRange(((pointF.x * DefaultDisplay.getSingleFrameMs(noButtonQuickSwitchTouchController.mLauncher)) / noButtonQuickSwitchTouchController.mXRange) + noButtonQuickSwitchTouchController.mXOverviewAnim.mCurrentFraction, RecentsState.NO_OFFSET, 1.0f);
        float f2 = launcherState == LauncherState.NORMAL ? 0.0f : 1.0f;
        long calculateDuration = BaseSwipeDetector.calculateDuration(pointF.x, Math.abs(f2 - boundToRange));
        ValueAnimator valueAnimator = noButtonQuickSwitchTouchController.mXOverviewAnim.mAnimationPlayer;
        valueAnimator.setFloatValues(boundToRange, f2);
        valueAnimator.setDuration(calculateDuration).setInterpolator(Interpolators.scrollInterpolatorForVelocity(pointF.x));
        noButtonQuickSwitchTouchController.mXOverviewAnim.dispatchOnStart();
        boolean z2 = isFling2 && pointF.y < RecentsState.NO_OFFSET && launcherState == LauncherState.NORMAL;
        float boundToRange2 = Utilities.boundToRange(noButtonQuickSwitchTouchController.mYOverviewAnim.mCurrentFraction - ((pointF.y * DefaultDisplay.getSingleFrameMs(noButtonQuickSwitchTouchController.mLauncher)) / noButtonQuickSwitchTouchController.mYRange), RecentsState.NO_OFFSET, 1.0f);
        float f3 = z2 ? 1.0f : launcherState == LauncherState.NORMAL ? boundToRange2 : 0.0f;
        final int i2 = i2;
        long calculateDuration2 = BaseSwipeDetector.calculateDuration(pointF.y, Math.abs(f3 - boundToRange2));
        ValueAnimator valueAnimator2 = noButtonQuickSwitchTouchController.mYOverviewAnim.mAnimationPlayer;
        valueAnimator2.setFloatValues(boundToRange2, f3);
        valueAnimator2.setDuration(calculateDuration2);
        noButtonQuickSwitchTouchController.mYOverviewAnim.dispatchOnStart();
        ValueAnimator valueAnimator3 = noButtonQuickSwitchTouchController.mNonOverviewAnim.mAnimationPlayer;
        if (!z2 || noButtonQuickSwitchTouchController.mIsHomeScreenVisible) {
            boolean z3 = launcherState == LauncherState.NORMAL;
            if (z3) {
                AnimatorPlaybackController animatorPlaybackController = noButtonQuickSwitchTouchController.mNonOverviewAnim;
                Runnable runnable = animatorPlaybackController.mOnCancelRunnable;
                animatorPlaybackController.mOnCancelRunnable = null;
                animatorPlaybackController.dispatchOnCancel();
                animatorPlaybackController.mOnCancelRunnable = runnable;
            }
            valueAnimator3.setFloatValues(noButtonQuickSwitchTouchController.mNonOverviewAnim.mCurrentFraction, z3 ? RecentsState.NO_OFFSET : 1.0f);
            noButtonQuickSwitchTouchController.mNonOverviewAnim.dispatchOnStart();
        } else {
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            stateAnimationConfig.animFlags = 0;
            noButtonQuickSwitchTouchController.updateNonOverviewAnim(launcherState, stateAnimationConfig);
            valueAnimator3 = noButtonQuickSwitchTouchController.mNonOverviewAnim.mAnimationPlayer;
            new StaggeredWorkspaceAnim(noButtonQuickSwitchTouchController.mLauncher, pointF.y, false).start();
        }
        valueAnimator3.setDuration(Math.max(calculateDuration, calculateDuration2));
        noButtonQuickSwitchTouchController.mNonOverviewAnim.mEndAction = new Runnable() { // from class: c.a.a.Z0.m.j
            @Override // java.lang.Runnable
            public final void run() {
                NoButtonQuickSwitchTouchController.this.onAnimationToStateCompleted(launcherState, i2);
            }
        };
        noButtonQuickSwitchTouchController.cancelAnimations();
        valueAnimator.start();
        valueAnimator2.start();
        valueAnimator3.start();
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public void reportDragStartInternal(boolean z) {
        boolean z2 = !z;
        final NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController = (NoButtonQuickSwitchTouchController) this.mListener;
        noButtonQuickSwitchTouchController.mMotionPauseDetector.clear();
        if (z2) {
            noButtonQuickSwitchTouchController.mStartState = (LauncherState) noButtonQuickSwitchTouchController.mLauncher.getStateManager().mState;
            noButtonQuickSwitchTouchController.mMotionPauseDetector.setOnMotionPauseListener(noButtonQuickSwitchTouchController);
            BothAxesSwipeDetector bothAxesSwipeDetector = noButtonQuickSwitchTouchController.mSwipeDetector;
            bothAxesSwipeDetector.mScrollDirections = 3;
            bothAxesSwipeDetector.mIgnoreSlopWhenSettling = false;
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            Interpolator interpolator = NoButtonQuickSwitchTouchController.FADE_OUT_INTERPOLATOR;
            Interpolator[] interpolatorArr = stateAnimationConfig.mInterpolators;
            interpolatorArr[3] = interpolator;
            interpolatorArr[10] = interpolator;
            Interpolator interpolator2 = NoButtonQuickSwitchTouchController.TRANSLATE_OUT_INTERPOLATOR;
            interpolatorArr[2] = interpolator2;
            interpolatorArr[0] = interpolator2;
            noButtonQuickSwitchTouchController.updateNonOverviewAnim(LauncherState.QUICK_SWITCH, stateAnimationConfig);
            noButtonQuickSwitchTouchController.mNonOverviewAnim.dispatchOnStart();
            if (noButtonQuickSwitchTouchController.mRecentsView.getTaskViewCount() == 0) {
                noButtonQuickSwitchTouchController.mRecentsView.setOnEmptyMessageUpdatedListener(new RecentsView.OnEmptyMessageUpdatedListener() { // from class: c.a.a.Z0.m.l
                    @Override // com.android.quickstep.views.RecentsView.OnEmptyMessageUpdatedListener
                    public final void onEmptyMessageUpdated(boolean z3) {
                        NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController2 = NoButtonQuickSwitchTouchController.this;
                        Objects.requireNonNull(noButtonQuickSwitchTouchController2);
                        if (z3) {
                            return;
                        }
                        if (noButtonQuickSwitchTouchController2.mSwipeDetector.mState == BaseSwipeDetector.ScrollState.DRAGGING) {
                            noButtonQuickSwitchTouchController2.setupOverviewAnimators();
                        }
                    }
                });
            }
            noButtonQuickSwitchTouchController.setupOverviewAnimators();
        }
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public void reportDraggingInternal(PointF pointF, MotionEvent motionEvent) {
        AnimatorPlaybackController animatorPlaybackController;
        NoButtonQuickSwitchTouchController noButtonQuickSwitchTouchController = (NoButtonQuickSwitchTouchController) this.mListener;
        Objects.requireNonNull(noButtonQuickSwitchTouchController);
        float max = Math.max(RecentsState.NO_OFFSET, pointF.x) / noButtonQuickSwitchTouchController.mXRange;
        float mapRange = Utilities.mapRange(Math.max(RecentsState.NO_OFFSET, -pointF.y) / noButtonQuickSwitchTouchController.mYRange, 0.15f, 1.0f);
        boolean z = noButtonQuickSwitchTouchController.mIsHomeScreenVisible;
        if (z && (animatorPlaybackController = noButtonQuickSwitchTouchController.mNonOverviewAnim) != null) {
            animatorPlaybackController.setPlayFraction(max);
        }
        boolean z2 = NoButtonQuickSwitchTouchController.FADE_OUT_INTERPOLATOR.getInterpolation(max) <= 0.99f;
        noButtonQuickSwitchTouchController.mIsHomeScreenVisible = z2;
        if (z && !z2) {
            noButtonQuickSwitchTouchController.mShelfPeekAnim.setShelfState(ShelfPeekAnim.ShelfAnimState.HIDE, Interpolators.LINEAR, 0L);
        }
        noButtonQuickSwitchTouchController.mMotionPauseDetector.setDisallowPause(noButtonQuickSwitchTouchController.mIsHomeScreenVisible || (-pointF.y) < noButtonQuickSwitchTouchController.mMotionPauseMinDisplacement);
        noButtonQuickSwitchTouchController.mMotionPauseDetector.addPosition(motionEvent);
        if (noButtonQuickSwitchTouchController.mIsHomeScreenVisible) {
            noButtonQuickSwitchTouchController.mShelfPeekAnim.setShelfState(ShelfPeekAnim.ShelfAnimState.CANCEL, Interpolators.LINEAR, 0L);
        }
        AnimatorPlaybackController animatorPlaybackController2 = noButtonQuickSwitchTouchController.mXOverviewAnim;
        if (animatorPlaybackController2 != null) {
            animatorPlaybackController2.setPlayFraction(max);
        }
        AnimatorPlaybackController animatorPlaybackController3 = noButtonQuickSwitchTouchController.mYOverviewAnim;
        if (animatorPlaybackController3 != null) {
            animatorPlaybackController3.setPlayFraction(mapRange);
        }
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public boolean shouldScrollStart(PointF pointF) {
        return ((this.mScrollDirections & 1) > 0 && (pointF.y > (-this.mTouchSlop) ? 1 : (pointF.y == (-this.mTouchSlop) ? 0 : -1)) <= 0) || ((this.mScrollDirections & 2) > 0 && (pointF.x > this.mTouchSlop ? 1 : (pointF.x == this.mTouchSlop ? 0 : -1)) >= 0) || ((this.mScrollDirections & 4) > 0 && (pointF.y > this.mTouchSlop ? 1 : (pointF.y == this.mTouchSlop ? 0 : -1)) >= 0) || ((this.mScrollDirections & 8) > 0 && (pointF.x > (-this.mTouchSlop) ? 1 : (pointF.x == (-this.mTouchSlop) ? 0 : -1)) <= 0);
    }
}
