package com.android.launcher3.hybridhotseat;

import android.app.prediction.AppTarget;
import android.app.prediction.AppTargetEvent;
import android.app.prediction.AppTargetId;
import android.content.ComponentName;
import android.content.Context;
import c.a.c.a.a;
import com.android.launcher3.model.PredictionModel;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import java.util.Locale;

/* loaded from: classes.dex */
public class HotseatPredictionModel extends PredictionModel {
    public HotseatPredictionModel(Context context) {
    }

    public static boolean isTrackedForPrediction(ItemInfo itemInfo) {
        int i = itemInfo.container;
        return i == -101 || (i == -100 && itemInfo.screenId == 0);
    }

    public AppTarget getAppTargetFromInfo(ItemInfo itemInfo) {
        ComponentName componentName;
        if (itemInfo == null) {
            return null;
        }
        if (itemInfo.itemType == 4 && (itemInfo instanceof LauncherAppWidgetInfo) && (componentName = ((LauncherAppWidgetInfo) itemInfo).providerName) != null) {
            StringBuilder f = a.f("widget:");
            f.append(componentName.getPackageName());
            return new AppTarget.Builder(new AppTargetId(f.toString()), componentName.getPackageName(), itemInfo.user).setClassName(componentName.getClassName()).build();
        }
        if (itemInfo.itemType == 0 && itemInfo.getTargetComponent() != null) {
            ComponentName targetComponent = itemInfo.getTargetComponent();
            StringBuilder f2 = a.f("app:");
            f2.append(targetComponent.getPackageName());
            return new AppTarget.Builder(new AppTargetId(f2.toString()), targetComponent.getPackageName(), itemInfo.user).setClassName(targetComponent.getClassName()).build();
        }
        if (itemInfo.itemType == 6 && (itemInfo instanceof WorkspaceItemInfo)) {
            ShortcutKey fromIntent = ShortcutKey.fromIntent(itemInfo.getIntent(), itemInfo.user);
            StringBuilder f3 = a.f("shortcut:");
            f3.append(fromIntent.getId());
            return new AppTarget.Builder(new AppTargetId(f3.toString()), fromIntent.componentName.getPackageName(), fromIntent.user).build();
        }
        if (itemInfo.itemType != 2) {
            return null;
        }
        StringBuilder f4 = a.f("folder:");
        f4.append(itemInfo.id);
        return new AppTarget.Builder(new AppTargetId(f4.toString()), this.mContext.getPackageName(), itemInfo.user).build();
    }

    public AppTargetEvent wrapAppTargetWithLocation(AppTarget appTarget, int i, ItemInfo itemInfo) {
        Locale locale = Locale.ENGLISH;
        Object[] objArr = new Object[6];
        objArr[0] = itemInfo.container == -101 ? "hotseat" : "workspace";
        objArr[1] = Integer.valueOf(itemInfo.screenId);
        objArr[2] = Integer.valueOf(itemInfo.cellX);
        objArr[3] = Integer.valueOf(itemInfo.cellY);
        objArr[4] = Integer.valueOf(itemInfo.spanX);
        objArr[5] = Integer.valueOf(itemInfo.spanY);
        return new AppTargetEvent.Builder(appTarget, i).setLaunchLocation(String.format(locale, "%s/%d/[%d,%d]/[%d,%d]", objArr)).build();
    }
}
