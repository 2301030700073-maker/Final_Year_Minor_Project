package com.android.launcher3;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.graphics.WorkspaceAndHotseatScrim;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.DynamicResource;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.plugins.ResourceProvider;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class WorkspaceStateTransitionAnimation {
    public final Launcher mLauncher;
    public float mNewScale;
    public final Workspace mWorkspace;

    public WorkspaceStateTransitionAnimation(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
    }

    public static ValueAnimator getSpringScaleAnimator(Launcher launcher, View view, float f) {
        ResourceProvider provider = DynamicResource.provider(launcher);
        float f2 = provider.getFloat(R.dimen.hint_scale_damping_ratio);
        float f3 = provider.getFloat(R.dimen.hint_scale_stiffness);
        float dimension = provider.getDimension(R.dimen.hint_scale_velocity_dp_per_s);
        SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(view.getContext());
        springAnimationBuilder.setStiffness(f3);
        springAnimationBuilder.setDampingRatio(f2);
        springAnimationBuilder.setMinimumVisibleChange(0.002f);
        springAnimationBuilder.mEndValue = f;
        springAnimationBuilder.mStartValue = ((Float) LauncherAnimUtils.SCALE_PROPERTY.get(view)).floatValue();
        springAnimationBuilder.mVelocity = dimension;
        return springAnimationBuilder.build(view, LauncherAnimUtils.SCALE_PROPERTY);
    }

    public final void applyChildState(LauncherState launcherState, CellLayout cellLayout, int i, LauncherState.PageAlphaProvider pageAlphaProvider, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        float pageAlpha = pageAlphaProvider.getPageAlpha(i);
        int round = launcherState.hasFlag(LauncherState.FLAG_WORKSPACE_HAS_BACKGROUNDS) ? Math.round(255.0f * pageAlpha) : 0;
        if (!stateAnimationConfig.onlyPlayAtomicComponent()) {
            propertySetter.setInt(cellLayout.mBackground, LauncherAnimUtils.DRAWABLE_ALPHA, round, Interpolators.ZOOM_OUT);
        }
        if (stateAnimationConfig.hasAnimationFlag(2)) {
            propertySetter.setFloat(cellLayout.mShortcutsAndWidgets, LauncherAnimUtils.VIEW_ALPHA, pageAlpha, stateAnimationConfig.getInterpolator(3, pageAlphaProvider.interpolator));
        }
    }

    public final void setPivotToScaleWithWorkspace(View view) {
        view.setPivotY(((this.mWorkspace.getPivotY() + this.mWorkspace.getTop()) - view.getTop()) - view.getTranslationY());
        view.setPivotX(((this.mWorkspace.getPivotX() + this.mWorkspace.getLeft()) - view.getLeft()) - view.getTranslationX());
    }

    public void setScrim(PropertySetter propertySetter, LauncherState launcherState) {
        Launcher launcher = this.mLauncher;
        WorkspaceAndHotseatScrim workspaceAndHotseatScrim = launcher.mDragLayer.mWorkspaceScrim;
        propertySetter.setFloat(workspaceAndHotseatScrim, Scrim.SCRIM_PROGRESS, launcherState.getWorkspaceScrimAlpha(launcher), Interpolators.LINEAR);
        propertySetter.setFloat(workspaceAndHotseatScrim, WorkspaceAndHotseatScrim.SYSUI_PROGRESS, launcherState.hasFlag(LauncherState.FLAG_HAS_SYS_UI_SCRIM) ? 1.0f : RecentsState.NO_OFFSET, Interpolators.LINEAR);
    }

    public final void setWorkspaceProperty(LauncherState launcherState, PropertySetter propertySetter, StateAnimationConfig stateAnimationConfig) {
        Object obj;
        LauncherState.ScaleAndTranslation workspaceScaleAndTranslation = launcherState.getWorkspaceScaleAndTranslation(this.mLauncher);
        LauncherState.ScaleAndTranslation hotseatScaleAndTranslation = launcherState.getHotseatScaleAndTranslation(this.mLauncher);
        LauncherState.ScaleAndTranslation qsbScaleAndTranslation = launcherState.getQsbScaleAndTranslation(this.mLauncher);
        this.mNewScale = workspaceScaleAndTranslation.scale;
        LauncherState.PageAlphaProvider workspacePageAlphaProvider = launcherState.getWorkspacePageAlphaProvider(this.mLauncher);
        int childCount = this.mWorkspace.getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            applyChildState(launcherState, (CellLayout) this.mWorkspace.getChildAt(i), i, workspacePageAlphaProvider, propertySetter, stateAnimationConfig);
        }
        int visibleElements = launcherState.getVisibleElements(this.mLauncher);
        TimeInterpolator interpolator = stateAnimationConfig.getInterpolator(3, workspacePageAlphaProvider.interpolator);
        boolean hasAnimationFlag = stateAnimationConfig.hasAnimationFlag(2);
        View view = this.mWorkspace.mLauncher.mHotseat;
        AllAppsContainerView allAppsContainerView = this.mLauncher.mAppsView;
        Object obj2 = allAppsContainerView.mSearchContainer;
        if (hasAnimationFlag) {
            Interpolator interpolator2 = stateAnimationConfig.getInterpolator(1, Interpolators.ZOOM_OUT);
            LauncherState launcherState2 = (LauncherState) this.mLauncher.getStateManager().mState;
            if ((propertySetter instanceof PendingAnimation) && launcherState2 == LauncherState.HINT_STATE && launcherState == LauncherState.NORMAL) {
                z = true;
            }
            if (z) {
                obj = obj2;
                ((PendingAnimation) propertySetter).add(getSpringScaleAnimator(this.mLauncher, this.mWorkspace, this.mNewScale));
            } else {
                obj = obj2;
                propertySetter.setFloat(this.mWorkspace, LauncherAnimUtils.SCALE_PROPERTY, this.mNewScale, interpolator2);
            }
            setPivotToScaleWithWorkspace(view);
            setPivotToScaleWithWorkspace(allAppsContainerView);
            float f = hotseatScaleAndTranslation.scale;
            if (z) {
                PendingAnimation pendingAnimation = (PendingAnimation) propertySetter;
                pendingAnimation.add(getSpringScaleAnimator(this.mLauncher, view, f));
                pendingAnimation.add(getSpringScaleAnimator(this.mLauncher, allAppsContainerView, qsbScaleAndTranslation.scale));
            } else {
                TimeInterpolator interpolator3 = stateAnimationConfig.getInterpolator(4, interpolator2);
                propertySetter.setFloat(view, LauncherAnimUtils.SCALE_PROPERTY, f, interpolator3);
                propertySetter.setFloat(allAppsContainerView, LauncherAnimUtils.SCALE_PROPERTY, qsbScaleAndTranslation.scale, interpolator3);
            }
            float f2 = (visibleElements & 1) != 0 ? 1.0f : RecentsState.NO_OFFSET;
            propertySetter.setViewAlpha(view, f2, interpolator);
            propertySetter.setViewAlpha(this.mLauncher.mWorkspace.getPageIndicator(), f2, interpolator);
        } else {
            obj = obj2;
        }
        if (stateAnimationConfig.onlyPlayAtomicComponent()) {
            return;
        }
        Interpolator interpolator4 = !hasAnimationFlag ? Interpolators.LINEAR : stateAnimationConfig.getInterpolator(2, Interpolators.ZOOM_OUT);
        propertySetter.setFloat(this.mWorkspace, LauncherAnimUtils.VIEW_TRANSLATE_X, RecentsState.NO_OFFSET, interpolator4);
        propertySetter.setFloat(this.mWorkspace, LauncherAnimUtils.VIEW_TRANSLATE_Y, workspaceScaleAndTranslation.translationY, interpolator4);
        TimeInterpolator interpolator5 = stateAnimationConfig.getInterpolator(5, interpolator4);
        propertySetter.setFloat(view, LauncherAnimUtils.VIEW_TRANSLATE_Y, hotseatScaleAndTranslation.translationY, interpolator5);
        propertySetter.setFloat(this.mWorkspace.getPageIndicator(), LauncherAnimUtils.VIEW_TRANSLATE_Y, hotseatScaleAndTranslation.translationY, interpolator5);
        propertySetter.setFloat(obj, LauncherAnimUtils.VIEW_TRANSLATE_Y, qsbScaleAndTranslation.translationY, interpolator5);
        setScrim(propertySetter, launcherState);
    }
}
