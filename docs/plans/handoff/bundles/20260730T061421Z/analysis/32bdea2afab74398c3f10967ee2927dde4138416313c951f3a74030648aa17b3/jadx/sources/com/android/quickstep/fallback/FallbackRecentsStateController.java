package com.android.quickstep.fallback;

import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.fallback.FallbackRecentsView;
import com.android.quickstep.views.ClearAllButton;
import com.android.quickstep.views.RecentsView;
import java.util.Objects;

/* loaded from: classes.dex */
public class FallbackRecentsStateController implements StateManager.StateHandler {
    public final RecentsActivity mActivity;
    public final StateAnimationConfig mNoConfig = new StateAnimationConfig();
    public final FallbackRecentsView mRecentsView;

    public FallbackRecentsStateController(RecentsActivity recentsActivity) {
        this.mActivity = recentsActivity;
        this.mRecentsView = (FallbackRecentsView) recentsActivity.getOverviewPanel();
    }

    private void setProperties(RecentsState recentsState, StateAnimationConfig stateAnimationConfig, PropertySetter propertySetter) {
        float f = recentsState.hasButtons() ? 1.0f : 0.0f;
        propertySetter.setFloat(this.mRecentsView.getClearAllButton(), ClearAllButton.VISIBILITY_ALPHA, f, Interpolators.LINEAR);
        propertySetter.setFloat(this.mActivity.getActionsView().getVisibilityAlpha(), MultiValueAlpha.VALUE, f, Interpolators.LINEAR);
        float[] overviewScaleAndOffset = recentsState.getOverviewScaleAndOffset(this.mActivity);
        propertySetter.setFloat(this.mRecentsView, LauncherAnimUtils.SCALE_PROPERTY, overviewScaleAndOffset[0], stateAnimationConfig.getInterpolator(6, Interpolators.LINEAR));
        propertySetter.setFloat(this.mRecentsView, RecentsView.ADJACENT_PAGE_OFFSET, overviewScaleAndOffset[1], stateAnimationConfig.getInterpolator(7, Interpolators.LINEAR));
        propertySetter.setFloat(this.mRecentsView, RecentsView.TASK_MODALNESS, recentsState.getOverviewModalness(), stateAnimationConfig.getInterpolator(13, Interpolators.LINEAR));
        propertySetter.setFloat(this.mRecentsView, RecentsView.FULLSCREEN_PROGRESS, recentsState.isFullScreen() ? 1.0f : 0.0f, Interpolators.LINEAR);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(RecentsState recentsState) {
        this.mRecentsView.updateEmptyMessage();
        this.mRecentsView.resetTaskVisuals();
        setProperties(recentsState, this.mNoConfig, PropertySetter.NO_ANIM_PROPERTY_SETTER);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(RecentsState recentsState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        if (stateAnimationConfig.hasAnimationFlag(6) && !stateAnimationConfig.hasAnimationFlag(8)) {
            final FallbackRecentsView fallbackRecentsView = this.mRecentsView;
            Objects.requireNonNull(fallbackRecentsView);
            pendingAnimation.addOnFrameCallback(new Runnable() { // from class: c.a.b.Y1.b
                @Override // java.lang.Runnable
                public final void run() {
                    FallbackRecentsView.this.loadVisibleTaskData();
                }
            });
            this.mRecentsView.updateEmptyMessage();
            setProperties(recentsState, stateAnimationConfig, pendingAnimation);
        }
    }
}
