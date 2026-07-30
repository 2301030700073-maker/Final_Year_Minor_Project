package com.android.launcher3.allapps;

import android.content.Context;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.LabelComparator;
import java.util.Comparator;

/* loaded from: classes.dex */
public class AppInfoComparator implements Comparator {
    public final UserCache mUserManager;
    public final UserHandle mMyUser = Process.myUserHandle();
    public final LabelComparator mLabelComparator = new LabelComparator();

    public AppInfoComparator(Context context) {
        this.mUserManager = (UserCache) UserCache.INSTANCE.b(context);
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        AppInfo appInfo = (AppInfo) obj;
        AppInfo appInfo2 = (AppInfo) obj2;
        int compare = this.mLabelComparator.compare(appInfo.title.toString(), appInfo2.title.toString());
        if (compare != 0) {
            return compare;
        }
        int compareTo = appInfo.componentName.compareTo(appInfo2.componentName);
        if (compareTo != 0) {
            return compareTo;
        }
        if (this.mMyUser.equals(appInfo.user)) {
            return -1;
        }
        return Long.valueOf(this.mUserManager.getSerialNumberForUser(appInfo.user)).compareTo(Long.valueOf(this.mUserManager.getSerialNumberForUser(appInfo2.user)));
    }
}
