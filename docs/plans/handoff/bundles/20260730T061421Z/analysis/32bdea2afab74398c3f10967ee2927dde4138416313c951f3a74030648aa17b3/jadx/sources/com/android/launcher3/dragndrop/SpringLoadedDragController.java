package com.android.launcher3.dragndrop;

import com.android.launcher3.Alarm;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Workspace;

/* loaded from: classes.dex */
public class SpringLoadedDragController implements OnAlarmListener {
    public Alarm mAlarm;
    public Launcher mLauncher;
    public CellLayout mScreen;

    public SpringLoadedDragController(Launcher launcher) {
        this.mLauncher = launcher;
        Alarm alarm = new Alarm();
        this.mAlarm = alarm;
        alarm.mAlarmListener = this;
    }

    @Override // com.android.launcher3.OnAlarmListener
    public void onAlarm(Alarm alarm) {
        CellLayout cellLayout = this.mScreen;
        if (cellLayout == null) {
            this.mLauncher.mDragController.cancelDrag();
            return;
        }
        Workspace workspace = this.mLauncher.mWorkspace;
        int indexOfChild = workspace.indexOfChild(cellLayout);
        if (indexOfChild != workspace.getCurrentPage()) {
            workspace.snapToPage(indexOfChild);
        }
    }
}
