package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.animation.Interpolator;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.states.OverviewState;

/* loaded from: classes.dex */
public class ShelfPeekAnim {
    public static final long DURATION = 240;
    public static final Interpolator INTERPOLATOR = Interpolators.OVERSHOOT_1_2;
    public boolean mIsPeeking;
    public final Launcher mLauncher;
    public ShelfAnimState mShelfState;

    public enum ShelfAnimState {
        HIDE(true),
        PEEK(true),
        OVERVIEW(false),
        CANCEL(false);

        public final boolean shouldPreformHaptic;

        ShelfAnimState(boolean z) {
            this.shouldPreformHaptic = z;
        }
    }

    public ShelfPeekAnim(Launcher launcher) {
        this.mLauncher = launcher;
    }

    public boolean isPeeking() {
        return this.mIsPeeking;
    }

    public void setShelfState(ShelfAnimState shelfAnimState, Interpolator interpolator, long j) {
        if (this.mShelfState == shelfAnimState || FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) {
            return;
        }
        this.mLauncher.getStateManager().cancelStateElementAnimation(2);
        this.mShelfState = shelfAnimState;
        this.mIsPeeking = shelfAnimState == ShelfAnimState.PEEK || shelfAnimState == ShelfAnimState.HIDE;
        if (this.mShelfState == ShelfAnimState.CANCEL) {
            return;
        }
        float verticalProgress = LauncherState.BACKGROUND_APP.getVerticalProgress(this.mLauncher);
        float verticalProgress2 = LauncherState.OVERVIEW.getVerticalProgress(this.mLauncher);
        float defaultVerticalProgress = verticalProgress - ((verticalProgress - OverviewState.getDefaultVerticalProgress(this.mLauncher)) * 0.25f);
        ShelfAnimState shelfAnimState2 = this.mShelfState;
        if (shelfAnimState2 != ShelfAnimState.HIDE) {
            verticalProgress = shelfAnimState2 == ShelfAnimState.PEEK ? defaultVerticalProgress : verticalProgress2;
        }
        Animator createStateElementAnimation = this.mLauncher.getStateManager().createStateElementAnimation(2, verticalProgress);
        createStateElementAnimation.setInterpolator(interpolator);
        createStateElementAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.ShelfPeekAnim.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ShelfPeekAnim.this.mShelfState = ShelfAnimState.CANCEL;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ShelfPeekAnim shelfPeekAnim = ShelfPeekAnim.this;
                shelfPeekAnim.mIsPeeking = shelfPeekAnim.mShelfState == ShelfAnimState.PEEK;
            }
        });
        createStateElementAnimation.setDuration(j).start();
    }
}
