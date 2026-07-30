package com.android.quickstep.fallback;

import com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController;
import com.android.quickstep.RecentsActivity;

/* loaded from: classes.dex */
public class RecentsTaskController extends TaskViewTouchController {
    public RecentsTaskController(RecentsActivity recentsActivity) {
        super(recentsActivity);
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
    public boolean isRecentsInteractive() {
        return ((RecentsActivity) this.mActivity).hasWindowFocus();
    }

    @Override // com.android.launcher3.uioverrides.touchcontrollers.TaskViewTouchController
    public boolean isRecentsModal() {
        return false;
    }
}
