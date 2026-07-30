package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Workspace;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.plugins.ResourceProvider;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class StaggeredWorkspaceAnim {
    public static final int ALPHA_DURATION_MS = 250;
    public static final int APP_CLOSE_ROW_START_DELAY_MS = 10;
    public static final float MAX_VELOCITY_PX_PER_S = 22.0f;
    public final AnimatorSet mAnimators = new AnimatorSet();
    public final float mSpringTransY;
    public final float mVelocity;

    public StaggeredWorkspaceAnim(Launcher launcher, float f, boolean z) {
        prepareToAnimate(launcher, z);
        this.mVelocity = f;
        this.mSpringTransY = (((Math.abs(f) * 0.9f) / 22.0f) + 0.2f) * launcher.getResources().getDimensionPixelSize(R.dimen.swipe_up_max_workspace_trans_y);
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        final Workspace workspace = launcher.mWorkspace;
        final CellLayout cellLayout = (CellLayout) workspace.getChildAt(workspace.getCurrentPage());
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = cellLayout.mShortcutsAndWidgets;
        final Hotseat hotseat = launcher.mHotseat;
        final boolean clipChildren = workspace.getClipChildren();
        final boolean clipToPadding = workspace.getClipToPadding();
        final boolean clipChildren2 = cellLayout.getClipChildren();
        final boolean clipToPadding2 = cellLayout.getClipToPadding();
        boolean clipChildren3 = hotseat.getClipChildren();
        boolean clipToPadding3 = hotseat.getClipToPadding();
        workspace.setClipChildren(false);
        workspace.setClipToPadding(false);
        cellLayout.setClipChildren(false);
        cellLayout.setClipToPadding(false);
        hotseat.setClipChildren(false);
        hotseat.setClipToPadding(false);
        int i = deviceProfile.inv.numRows + (deviceProfile.isVerticalBarLayout() ? 0 : 2);
        int childCount = shortcutAndWidgetContainer.getChildCount() - 1;
        while (childCount >= 0) {
            boolean z2 = clipToPadding3;
            View childAt = shortcutAndWidgetContainer.getChildAt(childCount);
            ShortcutAndWidgetContainer shortcutAndWidgetContainer2 = shortcutAndWidgetContainer;
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) childAt.getLayoutParams();
            addStaggeredAnimationForView(childAt, layoutParams.cellY + layoutParams.cellVSpan, i);
            childCount--;
            clipToPadding3 = z2;
            clipChildren3 = clipChildren3;
            shortcutAndWidgetContainer = shortcutAndWidgetContainer2;
        }
        final boolean z3 = clipChildren3;
        final boolean z4 = clipToPadding3;
        ViewGroup viewGroup = (ViewGroup) hotseat.getChildAt(0);
        if (deviceProfile.isVerticalBarLayout()) {
            for (int childCount2 = viewGroup.getChildCount() - 1; childCount2 >= 0; childCount2--) {
                View childAt2 = viewGroup.getChildAt(childCount2);
                addStaggeredAnimationForView(childAt2, ((CellLayout.LayoutParams) childAt2.getLayoutParams()).cellY + 1, i);
            }
        } else {
            for (int childCount3 = viewGroup.getChildCount() - 1; childCount3 >= 0; childCount3--) {
                addStaggeredAnimationForView(viewGroup.getChildAt(childCount3), deviceProfile.inv.numRows + 1, i);
            }
            if (launcher.mAppsView.mSearchUiManager.isQsbVisible(LauncherState.NORMAL.getVisibleElements(launcher))) {
                addStaggeredAnimationForView(launcher.mAppsView.mSearchContainer, deviceProfile.inv.numRows + 2, i);
            }
        }
        if (z) {
            PendingAnimation pendingAnimation = new PendingAnimation(250L);
            addScrimAnimationForState(launcher, LauncherState.NORMAL, pendingAnimation);
            this.mAnimators.play(pendingAnimation.buildAnim());
        }
        addDepthAnimationForState(launcher, LauncherState.NORMAL, 250L);
        this.mAnimators.play(launcher.mDragLayer.mWorkspaceScrim.createSysuiMultiplierAnim(RecentsState.NO_OFFSET, 1.0f).setDuration(250L));
        this.mAnimators.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                workspace.setClipChildren(clipChildren);
                workspace.setClipToPadding(clipToPadding);
                cellLayout.setClipChildren(clipChildren2);
                cellLayout.setClipToPadding(clipToPadding2);
                hotseat.setClipChildren(z3);
                hotseat.setClipToPadding(z4);
            }
        });
    }

    private void addDepthAnimationForState(Launcher launcher, LauncherState launcherState, long j) {
        if (launcher instanceof BaseQuickstepLauncher) {
            PendingAnimation pendingAnimation = new PendingAnimation(j);
            ((BaseQuickstepLauncher) launcher).mDepthController.setStateWithAnimation(launcherState, new StateAnimationConfig(), pendingAnimation);
            this.mAnimators.play(pendingAnimation.buildAnim());
        }
    }

    private void addScrimAnimationForState(Launcher launcher, LauncherState launcherState, PropertySetter propertySetter) {
        launcher.mWorkspace.mStateTransitionAnimation.setScrim(propertySetter, launcherState);
        propertySetter.setFloat(launcher.mDragLayer.mOverviewScrim, Scrim.SCRIM_PROGRESS, launcherState.getOverviewScrimAlpha(launcher), Interpolators.ACCEL_DEACCEL);
    }

    private void addStaggeredAnimationForView(final View view, int i, int i2) {
        long j = ((i2 - i) + 1) * 10;
        view.setTranslationY(this.mSpringTransY);
        ResourceProvider provider = DynamicResource.provider(view.getContext());
        float f = provider.getFloat(R.dimen.staggered_stiffness);
        float f2 = provider.getFloat(R.dimen.staggered_damping_ratio);
        SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(view.getContext());
        springAnimationBuilder.setStiffness(f);
        springAnimationBuilder.setDampingRatio(f2);
        springAnimationBuilder.setMinimumVisibleChange(1.0f);
        springAnimationBuilder.mStartValue = this.mSpringTransY;
        springAnimationBuilder.mEndValue = RecentsState.NO_OFFSET;
        springAnimationBuilder.mVelocity = this.mVelocity;
        ValueAnimator build = springAnimationBuilder.build(view, LauncherAnimUtils.VIEW_TRANSLATE_Y);
        build.setStartDelay(j);
        build.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationY(RecentsState.NO_OFFSET);
            }
        });
        this.mAnimators.play(build);
        view.setAlpha(RecentsState.NO_OFFSET);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, RecentsState.NO_OFFSET, 1.0f);
        ofFloat.setInterpolator(Interpolators.LINEAR);
        ofFloat.setDuration(250L);
        ofFloat.setStartDelay(j);
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.StaggeredWorkspaceAnim.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setAlpha(1.0f);
            }
        });
        this.mAnimators.play(ofFloat);
    }

    private void prepareToAnimate(Launcher launcher, boolean z) {
        StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
        stateAnimationConfig.animFlags = 31;
        stateAnimationConfig.duration = 0L;
        launcher.getStateManager().createAtomicAnimation(LauncherState.BACKGROUND_APP, LauncherState.NORMAL, stateAnimationConfig).start();
        ((RecentsView) launcher.getOverviewPanel()).getScroller().mScroller.mFinished = true;
        if (z) {
            addScrimAnimationForState(launcher, LauncherState.BACKGROUND_APP, PropertySetter.NO_ANIM_PROPERTY_SETTER);
        }
    }

    public StaggeredWorkspaceAnim addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.mAnimators.addListener(animatorListener);
        return this;
    }

    public AnimatorSet getAnimators() {
        return this.mAnimators;
    }

    public void start() {
        this.mAnimators.start();
    }
}
