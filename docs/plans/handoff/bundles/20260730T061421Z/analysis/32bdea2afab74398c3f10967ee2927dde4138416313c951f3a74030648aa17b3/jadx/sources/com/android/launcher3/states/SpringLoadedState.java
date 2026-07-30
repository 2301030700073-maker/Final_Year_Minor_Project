package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.TaskMenuView;

/* loaded from: classes.dex */
public class SpringLoadedState extends LauncherState {
    public static final int STATE_FLAGS = ((((LauncherState.FLAG_MULTI_PAGE | LauncherState.FLAG_WORKSPACE_INACCESSIBLE) | 2) | LauncherState.FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED) | LauncherState.FLAG_WORKSPACE_HAS_BACKGROUNDS) | LauncherState.FLAG_HIDE_BACK_BUTTON;

    public SpringLoadedState(int i) {
        super(i, 1, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public float getDepthUnchecked(Context context) {
        return 0.5f;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(1.0f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return TaskMenuView.REVEAL_OPEN_DURATION;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        Workspace workspace = launcher.mWorkspace;
        if (workspace.getChildCount() == 0) {
            return super.getWorkspaceScaleAndTranslation(launcher);
        }
        if (deviceProfile.isVerticalBarLayout()) {
            return new LauncherState.ScaleAndTranslation(deviceProfile.workspaceSpringLoadShrinkFactor, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        }
        float f = deviceProfile.workspaceSpringLoadShrinkFactor;
        float f2 = launcher.mDragLayer.getInsets().top + deviceProfile.dropTargetBarSizePx;
        float measuredHeight = ((((((workspace.getMeasuredHeight() - r7.bottom) - deviceProfile.workspacePadding.bottom) - deviceProfile.workspaceSpringLoadedBottomSpace) - f2) - (workspace.getNormalChildHeight() * f)) / 2.0f) + f2;
        float height = workspace.getHeight() / 2;
        return new LauncherState.ScaleAndTranslation(f, RecentsState.NO_OFFSET, (measuredHeight - ((workspace.getTop() + height) - ((height - workspace.getChildAt(0).getTop()) * f))) / f);
    }

    @Override // com.android.launcher3.LauncherState
    public float getWorkspaceScrimAlpha(Launcher launcher) {
        return 0.3f;
    }
}
