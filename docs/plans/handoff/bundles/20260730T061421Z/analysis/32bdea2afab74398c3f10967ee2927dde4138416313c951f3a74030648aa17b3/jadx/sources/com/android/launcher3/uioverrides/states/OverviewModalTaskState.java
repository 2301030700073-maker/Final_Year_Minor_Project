package com.android.launcher3.uioverrides.states;

import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class OverviewModalTaskState extends OverviewState {
    public static final int STATE_FLAGS = (LauncherState.FLAG_OVERVIEW_UI | 2) | LauncherState.FLAG_WORKSPACE_INACCESSIBLE;

    public OverviewModalTaskState(int i) {
        super(i, 6, STATE_FLAGS);
    }

    public static float[] getOverviewScaleAndOffsetForModalState(BaseDraggingActivity baseDraggingActivity) {
        Rect rect = new Rect();
        ((RecentsView) baseDraggingActivity.getOverviewPanel()).getTaskSize(rect);
        int height = rect.height();
        ((RecentsView) baseDraggingActivity.getOverviewPanel()).getModalTaskSize(rect);
        return new float[]{rect.height() / height, RecentsState.NO_OFFSET};
    }

    @Override // com.android.launcher3.LauncherState
    public float getOverviewModalness() {
        return 1.0f;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return getOverviewScaleAndOffsetForModalState(launcher);
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return 300;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public int getVisibleElements(Launcher launcher) {
        return 64;
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public void onBackPressed(Launcher launcher) {
        launcher.getStateManager().goToState(LauncherState.OVERVIEW);
        RecentsView recentsView = (RecentsView) launcher.getOverviewPanel();
        if (recentsView != null) {
            recentsView.resetModalVisuals();
        } else {
            super.onBackPressed(launcher);
        }
    }
}
