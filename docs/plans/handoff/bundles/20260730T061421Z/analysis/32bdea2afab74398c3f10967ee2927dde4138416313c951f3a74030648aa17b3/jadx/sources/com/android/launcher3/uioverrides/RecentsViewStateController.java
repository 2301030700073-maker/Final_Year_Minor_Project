package com.android.launcher3.uioverrides;

import android.annotation.TargetApi;
import android.util.FloatProperty;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.graphics.Scrim;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.ClearAllButton;
import com.android.quickstep.views.LauncherRecentsView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.Objects;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public final class RecentsViewStateController implements StateManager.StateHandler {
    public final BaseQuickstepLauncher mLauncher;
    public final RecentsView mRecentsView;

    public RecentsViewStateController(BaseQuickstepLauncher baseQuickstepLauncher) {
        this.mLauncher = baseQuickstepLauncher;
        this.mRecentsView = (RecentsView) baseQuickstepLauncher.getOverviewPanel();
    }

    public final void setAlphas(PropertySetter propertySetter, LauncherState launcherState) {
        float f = (launcherState.getVisibleElements(this.mLauncher) & 64) != 0 ? 1.0f : RecentsState.NO_OFFSET;
        propertySetter.setFloat(((LauncherRecentsView) this.mRecentsView).getClearAllButton(), ClearAllButton.VISIBILITY_ALPHA, f, Interpolators.LINEAR);
        propertySetter.setFloat(this.mLauncher.mActionsView.getVisibilityAlpha(), MultiValueAlpha.VALUE, f, Interpolators.LINEAR);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        float[] overviewScaleAndOffset = launcherState.getOverviewScaleAndOffset(this.mLauncher);
        LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) this.mRecentsView, Float.valueOf(overviewScaleAndOffset[0]));
        RecentsView.ADJACENT_PAGE_OFFSET.set((FloatProperty) this.mRecentsView, Float.valueOf(overviewScaleAndOffset[1]));
        RecentsView.CONTENT_ALPHA.set((FloatProperty) this.mRecentsView, Float.valueOf(launcherState.overviewUi ? 1.0f : RecentsState.NO_OFFSET));
        BaseQuickstepLauncher baseQuickstepLauncher = this.mLauncher;
        Scrim.SCRIM_PROGRESS.set((FloatProperty) baseQuickstepLauncher.mDragLayer.mOverviewScrim, Float.valueOf(launcherState.getOverviewScrimAlpha(baseQuickstepLauncher)));
        RecentsView.TASK_MODALNESS.set((FloatProperty) this.mRecentsView, Float.valueOf(launcherState.getOverviewModalness()));
        if (launcherState.overviewUi) {
            ((LauncherRecentsView) this.mRecentsView).updateEmptyMessage();
            ((LauncherRecentsView) this.mRecentsView).resetTaskVisuals();
        }
        setAlphas(PropertySetter.NO_ANIM_PROPERTY_SETTER, launcherState);
        ((LauncherRecentsView) this.mRecentsView).setFullscreenProgress(launcherState.getOverviewFullscreenProgress());
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        if (stateAnimationConfig.hasAnimationFlag(6) && !stateAnimationConfig.hasAnimationFlag(8)) {
            float[] overviewScaleAndOffset = launcherState.getOverviewScaleAndOffset(this.mLauncher);
            pendingAnimation.setFloat(this.mRecentsView, LauncherAnimUtils.SCALE_PROPERTY, overviewScaleAndOffset[0], stateAnimationConfig.getInterpolator(6, Interpolators.LINEAR));
            pendingAnimation.setFloat(this.mRecentsView, RecentsView.ADJACENT_PAGE_OFFSET, overviewScaleAndOffset[1], stateAnimationConfig.getInterpolator(7, Interpolators.LINEAR));
            pendingAnimation.setFloat(this.mRecentsView, RecentsView.CONTENT_ALPHA, launcherState.overviewUi ? 1.0f : RecentsState.NO_OFFSET, stateAnimationConfig.getInterpolator(9, Interpolators.AGGRESSIVE_EASE_IN_OUT));
            BaseQuickstepLauncher baseQuickstepLauncher = this.mLauncher;
            pendingAnimation.setFloat(baseQuickstepLauncher.mDragLayer.mOverviewScrim, Scrim.SCRIM_PROGRESS, launcherState.getOverviewScrimAlpha(baseQuickstepLauncher), stateAnimationConfig.getInterpolator(11, Interpolators.LINEAR));
            pendingAnimation.setFloat(this.mRecentsView, RecentsView.TASK_MODALNESS, launcherState.getOverviewModalness(), stateAnimationConfig.getInterpolator(13, Interpolators.LINEAR));
            if (launcherState.overviewUi) {
                final LauncherRecentsView launcherRecentsView = (LauncherRecentsView) this.mRecentsView;
                Objects.requireNonNull(launcherRecentsView);
                pendingAnimation.addOnFrameCallback(new Runnable() { // from class: c.a.a.Z0.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherRecentsView.this.loadVisibleTaskData();
                    }
                });
                ((LauncherRecentsView) this.mRecentsView).updateEmptyMessage();
            } else {
                final LauncherRecentsView launcherRecentsView2 = (LauncherRecentsView) this.mRecentsView;
                Objects.requireNonNull(launcherRecentsView2);
                pendingAnimation.mAnim.addListener(AnimationSuccessListener.forRunnable(new Runnable() { // from class: c.a.a.Z0.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        LauncherRecentsView.this.resetTaskVisuals();
                    }
                }));
            }
            setAlphas(pendingAnimation, launcherState);
            pendingAnimation.setFloat(this.mRecentsView, RecentsView.FULLSCREEN_PROGRESS, launcherState.getOverviewFullscreenProgress(), Interpolators.LINEAR);
        }
    }
}
