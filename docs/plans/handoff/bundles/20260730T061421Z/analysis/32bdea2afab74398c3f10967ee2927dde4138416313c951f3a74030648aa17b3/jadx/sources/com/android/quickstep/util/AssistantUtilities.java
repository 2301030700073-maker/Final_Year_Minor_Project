package com.android.quickstep.util;

import android.annotation.TargetApi;
import android.app.TaskInfo;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.TaskInfoCompat;

@TargetApi(29)
/* loaded from: classes.dex */
public final class AssistantUtilities {
    public static boolean isExcludedAssistant(TaskInfo taskInfo) {
        return (taskInfo == null || TaskInfoCompat.getActivityType(taskInfo) != 4 || (taskInfo.baseIntent.getFlags() & 8388608) == 0) ? false : true;
    }

    public static boolean isExcludedAssistantRunning() {
        return isExcludedAssistant(ActivityManagerWrapper.getInstance().getRunningTask());
    }
}
