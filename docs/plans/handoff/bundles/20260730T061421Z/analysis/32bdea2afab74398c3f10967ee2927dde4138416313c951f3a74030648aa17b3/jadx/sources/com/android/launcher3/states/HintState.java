package com.android.launcher3.states;

import android.content.Context;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class HintState extends LauncherState {
    public static final int STATE_FLAGS = (LauncherState.FLAG_WORKSPACE_INACCESSIBLE | 2) | LauncherState.FLAG_HAS_SYS_UI_SCRIM;

    public HintState(int i) {
        super(i, 0, STATE_FLAGS);
    }

    @Override // com.android.launcher3.LauncherState
    public float getDepthUnchecked(Context context) {
        return 0.15f;
    }

    @Override // com.android.launcher3.LauncherState
    public float getOverviewScrimAlpha(Launcher launcher) {
        return 0.4f;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getQsbScaleAndTranslation(Launcher launcher) {
        return getWorkspaceScaleAndTranslation(launcher);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return 80;
    }

    @Override // com.android.launcher3.LauncherState
    public LauncherState.ScaleAndTranslation getWorkspaceScaleAndTranslation(Launcher launcher) {
        return new LauncherState.ScaleAndTranslation(0.92f, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
    }
}
