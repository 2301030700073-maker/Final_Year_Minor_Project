package com.android.launcher3.dot;

import com.android.launcher3.notification.NotificationKeyData;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class DotInfo {
    public final List mNotificationKeys = new ArrayList();
    public int mTotalCount;

    public boolean addOrUpdateNotificationKey(NotificationKeyData notificationKeyData) {
        int indexOf = this.mNotificationKeys.indexOf(notificationKeyData);
        NotificationKeyData notificationKeyData2 = indexOf == -1 ? null : (NotificationKeyData) this.mNotificationKeys.get(indexOf);
        if (notificationKeyData2 == null) {
            boolean add = this.mNotificationKeys.add(notificationKeyData);
            if (add) {
                this.mTotalCount += notificationKeyData.count;
            }
            return add;
        }
        int i = notificationKeyData2.count;
        int i2 = notificationKeyData.count;
        if (i == i2) {
            return false;
        }
        int i3 = this.mTotalCount - i;
        this.mTotalCount = i3;
        this.mTotalCount = i3 + i2;
        notificationKeyData2.count = i2;
        return true;
    }

    public int getNotificationCount() {
        return Math.min(this.mTotalCount, 999);
    }

    public String toString() {
        return Integer.toString(this.mTotalCount);
    }
}
