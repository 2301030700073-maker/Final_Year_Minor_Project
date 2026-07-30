package com.android.launcher3.uioverrides.states;

import com.android.launcher3.Launcher;

/* loaded from: classes.dex */
public class OverviewPeekState extends OverviewState {
    public OverviewPeekState(int i) {
        super(i);
    }

    @Override // com.android.launcher3.uioverrides.states.OverviewState, com.android.launcher3.LauncherState
    public float[] getOverviewScaleAndOffset(Launcher launcher) {
        return new float[]{1.0f, 0.7f};
    }
}
