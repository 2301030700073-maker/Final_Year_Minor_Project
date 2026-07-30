package com.android.launcher3.model;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.util.MultiHashMap;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class SdCardAvailableReceiver extends BroadcastReceiver {
    public final Context mContext;
    public final LauncherModel mModel;
    public final MultiHashMap mPackages;

    public SdCardAvailableReceiver(LauncherAppState launcherAppState, MultiHashMap multiHashMap) {
        this.mModel = launcherAppState.mModel;
        this.mContext = launcherAppState.mContext;
        this.mPackages = multiHashMap;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LauncherApps launcherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        for (Map.Entry entry : this.mPackages.entrySet()) {
            UserHandle userHandle = (UserHandle) entry.getKey();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Iterator it = new HashSet((Collection) entry.getValue()).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!launcherApps.isPackageEnabled(str, userHandle)) {
                    if (packageManagerHelper.isAppOnSdcard(str, userHandle)) {
                        arrayList2.add(str);
                    } else {
                        arrayList.add(str);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                this.mModel.onPackagesRemoved(userHandle, (String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            if (!arrayList2.isEmpty()) {
                this.mModel.onPackagesUnavailable((String[]) arrayList2.toArray(new String[arrayList2.size()]), userHandle, false);
            }
        }
        this.mContext.unregisterReceiver(this);
    }
}
