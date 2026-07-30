package com.android.launcher3.uioverrides.states;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class OverviewState extends LauncherState {
    public static final Rect sTempRect = new Rect();
    public static final int STATE_FLAGS = (((LauncherState.FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED | 2) | LauncherState.FLAG_OVERVIEW_UI) | LauncherState.FLAG_WORKSPACE_INACCESSIBLE) | LauncherState.FLAG_CLOSE_POPUPS;

    public OverviewState(int i) {
        super(i, 12, STATE_FLAGS);
    }

    public static float getDefaultSwipeHeight(Launcher launcher) {
        return LayoutUtils.getDefaultSwipeHeight(launcher, launcher.getDeviceProfile());
    }

    public static float getDefaultVerticalProgress(Launcher launcher) {
        return 1.0f - (LayoutUtils.getDefaultSwipeHeight(launcher, launcher.getDeviceProfile()) / launcher.mAllAppsController.mShiftRange);
    }

    @Override // com.android.launcher3.LauncherState
    public float getDepthUnchecked(Context context) {
        return 1.0f;
    }

    @Override // com.android.launcher3.LauncherState
    public String getDescription(Launcher launcher) {
        return launcher.getString(R.string.accessibility_recent_apps);
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        if ((getVisibleElements(launcher) & 1) == 0) {
            return getWorkspaceScaleAndTranslation(launcher);
        }
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        int i = deviceProfile.allAppsIconSizePx;
        int i2 = deviceProfile.iconSizePx;
        if (i >= i2) {
            return new LauncherState.ScaleAndTranslation(1.0f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        }
        float f = i / i2;
        return new LauncherState.ScaleAndTranslation(f, RecentsState.NO_OFFSET, (1.0f - f) * ((deviceProfile.heightPx / 2) - deviceProfile.hotseatBarBottomPaddingPx));
    }

    @Override // com.android.launcher3.LauncherState
    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return new float[]{1.0f, RecentsState.NO_OFFSET};
    }

    @Override // com.android.launcher3.LauncherState
    public float getOverviewScrimAlpha(Launcher launcher) {
        return 0.5f;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getQsbScaleAndTranslation(Launcher launcher) {
        return (this == LauncherState.OVERVIEW && FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(launcher)) ? getHotseatScaleAndTranslation(launcher) : new LauncherState.ScaleAndTranslation(1.0f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return ((((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(context)).getMode() == SysUINavigationMode.Mode.NO_BUTTON) && FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) ? 380 : 250;
    }

    @Override // com.android.launcher3.LauncherState
    public float getVerticalProgress(Launcher launcher) {
        if ((getVisibleElements(launcher) & 8) == 0) {
            return 1.0f;
        }
        return getDefaultVerticalProgress(launcher);
    }

    @Override // com.android.launcher3.LauncherState
    public int getVisibleElements(Launcher launcher) {
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        if ((FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(launcher)) || SysUINavigationMode.hideShelfInTwoButtonLandscape(launcher, recentsView.getPagedOrientationHandler())) {
            return 64;
        }
        if (launcher.getDeviceProfile().isVerticalBarLayout()) {
            return 96;
        }
        AllAppsContainerView allAppsContainerView = launcher.mAppsView;
        return (allAppsContainerView != null && allAppsContainerView.mHeader.hasVisibleContent() ? 8 : 1) | 98;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        return new LauncherState.PageAlphaProvider(this, Interpolators.DEACCEL_2) { // from class: com.android.launcher3.uioverrides.states.OverviewState.1
            @Override // com.android.launcher3.LauncherState.PageAlphaProvider
            public float getPageAlpha(int i) {
                return RecentsState.NO_OFFSET;
            }
        };
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        Workspace workspace = launcher.mWorkspace;
        View pageAt = workspace.getPageAt(workspace.getCurrentPage());
        int width = (pageAt == null || pageAt.getWidth() == 0) ? launcher.getDeviceProfile().availableWidthPx : pageAt.getWidth();
        recentsView.getTaskSize(sTempRect);
        return new LauncherState.ScaleAndTranslation(sTempRect.width() / width, RecentsState.NO_OFFSET, (-LayoutUtils.getDefaultSwipeHeight(launcher, launcher.getDeviceProfile())) * 0.5f);
    }

    @Override // com.android.launcher3.LauncherState
    public void onBackPressed(Launcher launcher) {
        TaskView runningTaskView = ((RecentsView) launcher.getOverviewPanel()).getRunningTaskView();
        if (runningTaskView != null) {
            launcher.getUserEventDispatcher().logActionCommand(1, LoggerUtils.newContainerTarget(6));
            runningTaskView.launchTask(true);
        } else if (this != LauncherState.NORMAL) {
            StateManager stateManager = launcher.getStateManager();
            stateManager.goToState((LauncherState) stateManager.mLastStableState);
        }
    }

    public OverviewState(int i, int i2, int i3) {
        super(i, i2, i3);
    }
}
