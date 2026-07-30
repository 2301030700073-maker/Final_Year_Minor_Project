package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.launcher3.Launcher;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public final class PortraitOverviewStateTouchHelper {
    public Launcher mLauncher;
    public RecentsView mRecentsView;

    public PortraitOverviewStateTouchHelper(Launcher launcher) {
        this.mLauncher = launcher;
        this.mRecentsView = (RecentsView) launcher.getOverviewPanel();
    }
}
