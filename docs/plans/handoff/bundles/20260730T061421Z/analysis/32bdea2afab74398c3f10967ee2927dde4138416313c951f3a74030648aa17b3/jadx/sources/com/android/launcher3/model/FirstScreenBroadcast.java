package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.pm.PackageInstaller;
import android.os.Process;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.util.PackageUserKey;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FirstScreenBroadcast {
    public final MultiHashMap mPackagesForInstaller;

    public FirstScreenBroadcast(HashMap hashMap) {
        MultiHashMap multiHashMap = new MultiHashMap();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (Process.myUserHandle().equals(((PackageUserKey) entry.getKey()).mUser)) {
                multiHashMap.addToList(((PackageInstaller.SessionInfo) entry.getValue()).getInstallerPackageName(), ((PackageUserKey) entry.getKey()).mPackageName);
            }
        }
        this.mPackagesForInstaller = multiHashMap;
    }

    public static String getPackageName(ItemInfo itemInfo) {
        if (!(itemInfo instanceof LauncherAppWidgetInfo)) {
            if (itemInfo.getTargetComponent() != null) {
                return itemInfo.getTargetComponent().getPackageName();
            }
            return null;
        }
        ComponentName componentName = ((LauncherAppWidgetInfo) itemInfo).providerName;
        if (componentName != null) {
            return componentName.getPackageName();
        }
        return null;
    }
}
