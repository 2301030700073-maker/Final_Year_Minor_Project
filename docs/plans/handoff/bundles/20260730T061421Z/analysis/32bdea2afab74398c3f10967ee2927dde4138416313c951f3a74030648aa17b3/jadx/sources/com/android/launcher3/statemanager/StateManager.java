package com.android.launcher3.statemanager;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.os.Handler;
import android.os.Looper;
import c.a.c.a.a;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class StateManager {
    public final StatefulActivity mActivity;
    public final AtomicAnimationFactory mAtomicAnimationFactory;
    public final BaseState mBaseState;
    public BaseState mCurrentStableState;
    public BaseState mLastStableState;
    public BaseState mRestState;
    public BaseState mState;
    public StateHandler[] mStateHandlers;
    public final AnimationState mConfig = new AnimationState(null);
    public final ArrayList mListeners = new ArrayList();
    public final Handler mUiHandler = new Handler(Looper.getMainLooper());

    public class AnimationState extends StateAnimationConfig implements Animator.AnimatorListener {
        public static final StateAnimationConfig DEFAULT = new StateAnimationConfig();
        public int changeId = 0;
        public AnimatorSet currentAnimation;
        public AnimatorPlaybackController playbackController;
        public Object targetState;

        public AnimationState(AnonymousClass1 anonymousClass1) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AnimatorPlaybackController animatorPlaybackController = this.playbackController;
            if (animatorPlaybackController != null && animatorPlaybackController.mAnim == animator) {
                this.playbackController = null;
            }
            if (this.currentAnimation == animator) {
                this.currentAnimation = null;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        public void reset() {
            DEFAULT.copyTo(this);
            this.targetState = null;
            AnimatorPlaybackController animatorPlaybackController = this.playbackController;
            if (animatorPlaybackController != null) {
                animatorPlaybackController.mAnimationPlayer.cancel();
                this.playbackController.dispatchOnCancel();
            } else {
                AnimatorSet animatorSet = this.currentAnimation;
                if (animatorSet != null) {
                    animatorSet.setDuration(0L);
                    this.currentAnimation.cancel();
                }
            }
            this.currentAnimation = null;
            this.playbackController = null;
            this.changeId++;
        }
    }

    public class AtomicAnimationFactory {
        public static final int NEXT_INDEX = 0;
        public final Animator[] mStateElementAnimators;

        public AtomicAnimationFactory(int i) {
            this.mStateElementAnimators = new Animator[i];
        }

        public void cancelAllStateElementAnimation() {
            for (Animator animator : this.mStateElementAnimators) {
                if (animator != null) {
                    animator.cancel();
                }
            }
        }

        public Animator createStateElementAnimation(int i, float... fArr) {
            throw new RuntimeException(a.c("Unknown gesture animation ", i));
        }

        public void prepareForAtomicAnimation(Object obj, Object obj2, StateAnimationConfig stateAnimationConfig) {
        }
    }

    public class StartAnimRunnable implements Runnable {
        public final AnimatorSet mAnim;

        public StartAnimRunnable(AnimatorSet animatorSet) {
            this.mAnim = animatorSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            AnimatorSet animatorSet = StateManager.this.mConfig.currentAnimation;
            AnimatorSet animatorSet2 = this.mAnim;
            if (animatorSet != animatorSet2) {
                return;
            }
            animatorSet2.start();
        }
    }

    public interface StateHandler {
        void setState(Object obj);

        void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation);
    }

    public interface StateListener {
        default void onStateTransitionComplete(Object obj) {
        }

        default void onStateTransitionStart(Object obj) {
        }
    }

    public StateManager(StatefulActivity statefulActivity, BaseState baseState) {
        this.mActivity = statefulActivity;
        this.mBaseState = baseState;
        this.mCurrentStableState = baseState;
        this.mLastStableState = baseState;
        this.mState = baseState;
        this.mAtomicAnimationFactory = statefulActivity.createAtomicAnimationFactory();
    }

    public void cancelStateElementAnimation(int i) {
        if (this.mAtomicAnimationFactory.mStateElementAnimators[i] != null) {
            this.mAtomicAnimationFactory.mStateElementAnimators[i].cancel();
        }
    }

    public final void clearCurrentAnimation() {
        AnimationState animationState = this.mConfig;
        AnimatorSet animatorSet = animationState.currentAnimation;
        if (animatorSet != null) {
            animatorSet.removeListener(animationState);
            this.mConfig.currentAnimation = null;
        }
        this.mConfig.playbackController = null;
    }

    public AnimatorPlaybackController createAnimationToNewWorkspace(BaseState baseState, long j, int i) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.duration = j;
        stateAnimationConfig.animFlags = i;
        return createAnimationToNewWorkspace(baseState, stateAnimationConfig);
    }

    public final PendingAnimation createAnimationToNewWorkspaceInternal(final BaseState baseState) {
        PendingAnimation pendingAnimation = new PendingAnimation(this.mConfig.duration);
        if ((this.mConfig.animFlags & 7) != 0) {
            for (StateHandler stateHandler : getStateHandlers()) {
                stateHandler.setStateWithAnimation(baseState, this.mConfig, pendingAnimation);
            }
        }
        pendingAnimation.mAnim.addListener(new AnimationSuccessListener() { // from class: com.android.launcher3.statemanager.StateManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                StateManager.this.onStateTransitionStart(baseState);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                StateManager.this.onStateTransitionEnd(baseState);
            }
        });
        AnimationState animationState = this.mConfig;
        AnimatorSet buildAnim = pendingAnimation.buildAnim();
        animationState.currentAnimation = buildAnim;
        animationState.targetState = baseState;
        buildAnim.addListener(animationState);
        return pendingAnimation;
    }

    public AnimatorSet createAtomicAnimation(BaseState baseState, BaseState baseState2, StateAnimationConfig stateAnimationConfig) {
        PendingAnimation pendingAnimation = new PendingAnimation(stateAnimationConfig.duration);
        this.mAtomicAnimationFactory.prepareForAtomicAnimation(baseState, baseState2, stateAnimationConfig);
        for (StateHandler stateHandler : this.mActivity.getStateManager().getStateHandlers()) {
            stateHandler.setStateWithAnimation(baseState2, stateAnimationConfig, pendingAnimation);
        }
        return pendingAnimation.buildAnim();
    }

    public Animator createStateElementAnimation(final int i, float... fArr) {
        cancelStateElementAnimation(i);
        Animator createStateElementAnimation = this.mAtomicAnimationFactory.createStateElementAnimation(i, fArr);
        this.mAtomicAnimationFactory.mStateElementAnimators[i] = createStateElementAnimation;
        createStateElementAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.statemanager.StateManager.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                StateManager.this.mAtomicAnimationFactory.mStateElementAnimators[i] = null;
            }
        });
        return createStateElementAnimation;
    }

    public BaseState getRestState() {
        BaseState baseState = this.mRestState;
        return baseState == null ? this.mBaseState : baseState;
    }

    public StateHandler[] getStateHandlers() {
        if (this.mStateHandlers == null) {
            this.mStateHandlers = this.mActivity.createStateHandlers();
        }
        return this.mStateHandlers;
    }

    public void goToState(BaseState baseState) {
        goToState(baseState, shouldAnimateStateChange());
    }

    public final void goToStateAnimated(BaseState baseState, BaseState baseState2, Runnable runnable) {
        this.mConfig.duration = baseState == this.mBaseState ? baseState2.getTransitionDuration(this.mActivity) : baseState.getTransitionDuration(this.mActivity);
        this.mAtomicAnimationFactory.prepareForAtomicAnimation(baseState2, baseState, this.mConfig);
        AnimatorSet buildAnim = createAnimationToNewWorkspaceInternal(baseState).buildAnim();
        if (runnable != null) {
            buildAnim.addListener(AnimationSuccessListener.forRunnable(runnable));
        }
        this.mUiHandler.post(new StartAnimRunnable(buildAnim));
    }

    public void moveToRestState() {
        AnimationState animationState = this.mConfig;
        if ((animationState.currentAnimation == null || !animationState.userControlled) && this.mState.shouldDisableRestore()) {
            goToState(getRestState());
            this.mLastStableState = this.mBaseState;
        }
    }

    public final void onStateTransitionEnd(BaseState baseState) {
        BaseState baseState2 = this.mCurrentStableState;
        if (baseState != baseState2) {
            this.mLastStableState = baseState.getHistoryForState(baseState2);
            this.mCurrentStableState = baseState;
        }
        this.mActivity.onStateSetEnd(baseState);
        if (baseState == this.mBaseState) {
            this.mRestState = null;
        }
        int size = this.mListeners.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((StateListener) this.mListeners.get(size)).onStateTransitionComplete(baseState);
            }
        }
    }

    public final void onStateTransitionStart(BaseState baseState) {
        this.mState = baseState;
        this.mActivity.onStateSetStart(baseState);
        for (int size = this.mListeners.size() - 1; size >= 0; size--) {
            ((StateListener) this.mListeners.get(size)).onStateTransitionStart(baseState);
        }
    }

    public void reapplyState(boolean z) {
        boolean z2 = this.mConfig.currentAnimation != null;
        if (z) {
            this.mAtomicAnimationFactory.cancelAllStateElementAnimation();
            this.mConfig.reset();
        }
        if (this.mConfig.currentAnimation == null) {
            for (StateHandler stateHandler : getStateHandlers()) {
                stateHandler.setState(this.mState);
            }
            if (z2) {
                onStateTransitionEnd(this.mState);
            }
        }
    }

    public void setCurrentAnimation(AnimatorSet animatorSet, Animator... animatorArr) {
        int length = animatorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            Animator animator = animatorArr[i];
            if (animator != null) {
                AnimatorPlaybackController animatorPlaybackController = this.mConfig.playbackController;
                if (animatorPlaybackController != null && animatorPlaybackController.mAnim == animator) {
                    clearCurrentAnimation();
                    break;
                } else if (this.mConfig.currentAnimation == animator) {
                    clearCurrentAnimation();
                    break;
                }
            }
            i++;
        }
        boolean z = this.mConfig.currentAnimation != null;
        this.mConfig.reset();
        if (z) {
            reapplyState(false);
            onStateTransitionEnd(this.mState);
        }
        AnimationState animationState = this.mConfig;
        animationState.currentAnimation = animatorSet;
        animationState.targetState = null;
        animatorSet.addListener(animationState);
    }

    public void setCurrentUserControlledAnimation(AnimatorPlaybackController animatorPlaybackController) {
        clearCurrentAnimation();
        setCurrentAnimation(animatorPlaybackController.mAnim, new Animator[0]);
        AnimationState animationState = this.mConfig;
        animationState.userControlled = true;
        animationState.playbackController = animatorPlaybackController;
    }

    public boolean shouldAnimateStateChange() {
        return !this.mActivity.isForceInvisible() && this.mActivity.isStarted();
    }

    public void goToState(BaseState baseState, boolean z) {
        goToState(baseState, z, 0L, null);
    }

    public void goToState(BaseState baseState, boolean z, Runnable runnable) {
        goToState(baseState, z, 0L, runnable);
    }

    public void goToState(BaseState baseState, long j) {
        goToState(baseState, true, j, null);
    }

    public AnimatorPlaybackController createAnimationToNewWorkspace(BaseState baseState, StateAnimationConfig stateAnimationConfig) {
        stateAnimationConfig.userControlled = true;
        this.mConfig.reset();
        stateAnimationConfig.copyTo(this.mConfig);
        this.mConfig.playbackController = createAnimationToNewWorkspaceInternal(baseState).createPlaybackController();
        return this.mConfig.playbackController;
    }

    public final void goToState(final BaseState baseState, boolean z, long j, final Runnable runnable) {
        boolean areAnimationsEnabled = z & Utilities.areAnimationsEnabled(this.mActivity);
        if (this.mActivity.isInState(baseState)) {
            AnimationState animationState = this.mConfig;
            AnimatorSet animatorSet = animationState.currentAnimation;
            if (animatorSet == null) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            } else if (!animationState.userControlled && areAnimationsEnabled && animationState.targetState == baseState) {
                if (runnable != null) {
                    animatorSet.addListener(AnimationSuccessListener.forRunnable(runnable));
                    return;
                }
                return;
            }
        }
        final BaseState baseState2 = this.mState;
        this.mConfig.reset();
        if (areAnimationsEnabled) {
            if (j > 0) {
                final int i = this.mConfig.changeId;
                this.mUiHandler.postDelayed(new Runnable() { // from class: c.a.a.W0.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        StateManager stateManager = StateManager.this;
                        int i2 = i;
                        BaseState baseState3 = baseState;
                        BaseState baseState4 = baseState2;
                        Runnable runnable2 = runnable;
                        if (stateManager.mConfig.changeId == i2) {
                            stateManager.goToStateAnimated(baseState3, baseState4, runnable2);
                        }
                    }
                }, j);
                return;
            } else {
                goToStateAnimated(baseState, baseState2, runnable);
                return;
            }
        }
        this.mAtomicAnimationFactory.cancelAllStateElementAnimation();
        onStateTransitionStart(baseState);
        for (StateHandler stateHandler : getStateHandlers()) {
            stateHandler.setState(baseState);
        }
        onStateTransitionEnd(baseState);
        if (runnable != null) {
            runnable.run();
        }
    }
}
