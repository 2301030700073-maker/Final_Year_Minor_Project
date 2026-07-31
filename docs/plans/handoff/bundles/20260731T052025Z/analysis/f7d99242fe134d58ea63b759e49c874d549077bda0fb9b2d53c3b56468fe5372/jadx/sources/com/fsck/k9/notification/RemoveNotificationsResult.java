package com.fsck.k9.notification;

import androidx.camera.core.impl.Config;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoveNotificationsResult {
    public final ArrayList cancelNotificationIds;
    public final NotificationData notificationData;
    public final ArrayList notificationHolders;
    public final ArrayList notificationStoreOperations;

    public RemoveNotificationsResult(NotificationData notificationData, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3) {
        this.notificationData = notificationData;
        this.notificationStoreOperations = arrayList;
        this.notificationHolders = arrayList2;
        this.cancelNotificationIds = arrayList3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RemoveNotificationsResult)) {
            return false;
        }
        RemoveNotificationsResult removeNotificationsResult = (RemoveNotificationsResult) obj;
        return this.notificationData.equals(removeNotificationsResult.notificationData) && this.notificationStoreOperations.equals(removeNotificationsResult.notificationStoreOperations) && this.notificationHolders.equals(removeNotificationsResult.notificationHolders) && this.cancelNotificationIds.equals(removeNotificationsResult.cancelNotificationIds);
    }

    public final int hashCode() {
        return this.cancelNotificationIds.hashCode() + Config.CC.m(this.notificationHolders, Config.CC.m(this.notificationStoreOperations, this.notificationData.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "RemoveNotificationsResult(notificationData=" + this.notificationData + ", notificationStoreOperations=" + this.notificationStoreOperations + ", notificationHolders=" + this.notificationHolders + ", cancelNotificationIds=" + this.cancelNotificationIds + ")";
    }
}
