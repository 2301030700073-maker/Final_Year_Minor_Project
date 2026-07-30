package com.android.launcher3.uioverrides.states;

import android.content.Context;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class BackgroundAppState extends OverviewState {
    public static final int STATE_FLAGS = (((LauncherState.FLAG_OVERVIEW_UI | 2) | LauncherState.FLAG_WORKSPACE_INACCESSIBLE) | 1) | LauncherState.FLAG_CLOSE_POPUPS;

    public BackgroundAppState(int i) {
        super(i, 12, STATE_FLAGS);
    }

    public static float[] getOverviewScaleAndOffsetForBackgroundState(BaseDraggingActivity baseDraggingActivity) {
        return new float[]{((RecentsView) baseDraggingActivity.getOverviewPanel()).getMaxScaleForFullScreen(), RecentsState.NO_OFFSET};
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public float getDepthUnchecked(Context context) {
        return 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getHotseatScaleAndTranslation(Launcher launcher) {
        if ((getVisibleElements(launcher) & 1) == 0) {
            return super.getHotseatScaleAndTranslation(launcher);
        }
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        LauncherState.ScaleAndTranslation hotseatScaleAndTranslation = super.getHotseatScaleAndTranslation(launcher);
        hotseatScaleAndTranslation.translationY += LayoutUtils.getShelfTrackingDistance(launcher, launcher.getDeviceProfile(), recentsView.getPagedOrientationHandler());
        return hotseatScaleAndTranslation;
    }

    @Override // com.android.launcher3.LauncherState
    public float getOverviewFullscreenProgress() {
        return 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return getOverviewScaleAndOffsetForBackgroundState(launcher);
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public float getVerticalProgress(Launcher launcher) {
        if (launcher.getDeviceProfile().isVerticalBarLayout()) {
            return super.getVerticalProgress(launcher);
        }
        return super.getVerticalProgress(launcher) + (LayoutUtils.getShelfTrackingDistance(launcher, launcher.getDeviceProfile(), ((RecentsView) launcher.getOverviewPanel()).getPagedOrientationHandler()) / Math.max(launcher.mAllAppsController.mShiftRange, 1.0f));
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public int getVisibleElements(Launcher launcher) {
        return super.getVisibleElements(launcher) & (-65) & (-33);
    }

    public BackgroundAppState(int i, int i2) {
        super(i, i2, STATE_FLAGS);
    }
}
