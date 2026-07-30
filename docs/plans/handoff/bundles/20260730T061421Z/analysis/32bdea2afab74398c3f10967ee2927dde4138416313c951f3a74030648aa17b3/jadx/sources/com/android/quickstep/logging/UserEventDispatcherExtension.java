package com.android.quickstep.logging;

import android.content.Context;
import android.util.Log;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.systemui.shared.system.MetricsLoggerCompat;

/* loaded from: classes.dex */
public class UserEventDispatcherExtension extends UserEventDispatcher {
    public static final int ALL_APPS_PREDICTION_TIPS = 2;
    public static final String TAG = "UserEventDispatcher";

    public UserEventDispatcherExtension(Context context) {
    }

    @Override // com.android.launcher3.logging.UserEventDispatcher
    public void logActionTip(int i, int i2) {
        LauncherLogProto$Action launcherLogProto$Action = new LauncherLogProto$Action();
        LauncherLogProto$Target launcherLogProto$Target = new LauncherLogProto$Target();
        if (i == 0) {
            launcherLogProto$Action.type = 3;
            launcherLogProto$Target.type = 3;
            launcherLogProto$Target.containerType = 14;
        } else if (i != 1) {
            Log.e("UserEventDispatcher", "Unexpected action type = " + i);
        } else {
            launcherLogProto$Action.type = 0;
            launcherLogProto$Action.touch = 0;
            launcherLogProto$Target.type = 2;
            launcherLogProto$Target.controlType = 14;
        }
        if (i2 == 0) {
            launcherLogProto$Target.tipType = 2;
        } else if (i2 != 1) {
            Log.e("UserEventDispatcher", "Unexpected viewType = " + i2);
        } else {
            launcherLogProto$Target.tipType = 3;
        }
        dispatchUserEvent(LoggerUtils.newLauncherEvent(launcherLogProto$Action, launcherLogProto$Target), null);
    }

    @Override // com.android.launcher3.logging.UserEventDispatcher
    public void logStateChangeAction(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        new MetricsLoggerCompat().visibility(224, i7 == 12);
        super.logStateChangeAction(i, i2, i3, i4, i5, i6, i7, i8);
    }
}
