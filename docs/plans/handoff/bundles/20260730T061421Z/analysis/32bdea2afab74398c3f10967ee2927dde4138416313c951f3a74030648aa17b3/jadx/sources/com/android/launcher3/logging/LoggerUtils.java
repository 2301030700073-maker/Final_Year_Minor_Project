package com.android.launcher3.logging;

import android.util.ArrayMap;
import android.view.View;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Action;
import com.android.launcher3.userevent.nano.LauncherLogProto$LauncherEvent;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.util.InstantAppResolver;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class LoggerUtils {
    static {
        new ArrayMap();
    }

    public static String extractObjectNameAndAddress(String str) {
        String[] split = str.split("\\.");
        return split.length == 0 ? "" : split[split.length - 1];
    }

    public static LauncherLogProto$Action newAction(int i) {
        LauncherLogProto$Action launcherLogProto$Action = new LauncherLogProto$Action();
        launcherLogProto$Action.type = i;
        return launcherLogProto$Action;
    }

    public static LauncherLogProto$Action newCommandAction(int i) {
        LauncherLogProto$Action newAction = newAction(2);
        newAction.command = i;
        return newAction;
    }

    public static LauncherLogProto$Target newContainerTarget(int i) {
        LauncherLogProto$Target newTarget = newTarget(3);
        newTarget.containerType = i;
        return newTarget;
    }

    public static LauncherLogProto$Target newItemTarget(View view, InstantAppResolver instantAppResolver) {
        return (view == null || !(view.getTag() instanceof ItemInfo)) ? newTarget(1) : newItemTarget((ItemInfo) view.getTag(), instantAppResolver);
    }

    public static LauncherLogProto$LauncherEvent newLauncherEvent(LauncherLogProto$Action launcherLogProto$Action, LauncherLogProto$Target... launcherLogProto$TargetArr) {
        LauncherLogProto$LauncherEvent launcherLogProto$LauncherEvent = new LauncherLogProto$LauncherEvent();
        launcherLogProto$LauncherEvent.srcTarget = launcherLogProto$TargetArr;
        launcherLogProto$LauncherEvent.action = launcherLogProto$Action;
        return launcherLogProto$LauncherEvent;
    }

    public static LauncherLogProto$Target newTarget(int i) {
        LauncherLogProto$Target launcherLogProto$Target = new LauncherLogProto$Target();
        launcherLogProto$Target.type = i;
        return launcherLogProto$Target;
    }

    public static LauncherLogProto$Action newTouchAction(int i) {
        LauncherLogProto$Action newAction = newAction(0);
        newAction.touch = i;
        return newAction;
    }

    public static LauncherLogProto$Target newItemTarget(ItemInfo itemInfo, InstantAppResolver instantAppResolver) {
        int i = 1;
        LauncherLogProto$Target newTarget = newTarget(1);
        int i2 = itemInfo.itemType;
        if (i2 == 0) {
            if (instantAppResolver != null && (itemInfo instanceof AppInfo) && instantAppResolver.isInstantApp((AppInfo) itemInfo)) {
                i = 10;
            }
            newTarget.itemType = i;
            newTarget.predictedRank = 10000;
        } else if (i2 == 1) {
            newTarget.itemType = 2;
            newTarget.predictedRank = 10000;
        } else if (i2 == 2) {
            newTarget.itemType = 4;
        } else if (i2 == 4) {
            newTarget.itemType = 3;
        } else if (i2 == 6) {
            newTarget.itemType = 5;
            newTarget.predictedRank = 10000;
        }
        return newTarget;
    }

    public static LauncherLogProto$LauncherEvent newLauncherEvent(LauncherLogProto$Action launcherLogProto$Action, ArrayList arrayList) {
        LauncherLogProto$Target[] launcherLogProto$TargetArr = new LauncherLogProto$Target[arrayList.size()];
        arrayList.toArray(launcherLogProto$TargetArr);
        return newLauncherEvent(launcherLogProto$Action, launcherLogProto$TargetArr);
    }
}
