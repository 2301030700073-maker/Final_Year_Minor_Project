package com.android.launcher3.uioverrides.states;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.util.FloatProperty;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.WorkspaceStateTransitionAnimation;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsTransitionController;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.uioverrides.states.QuickstepAtomicAnimationFactory;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RecentsAtomicAnimationFactory;
import com.android.quickstep.views.RecentsView;
import java.util.Objects;

/* loaded from: classes.dex */
public class QuickstepAtomicAnimationFactory extends RecentsAtomicAnimationFactory {
    public int mHintToNormalDuration;

    public QuickstepAtomicAnimationFactory(QuickstepLauncher quickstepLauncher) {
        super(quickstepLauncher, 2);
        this.mHintToNormalDuration = -1;
    }

    @Override // com.android.quickstep.util.RecentsAtomicAnimationFactory, com.android.launcher3.statemanager.StateManager.AtomicAnimationFactory
    public Animator createStateElementAnimation(int i, float... fArr) {
        if (i != 2) {
            if (i != 3) {
                return super.createStateElementAnimation(i, fArr);
            }
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            stateAnimationConfig.duration = 300L;
            Interpolator interpolator = Interpolators.OVERSHOOT_1_2;
            Interpolator[] interpolatorArr = stateAnimationConfig.mInterpolators;
            interpolatorArr[0] = interpolator;
            interpolatorArr[10] = Interpolators.DEACCEL_3;
            if ((LauncherState.OVERVIEW.getVisibleElements((Launcher) this.mActivity) & 1) != 0) {
                Interpolator interpolator2 = Interpolators.OVERSHOOT_1_2;
                Interpolator[] interpolatorArr2 = stateAnimationConfig.mInterpolators;
                interpolatorArr2[4] = interpolator2;
                interpolatorArr2[5] = interpolator2;
            }
            StateManager stateManager = ((Launcher) this.mActivity).getStateManager();
            return stateManager.createAtomicAnimation((LauncherState) stateManager.mCurrentStableState, LauncherState.OVERVIEW, stateAnimationConfig);
        }
        AllAppsTransitionController allAppsTransitionController = ((Launcher) this.mActivity).mAllAppsController;
        Objects.requireNonNull(allAppsTransitionController);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(allAppsTransitionController, AllAppsTransitionController.ALL_APPS_PROGRESS, fArr);
        if ((LauncherState.OVERVIEW.getVisibleElements((Launcher) this.mActivity) & 1) == 0) {
            return ofFloat;
        }
        final float verticalProgress = LauncherState.OVERVIEW.getVerticalProgress((Launcher) this.mActivity);
        final LauncherState.ScaleAndTranslation hotseatScaleAndTranslation = LauncherState.OVERVIEW.getHotseatScaleAndTranslation((Launcher) this.mActivity);
        final float f = allAppsTransitionController.mShiftRange;
        if (fArr.length == 1) {
            fArr = new float[]{allAppsTransitionController.mProgress, fArr[0]};
        }
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(fArr);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.Z0.l.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                QuickstepAtomicAnimationFactory quickstepAtomicAnimationFactory = QuickstepAtomicAnimationFactory.this;
                float f2 = verticalProgress;
                float f3 = f;
                LauncherState.ScaleAndTranslation scaleAndTranslation = hotseatScaleAndTranslation;
                Objects.requireNonNull(quickstepAtomicAnimationFactory);
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (floatValue >= f2 || ((Launcher) quickstepAtomicAnimationFactory.mActivity).isInState(LauncherState.BACKGROUND_APP)) {
                    ((Launcher) quickstepAtomicAnimationFactory.mActivity).mHotseat.setTranslationY(((floatValue - f2) * f3) + scaleAndTranslation.translationY);
                }
            }
        });
        ofFloat2.setInterpolator(Interpolators.LINEAR);
        ofFloat2.setDuration(ofFloat.getDuration());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat2);
        animatorSet.play(ofFloat);
        return animatorSet;
    }

    @Override // com.android.launcher3.statemanager.StateManager.AtomicAnimationFactory
    public void prepareForAtomicAnimation(Object obj, Object obj2, StateAnimationConfig stateAnimationConfig) {
        LauncherState launcherState = (LauncherState) obj;
        LauncherState launcherState2 = (LauncherState) obj2;
        if (launcherState2 == LauncherState.NORMAL && launcherState == LauncherState.OVERVIEW) {
            Interpolator interpolator = Interpolators.DEACCEL;
            Interpolator[] interpolatorArr = stateAnimationConfig.mInterpolators;
            interpolatorArr[1] = interpolator;
            Interpolator interpolator2 = Interpolators.ACCEL;
            interpolatorArr[3] = interpolator2;
            interpolatorArr[10] = interpolator2;
            Interpolator clampToProgress = Interpolators.clampToProgress(interpolator2, RecentsState.NO_OFFSET, 0.9f);
            Interpolator[] interpolatorArr2 = stateAnimationConfig.mInterpolators;
            interpolatorArr2[6] = clampToProgress;
            interpolatorArr2[7] = Interpolators.ACCEL;
            interpolatorArr2[9] = Interpolators.DEACCEL_1_7;
            Workspace workspace = ((Launcher) this.mActivity).mWorkspace;
            boolean z = workspace.getVisibility() == 0;
            if (z) {
                CellLayout cellLayout = (CellLayout) workspace.getChildAt(workspace.getCurrentPage());
                z = cellLayout.getVisibility() == 0 && cellLayout.mShortcutsAndWidgets.getAlpha() > RecentsState.NO_OFFSET;
            }
            if (!z) {
                workspace.setScaleX(0.92f);
                workspace.setScaleY(0.92f);
            }
            Hotseat hotseat = ((Launcher) this.mActivity).mHotseat;
            if (hotseat.getVisibility() == 0 && hotseat.getAlpha() > RecentsState.NO_OFFSET) {
                return;
            }
            hotseat.setScaleX(0.92f);
            hotseat.setScaleY(0.92f);
            if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) {
                AllAppsContainerView allAppsContainerView = ((Launcher) this.mActivity).mAppsView;
                View view = allAppsContainerView.mSearchContainer;
                if (view.getVisibility() == 0 && view.getAlpha() > RecentsState.NO_OFFSET) {
                    return;
                }
                allAppsContainerView.setScaleX(0.92f);
                allAppsContainerView.setScaleY(0.92f);
                return;
            }
            return;
        }
        if (launcherState2 == LauncherState.NORMAL && launcherState == LauncherState.OVERVIEW_PEEK) {
            stateAnimationConfig.mInterpolators[9] = Interpolators.FINAL_FRAME;
            return;
        }
        if (launcherState2 == LauncherState.OVERVIEW_PEEK && launcherState == LauncherState.NORMAL) {
            Interpolator interpolator3 = Interpolators.INSTANT;
            Interpolator[] interpolatorArr3 = stateAnimationConfig.mInterpolators;
            interpolatorArr3[9] = interpolator3;
            interpolatorArr3[7] = Interpolators.OVERSHOOT_1_7;
            interpolatorArr3[11] = Interpolators.FAST_OUT_SLOW_IN;
            return;
        }
        if ((launcherState != LauncherState.NORMAL && launcherState != LauncherState.HINT_STATE) || launcherState2 != LauncherState.OVERVIEW) {
            if (launcherState == LauncherState.HINT_STATE && launcherState2 == LauncherState.NORMAL) {
                stateAnimationConfig.mInterpolators[14] = Interpolators.DEACCEL_3;
                if (this.mHintToNormalDuration == -1) {
                    Launcher launcher = (Launcher) this.mActivity;
                    this.mHintToNormalDuration = (int) WorkspaceStateTransitionAnimation.getSpringScaleAnimator(launcher, launcher.mWorkspace, launcherState2.getWorkspaceScaleAndTranslation(launcher).scale).getDuration();
                }
                stateAnimationConfig.duration = Math.max(stateAnimationConfig.duration, this.mHintToNormalDuration);
                return;
            }
            return;
        }
        if (SysUINavigationMode.getMode(this.mActivity) == SysUINavigationMode.Mode.NO_BUTTON) {
            Interpolator interpolator4 = launcherState == LauncherState.NORMAL ? Interpolators.ACCEL : Interpolators.OVERSHOOT_1_2;
            Interpolator[] interpolatorArr4 = stateAnimationConfig.mInterpolators;
            interpolatorArr4[1] = interpolator4;
            interpolatorArr4[2] = Interpolators.ACCEL;
        } else {
            stateAnimationConfig.mInterpolators[1] = Interpolators.OVERSHOOT_1_2;
            RecentsView recentsView = (RecentsView) ((Launcher) this.mActivity).getOverviewPanel();
            if (recentsView.getVisibility() != 0 || recentsView.getContentAlpha() == RecentsState.NO_OFFSET) {
                LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) recentsView, Float.valueOf(1.33f));
            }
        }
        Interpolator interpolator5 = Interpolators.OVERSHOOT_1_2;
        Interpolator[] interpolatorArr5 = stateAnimationConfig.mInterpolators;
        interpolatorArr5[3] = interpolator5;
        interpolatorArr5[10] = interpolator5;
        interpolatorArr5[6] = interpolator5;
        interpolatorArr5[14] = interpolator5;
        Interpolator interpolator6 = (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(this.mActivity)) ? Interpolators.OVERSHOOT_1_2 : Interpolators.OVERSHOOT_1_7;
        Interpolator[] interpolatorArr6 = stateAnimationConfig.mInterpolators;
        interpolatorArr6[7] = interpolator6;
        interpolatorArr6[8] = interpolator6;
        interpolatorArr6[9] = Interpolators.OVERSHOOT_1_2;
    }
}
