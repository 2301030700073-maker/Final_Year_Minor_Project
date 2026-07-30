package com.android.launcher3.touch;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.FlingBlockCheck;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.AllAppsSearchPlugin;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class AbstractStateChangeTouchController implements TouchController, SingleAxisSwipeDetector.Listener {
    public AnimatorSet mAtomicAnim;
    public AutoPlayAtomicAnimationInfo mAtomicAnimAutoPlayInfo;
    public AnimatorPlaybackController mAtomicComponentsController;
    public float mAtomicComponentsStartProgress;
    public boolean mCanBlockFling;
    public AnimatorPlaybackController mCurrentAnimation;
    public final SingleAxisSwipeDetector mDetector;
    public float mDisplacementShift;
    public LauncherState mFromState;
    public boolean mIsLogContainerSet;
    public final Launcher mLauncher;
    public boolean mNoIntercept;
    public boolean mPassedOverviewAtomicThreshold;
    public PendingAnimation mPendingAnimation;
    public float mProgressMultiplier;
    public boolean mScheduleResumeAtomicComponent;
    public int mStartContainerType;
    public float mStartProgress;
    public LauncherState mStartState;
    public final SingleAxisSwipeDetector.Direction mSwipeDirection;
    public LauncherState mToState;
    public final long ATOMIC_DURATION = getAtomicDuration();
    public FlingBlockCheck mFlingBlockCheck = new FlingBlockCheck();
    public LauncherState mAtomicComponentsTargetState = LauncherState.NORMAL;

    public class AutoPlayAtomicAnimationInfo {
        public final long endTime;
        public final float toProgress;

        public AutoPlayAtomicAnimationInfo(float f, long j) {
            this.toProgress = f;
            this.endTime = SystemClock.elapsedRealtime() + j;
        }
    }

    public AbstractStateChangeTouchController(Launcher launcher, SingleAxisSwipeDetector.Direction direction) {
        this.mLauncher = launcher;
        this.mDetector = new SingleAxisSwipeDetector(launcher, this, direction);
        this.mSwipeDirection = direction;
    }

    public abstract boolean canInterceptTouch(MotionEvent motionEvent);

    public final void cancelAtomicComponentsController() {
        AnimatorPlaybackController animatorPlaybackController = this.mAtomicComponentsController;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.mAnimationPlayer.cancel();
            this.mAtomicComponentsController = null;
        }
        this.mAtomicAnimAutoPlayInfo = null;
    }

    public void clearState() {
        this.mCurrentAnimation = null;
        cancelAtomicComponentsController();
        AnimatorSet animatorSet = this.mAtomicAnim;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.mAtomicAnim = null;
        }
        this.mScheduleResumeAtomicComponent = false;
        this.mDetector.a(BaseSwipeDetector.ScrollState.IDLE);
        SingleAxisSwipeDetector singleAxisSwipeDetector = this.mDetector;
        singleAxisSwipeDetector.mScrollDirections = 0;
        singleAxisSwipeDetector.mIgnoreSlopWhenSettling = false;
    }

    public final AnimatorSet createAtomicAnimForState(LauncherState launcherState, LauncherState launcherState2, long j) {
        StateAnimationConfig configForStates = getConfigForStates(launcherState, launcherState2);
        configForStates.animFlags = 2;
        configForStates.duration = j;
        return this.mLauncher.getStateManager().createAtomicAnimation(launcherState, launcherState2, configForStates);
    }

    public long getAtomicDuration() {
        return 200L;
    }

    public StateAnimationConfig getConfigForStates(LauncherState launcherState, LauncherState launcherState2) {
        return new StateAnimationConfig();
    }

    public int getDirectionForLog() {
        return this.mToState.ordinal > this.mFromState.ordinal ? 1 : 2;
    }

    public abstract int getLogContainerTypeForNormalState(MotionEvent motionEvent);

    public float getShiftRange() {
        return this.mLauncher.mAllAppsController.mShiftRange;
    }

    public abstract LauncherState getTargetState(LauncherState launcherState, boolean z);

    public void goToTargetState(LauncherState launcherState, int i) {
        if (launcherState != this.mStartState) {
            this.mLauncher.getUserEventDispatcher().logStateChangeAction(i, getDirectionForLog(), this.mDetector.getDownX(), this.mDetector.getDownY(), this.mStartContainerType, this.mStartState.containerType, launcherState.containerType, this.mLauncher.mWorkspace.getCurrentPage());
            StatsLogManager.StatsLogger withDstState = this.mLauncher.getStatsLogManager().logger().withSrcState(StatsLogManager.containerTypeToAtomState(this.mStartState.containerType)).withDstState(StatsLogManager.containerTypeToAtomState(launcherState.containerType));
            LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
            LauncherAtom$WorkspaceContainer.Builder newBuilder2 = LauncherAtom$WorkspaceContainer.newBuilder();
            newBuilder2.setPageIndex(this.mLauncher.mWorkspace.getCurrentPage());
            newBuilder.copyOnWrite();
            LauncherAtom$ContainerInfo.access$3600((LauncherAtom$ContainerInfo) newBuilder.instance, newBuilder2);
            withDstState.withContainerInfo((LauncherAtom$ContainerInfo) newBuilder.build()).log(StatsLogManager.getLauncherAtomEvent(this.mStartState.containerType, launcherState.containerType, this.mToState.ordinal > this.mFromState.ordinal ? StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEUP : StatsLogManager.LauncherEvent.LAUNCHER_UNKNOWN_SWIPEDOWN));
        }
        if (!this.mLauncher.isInState(launcherState)) {
            this.mLauncher.getStateManager().goToState(launcherState, false, 0L, null);
        }
        this.mLauncher.mDragLayer.mWorkspaceScrim.createSysuiMultiplierAnim(1.0f).setDuration(0L).start();
    }

    public boolean goingBetweenNormalAndOverview(LauncherState launcherState, LauncherState launcherState2) {
        return (launcherState == LauncherState.NORMAL || launcherState == LauncherState.OVERVIEW) && (launcherState2 == LauncherState.NORMAL || launcherState2 == LauncherState.OVERVIEW) && this.mPendingAnimation == null;
    }

    public abstract float initCurrentAnimation(int i);

    public final void maybeAutoPlayAtomicComponentsAnim() {
        AutoPlayAtomicAnimationInfo autoPlayAtomicAnimationInfo;
        final AnimatorPlaybackController animatorPlaybackController = this.mAtomicComponentsController;
        if (animatorPlaybackController == null || (autoPlayAtomicAnimationInfo = this.mAtomicAnimAutoPlayInfo) == null) {
            return;
        }
        ValueAnimator valueAnimator = animatorPlaybackController.mAnimationPlayer;
        valueAnimator.setFloatValues(animatorPlaybackController.mCurrentFraction, autoPlayAtomicAnimationInfo.toProgress);
        long elapsedRealtime = this.mAtomicAnimAutoPlayInfo.endTime - SystemClock.elapsedRealtime();
        this.mAtomicAnimAutoPlayInfo = null;
        if (elapsedRealtime <= 0) {
            valueAnimator.start();
            valueAnimator.end();
            this.mAtomicComponentsController = null;
        } else {
            valueAnimator.setDuration(elapsedRealtime);
            valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.touch.AbstractStateChangeTouchController.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    AbstractStateChangeTouchController abstractStateChangeTouchController = AbstractStateChangeTouchController.this;
                    if (abstractStateChangeTouchController.mAtomicComponentsController == animatorPlaybackController) {
                        abstractStateChangeTouchController.mAtomicComponentsController = null;
                    }
                }
            });
            valueAnimator.start();
        }
    }

    public final void maybeUpdateAtomicAnim(LauncherState launcherState, LauncherState launcherState2, float f) {
        if (goingBetweenNormalAndOverview(launcherState, launcherState2)) {
            LauncherState launcherState3 = LauncherState.OVERVIEW;
            boolean z = f >= 0.5f;
            if (z != this.mPassedOverviewAtomicThreshold) {
                LauncherState launcherState4 = z ? launcherState : launcherState2;
                if (z) {
                    launcherState = launcherState2;
                }
                this.mPassedOverviewAtomicThreshold = z;
                AnimatorSet animatorSet = this.mAtomicAnim;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                AnimatorSet createAtomicAnimForState = createAtomicAnimForState(launcherState4, launcherState, this.ATOMIC_DURATION);
                this.mAtomicAnim = createAtomicAnimForState;
                createAtomicAnimForState.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.touch.AbstractStateChangeTouchController.1
                    @Override // com.android.launcher3.anim.AnimationSuccessListener, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        AbstractStateChangeTouchController abstractStateChangeTouchController = AbstractStateChangeTouchController.this;
                        abstractStateChangeTouchController.mAtomicAnim = null;
                        abstractStateChangeTouchController.mScheduleResumeAtomicComponent = false;
                    }

                    @Override // com.android.launcher3.anim.AnimationSuccessListener
                    public void onAnimationSuccess(Animator animator) {
                        AbstractStateChangeTouchController abstractStateChangeTouchController = AbstractStateChangeTouchController.this;
                        if (abstractStateChangeTouchController.mScheduleResumeAtomicComponent) {
                            abstractStateChangeTouchController.cancelAtomicComponentsController();
                            AbstractStateChangeTouchController abstractStateChangeTouchController2 = AbstractStateChangeTouchController.this;
                            AnimatorPlaybackController animatorPlaybackController = abstractStateChangeTouchController2.mCurrentAnimation;
                            if (animatorPlaybackController != null) {
                                abstractStateChangeTouchController2.mAtomicComponentsStartProgress = animatorPlaybackController.mCurrentFraction;
                                long shiftRange = (long) (abstractStateChangeTouchController2.getShiftRange() * 2.0f);
                                AbstractStateChangeTouchController abstractStateChangeTouchController3 = AbstractStateChangeTouchController.this;
                                abstractStateChangeTouchController3.mAtomicComponentsController = AnimatorPlaybackController.wrap(abstractStateChangeTouchController3.createAtomicAnimForState(abstractStateChangeTouchController3.mFromState, abstractStateChangeTouchController3.mToState, shiftRange), shiftRange);
                                AbstractStateChangeTouchController.this.mAtomicComponentsController.dispatchOnStart();
                                AbstractStateChangeTouchController abstractStateChangeTouchController4 = AbstractStateChangeTouchController.this;
                                abstractStateChangeTouchController4.mAtomicComponentsTargetState = abstractStateChangeTouchController4.mToState;
                                abstractStateChangeTouchController4.maybeAutoPlayAtomicComponentsAnim();
                            }
                        }
                    }
                });
                this.mAtomicAnim.start();
                this.mLauncher.mDragLayer.performHapticFeedback(1);
            }
        }
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        int i;
        if (motionEvent.getAction() == 0) {
            boolean z = true;
            boolean z2 = !canInterceptTouch(motionEvent);
            this.mNoIntercept = z2;
            if (z2) {
                return false;
            }
            if (this.mCurrentAnimation != null) {
                i = 3;
            } else {
                LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().mState;
                int i2 = getTargetState(launcherState, true) != launcherState ? 1 : 0;
                i = getTargetState(launcherState, false) != launcherState ? i2 | 2 : i2;
                if (i == 0) {
                    this.mNoIntercept = true;
                    return false;
                }
                z = false;
            }
            SingleAxisSwipeDetector singleAxisSwipeDetector = this.mDetector;
            singleAxisSwipeDetector.mScrollDirections = i;
            singleAxisSwipeDetector.mIgnoreSlopWhenSettling = z;
        }
        if (this.mNoIntercept) {
            return false;
        }
        this.mDetector.onTouchEvent(motionEvent);
        return this.mDetector.isDraggingOrSettling();
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mDetector.onTouchEvent(motionEvent);
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f) {
        float f2 = ((f - this.mDisplacementShift) * this.mProgressMultiplier) + this.mStartProgress;
        updateProgress(f2);
        boolean isPositive = this.mSwipeDirection.isPositive(f - this.mDisplacementShift);
        if (f2 <= RecentsState.NO_OFFSET) {
            if (reinitCurrentAnimation(false, isPositive)) {
                this.mDisplacementShift = f;
                if (this.mCanBlockFling) {
                    this.mFlingBlockCheck.blockFling();
                }
            }
        } else if (f2 < 1.0f) {
            FlingBlockCheck flingBlockCheck = this.mFlingBlockCheck;
            Objects.requireNonNull(flingBlockCheck);
            if (SystemClock.uptimeMillis() - flingBlockCheck.mBlockFlingTime >= 200) {
                flingBlockCheck.mBlockFling = false;
            }
        } else if (reinitCurrentAnimation(true, isPositive)) {
            this.mDisplacementShift = f;
            if (this.mCanBlockFling) {
                this.mFlingBlockCheck.blockFling();
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0085  */
    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDragEnd(float r16) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.AbstractStateChangeTouchController.onDragEnd(float):void");
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z, float f) {
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().mState;
        this.mStartState = launcherState;
        this.mIsLogContainerSet = false;
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        float f2 = RecentsState.NO_OFFSET;
        if (animatorPlaybackController == null) {
            this.mFromState = launcherState;
            this.mToState = null;
            this.mCurrentAnimation = null;
            cancelAtomicComponentsController();
            SingleAxisSwipeDetector singleAxisSwipeDetector = this.mDetector;
            SingleAxisSwipeDetector.Direction direction = singleAxisSwipeDetector.mDir;
            reinitCurrentAnimation(false, direction.isPositive(direction.extractDirection(singleAxisSwipeDetector.mSubtractDisplacement)));
            this.mDisplacementShift = RecentsState.NO_OFFSET;
        } else {
            animatorPlaybackController.pause();
            this.mStartProgress = this.mCurrentAnimation.mCurrentFraction;
            this.mAtomicAnimAutoPlayInfo = null;
            AnimatorPlaybackController animatorPlaybackController2 = this.mAtomicComponentsController;
            if (animatorPlaybackController2 != null) {
                animatorPlaybackController2.pause();
            }
        }
        this.mCanBlockFling = this.mFromState == LauncherState.NORMAL;
        FlingBlockCheck flingBlockCheck = this.mFlingBlockCheck;
        flingBlockCheck.mBlockFling = false;
        flingBlockCheck.mBlockFlingTime = 0L;
        LauncherState launcherState2 = this.mToState;
        if (launcherState2 == LauncherState.ALL_APPS || launcherState2 == LauncherState.NORMAL) {
            AllAppsTransitionController allAppsTransitionController = this.mLauncher.mAllAppsController;
            boolean z2 = this.mToState == LauncherState.ALL_APPS;
            if (allAppsTransitionController.mPlugin == null) {
                return;
            }
            if (z2) {
                allAppsTransitionController.mPlugin.setEditText(allAppsTransitionController.mAppsView.mSearchUiManager.setTextSearchEnabled(true));
            }
            AllAppsSearchPlugin allAppsSearchPlugin = allAppsTransitionController.mPlugin;
            if (z2) {
                f2 = 1.0f;
            }
            allAppsSearchPlugin.onDragStart(f2);
        }
    }

    public void onSwipeInteractionCompleted(LauncherState launcherState, int i) {
        AnimatorPlaybackController animatorPlaybackController = this.mAtomicComponentsController;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.mAnimationPlayer.end();
            this.mAtomicComponentsController = null;
        }
        clearState();
        boolean z = true;
        if (this.mPendingAnimation != null) {
            boolean z2 = this.mToState == launcherState;
            this.mPendingAnimation.finish(z2, i);
            this.mPendingAnimation = null;
            z = true ^ z2;
        }
        if (z) {
            goToTargetState(launcherState, i);
        }
    }

    public final boolean reinitCurrentAnimation(boolean z, boolean z2) {
        LauncherState launcherState = this.mFromState;
        if (launcherState == null) {
            launcherState = (LauncherState) this.mLauncher.getStateManager().mState;
        } else if (z) {
            launcherState = this.mToState;
        }
        LauncherState targetState = getTargetState(launcherState, z2);
        if ((launcherState == this.mFromState && targetState == this.mToState) || launcherState == targetState) {
            return false;
        }
        this.mFromState = launcherState;
        this.mToState = targetState;
        this.mStartProgress = RecentsState.NO_OFFSET;
        this.mPassedOverviewAtomicThreshold = false;
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController != null) {
            animatorPlaybackController.mOnCancelRunnable = null;
        }
        int i = goingBetweenNormalAndOverview(this.mFromState, this.mToState) ? 1 : 7;
        this.mScheduleResumeAtomicComponent = false;
        if (this.mAtomicAnim != null) {
            this.mScheduleResumeAtomicComponent = true;
            i = 1;
        }
        if (goingBetweenNormalAndOverview(this.mFromState, this.mToState) || this.mAtomicComponentsTargetState != this.mToState) {
            cancelAtomicComponentsController();
        }
        if (this.mAtomicComponentsController != null) {
            i &= -3;
        }
        this.mProgressMultiplier = initCurrentAnimation(i);
        this.mCurrentAnimation.dispatchOnStart();
        return true;
    }

    public void updateProgress(float f) {
        AnimatorPlaybackController animatorPlaybackController = this.mCurrentAnimation;
        if (animatorPlaybackController == null) {
            return;
        }
        animatorPlaybackController.setPlayFraction(f);
        if (this.mAtomicComponentsController != null) {
            float min = Math.min(this.mAtomicComponentsStartProgress, 0.9f);
            this.mAtomicComponentsController.setPlayFraction((f - min) / (1.0f - min));
        }
        maybeUpdateAtomicAnim(this.mFromState, this.mToState, f);
    }

    public void updateSwipeCompleteAnimation(ValueAnimator valueAnimator, long j, LauncherState launcherState, float f, boolean z) {
        valueAnimator.setDuration(j).setInterpolator(Interpolators.scrollInterpolatorForVelocity(f));
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public boolean onDrag(float f, MotionEvent motionEvent) {
        if (!this.mIsLogContainerSet) {
            LauncherState launcherState = this.mStartState;
            if (launcherState == LauncherState.ALL_APPS) {
                this.mStartContainerType = 4;
            } else if (launcherState == LauncherState.NORMAL) {
                this.mStartContainerType = getLogContainerTypeForNormalState(motionEvent);
            } else if (launcherState == LauncherState.OVERVIEW) {
                this.mStartContainerType = 12;
            }
            this.mIsLogContainerSet = true;
        }
        onDrag(f);
        return true;
    }
}
