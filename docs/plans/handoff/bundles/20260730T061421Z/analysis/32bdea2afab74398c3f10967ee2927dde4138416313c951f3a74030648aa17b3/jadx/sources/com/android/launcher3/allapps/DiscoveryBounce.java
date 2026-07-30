package com.android.launcher3.allapps;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.os.Handler;
import android.os.UserManager;
import android.view.MotionEvent;
import c.a.a.D0.m;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.DiscoveryBounce;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.Objects;

/* loaded from: classes.dex */
public class DiscoveryBounce extends AbstractFloatingView {
    public final Animator mDiscoBounceAnimation;
    public final Launcher mLauncher;
    public final StateManager.StateListener mStateListener;

    public class VerticalProgressWrapper {
        public final AllAppsTransitionController mController;
        public final float mDelta;

        public VerticalProgressWrapper(AllAppsTransitionController allAppsTransitionController, float f, AnonymousClass1 anonymousClass1) {
            this.mController = allAppsTransitionController;
            this.mDelta = f;
        }

        public float getProgress() {
            return this.mController.mProgress + this.mDelta;
        }

        public void setProgress(float f) {
            this.mController.setProgress(f - this.mDelta);
        }
    }

    public DiscoveryBounce(Launcher launcher, float f) {
        super(launcher, null);
        this.mStateListener = new StateManager.StateListener() { // from class: com.android.launcher3.allapps.DiscoveryBounce.1
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(Object obj) {
            }

            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionStart(Object obj) {
                DiscoveryBounce.this.handleClose(false);
            }
        };
        this.mLauncher = launcher;
        AllAppsTransitionController allAppsTransitionController = launcher.mAllAppsController;
        Animator loadAnimator = AnimatorInflater.loadAnimator(launcher, R.animator.discovery_bounce);
        this.mDiscoBounceAnimation = loadAnimator;
        loadAnimator.setTarget(new VerticalProgressWrapper(allAppsTransitionController, f, null));
        this.mDiscoBounceAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.allapps.DiscoveryBounce.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DiscoveryBounce.this.handleClose(false);
            }
        });
        Animator animator = this.mDiscoBounceAnimation;
        Objects.requireNonNull(allAppsTransitionController);
        animator.addListener(AnimationSuccessListener.forRunnable(new m(allAppsTransitionController)));
        StateManager stateManager = launcher.getStateManager();
        stateManager.mListeners.add(this.mStateListener);
    }

    public static void showForHomeIfNeeded(final Launcher launcher, boolean z) {
        OnboardingPrefs onboardingPrefs = launcher.mOnboardingPrefs;
        if (!launcher.isInState(LauncherState.NORMAL) || onboardingPrefs.getBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN) || AbstractFloatingView.getTopOpenView(launcher) != null || ((UserManager) launcher.getSystemService(UserManager.class)).isDemoUser() || Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            return;
        }
        if (z) {
            new Handler().postDelayed(new Runnable() { // from class: c.a.a.D0.n
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoveryBounce.showForHomeIfNeeded(Launcher.this, false);
                }
            }, 450L);
            return;
        }
        onboardingPrefs.incrementEventCount(OnboardingPrefs.HOME_BOUNCE_COUNT);
        DiscoveryBounce discoveryBounce = new DiscoveryBounce(launcher, RecentsState.NO_OFFSET);
        discoveryBounce.mIsOpen = true;
        discoveryBounce.mLauncher.mDragLayer.addView(discoveryBounce);
        discoveryBounce.mLauncher.getUserEventDispatcher().logActionBounceTip(2);
    }

    public static void showForOverviewIfNeeded(final Launcher launcher, boolean z, final PagedOrientationHandler pagedOrientationHandler) {
        OnboardingPrefs onboardingPrefs = launcher.mOnboardingPrefs;
        if (!launcher.isInState(LauncherState.OVERVIEW) || !launcher.hasBeenResumed() || launcher.isForceInvisible() || launcher.getDeviceProfile().isVerticalBarLayout() || !pagedOrientationHandler.isLayoutNaturalToLauncher() || onboardingPrefs.getBoolean(OnboardingPrefs.SHELF_BOUNCE_SEEN) || ((UserManager) launcher.getSystemService(UserManager.class)).isDemoUser() || Utilities.IS_RUNNING_IN_TEST_HARNESS) {
            return;
        }
        if (z) {
            new Handler().postDelayed(new Runnable() { // from class: c.a.a.D0.o
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoveryBounce.showForOverviewIfNeeded(Launcher.this, false, pagedOrientationHandler);
                }
            }, 450L);
            return;
        }
        if (AbstractFloatingView.getTopOpenView(launcher) != null) {
            return;
        }
        onboardingPrefs.incrementEventCount(OnboardingPrefs.SHELF_BOUNCE_COUNT);
        DiscoveryBounce discoveryBounce = new DiscoveryBounce(launcher, 1.0f - LauncherState.OVERVIEW.getVerticalProgress(launcher));
        discoveryBounce.mIsOpen = true;
        discoveryBounce.mLauncher.mDragLayer.addView(discoveryBounce);
        discoveryBounce.mLauncher.getUserEventDispatcher().logActionBounceTip(7);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z) {
        if (this.mIsOpen) {
            this.mIsOpen = false;
            this.mLauncher.mDragLayer.removeView(this);
            Launcher launcher = this.mLauncher;
            launcher.mAllAppsController.setProgress(((LauncherState) launcher.getStateManager().mState).getVerticalProgress(this.mLauncher));
            StateManager stateManager = this.mLauncher.getStateManager();
            stateManager.mListeners.remove(this.mStateListener);
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i) {
        return (i & 64) != 0;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void logActionCommand(int i) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mDiscoBounceAnimation.start();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean onBackPressed() {
        super.onBackPressed();
        return false;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        handleClose(false);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mDiscoBounceAnimation.isRunning()) {
            this.mDiscoBounceAnimation.end();
        }
    }
}
