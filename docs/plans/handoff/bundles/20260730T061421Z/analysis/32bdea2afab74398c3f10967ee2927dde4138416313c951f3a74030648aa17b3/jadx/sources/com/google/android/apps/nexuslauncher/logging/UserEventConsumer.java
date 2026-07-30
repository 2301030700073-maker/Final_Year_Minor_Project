package com.google.android.apps.nexuslauncher.logging;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.quickstep.logging.UserEventDispatcherExtension;

/* loaded from: classes.dex */
public class UserEventConsumer extends UserEventDispatcherExtension {
    public UserEventConsumer(Context context) {
        super(context);
    }

    public LauncherLogProto$LauncherEvent c(LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent) {
        return launcherLogProto$LauncherEvent;
    }

    @Override // com.android.launcher3.logging.UserEventDispatcher
    public void dispatchUserEvent(LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent, Intent intent) {
        super.dispatchUserEvent(c(launcherLogProto$LauncherEvent), intent);
    }

    @Override // com.android.quickstep.logging.UserEventDispatcherExtension, com.android.launcher3.logging.UserEventDispatcher
    public void logActionTip(int i, int i2) {
        if (i2 != 2) {
            super.logActionTip(i, i2);
            return;
        }
        LauncherLogProto$Action launcherLogProto$Action = new LauncherLogProto$Action();
        LauncherLogProto$Target launcherLogProto$Target = new LauncherLogProto$Target();
        if (i == 0) {
            launcherLogProto$Action.type = 3;
            launcherLogProto$Target.type = 3;
            launcherLogProto$Target.containerType = 14;
        } else if (i != 1) {
            Log.e("UserEventConsumer", "Unexpected action type = " + i);
        } else {
            launcherLogProto$Action.type = 0;
            launcherLogProto$Action.touch = 0;
            launcherLogProto$Target.type = 2;
            launcherLogProto$Target.controlType = 14;
        }
        launcherLogProto$Target.tipType = 4;
        dispatchUserEvent(LoggerUtils.newLauncherEvent(launcherLogProto$Action, launcherLogProto$Target), null);
    }
}
