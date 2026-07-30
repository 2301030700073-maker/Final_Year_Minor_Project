package com.android.launcher3.uioverrides.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.BaseState;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class AllAppsState extends LauncherState {
    public static final int STATE_FLAGS = LauncherState.FLAG_WORKSPACE_INACCESSIBLE | LauncherState.FLAG_CLOSE_POPUPS;
    public static final LauncherState.PageAlphaProvider PAGE_ALPHA_PROVIDER = new LauncherState.PageAlphaProvider(Interpolators.DEACCEL_2) { // from class: com.android.launcher3.uioverrides.states.AllAppsState.1
        @Override // com.android.launcher3.LauncherState.PageAlphaProvider
        public float getPageAlpha(int i) {
            return RecentsState.NO_OFFSET;
        }
    };

    public AllAppsState(int i) {
        super(i, 4, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public float getDepthUnchecked(Context context) {
        return 1.0f;
    }

    @Override // com.android.launcher3.LauncherState
    public String getDescription(Launcher launcher) {
        AllAppsContainerView allAppsContainerView = launcher.mAppsView;
        return allAppsContainerView.getContext().getString(allAppsContainerView.mUsingTabs ? allAppsContainerView.mViewPager.getNextPage() == 0 ? R.string.all_apps_button_personal_label : R.string.all_apps_button_work_label : R.string.all_apps_button_label);
    }

    @Override // com.android.launcher3.LauncherState, com.android.launcher3.statemanager.BaseState
    public BaseState getHistoryForState(BaseState baseState) {
        LauncherState launcherState = (LauncherState) baseState;
        LauncherState launcherState2 = LauncherState.OVERVIEW;
        return launcherState == launcherState2 ? launcherState2 : LauncherState.NORMAL;
    }

    @Override // com.android.launcher3.LauncherState
    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return new float[]{0.9f, RecentsState.NO_OFFSET};
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return 320;
    }

    @Override // com.android.launcher3.LauncherState
    public float getVerticalProgress(Launcher launcher) {
        return RecentsState.NO_OFFSET;
    }

    @Override // com.android.launcher3.LauncherState
    public int getVisibleElements(Launcher launcher) {
        return 28;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.PageAlphaProvider getWorkspacePageAlphaProvider(Launcher launcher) {
        return PAGE_ALPHA_PROVIDER;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        LauncherState.ScaleAndTranslation workspaceScaleAndTranslation = LauncherState.OVERVIEW.getWorkspaceScaleAndTranslation(launcher);
        if (SysUINavigationMode.getMode(launcher) != SysUINavigationMode.Mode.NO_BUTTON || FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get()) {
            workspaceScaleAndTranslation.scale = 1.0f;
        } else {
            workspaceScaleAndTranslation.scale = (workspaceScaleAndTranslation.scale + 1.0f) / 2.0f;
        }
        return workspaceScaleAndTranslation;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState getHistoryForState(LauncherState launcherState) {
        LauncherState launcherState2 = LauncherState.OVERVIEW;
        return launcherState == launcherState2 ? launcherState2 : LauncherState.NORMAL;
    }
}
