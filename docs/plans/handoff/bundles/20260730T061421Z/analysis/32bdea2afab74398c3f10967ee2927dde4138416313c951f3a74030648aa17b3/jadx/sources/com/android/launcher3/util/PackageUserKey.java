package com.android.launcher3.util;

import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import b.l.W;
import com.android.launcher3.model.data.ItemInfo;
import java.util.Arrays;

/* loaded from: classes.dex */
public class PackageUserKey {
    public int mHashCode;
    public String mPackageName;
    public UserHandle mUser;

    public PackageUserKey(String str, UserHandle userHandle) {
        update(str, userHandle);
    }

    public static PackageUserKey fromItemInfo(ItemInfo itemInfo) {
        if (itemInfo.getTargetComponent() == null) {
            return null;
        }
        return new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user);
    }

    public static PackageUserKey fromNotification(StatusBarNotification statusBarNotification) {
        return new PackageUserKey(statusBarNotification.getPackageName(), statusBarNotification.getUser());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PackageUserKey)) {
            return false;
        }
        PackageUserKey packageUserKey = (PackageUserKey) obj;
        return this.mPackageName.equals(packageUserKey.mPackageName) && this.mUser.equals(packageUserKey.mUser);
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public String toString() {
        return this.mPackageName + "#" + this.mUser;
    }

    public void update(String str, UserHandle userHandle) {
        this.mPackageName = str;
        this.mUser = userHandle;
        this.mHashCode = Arrays.hashCode(new Object[]{str, userHandle});
    }

    public boolean updateFromItemInfo(ItemInfo itemInfo) {
        if (itemInfo.getTargetComponent() == null || !W.supportsShortcuts(itemInfo)) {
            return false;
        }
        update(itemInfo.getTargetComponent().getPackageName(), itemInfo.user);
        return true;
    }
}
