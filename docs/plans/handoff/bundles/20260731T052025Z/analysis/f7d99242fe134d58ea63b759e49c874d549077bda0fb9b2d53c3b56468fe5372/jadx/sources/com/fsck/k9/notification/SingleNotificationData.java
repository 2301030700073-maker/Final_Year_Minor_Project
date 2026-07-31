package com.fsck.k9.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleNotificationData {
    public final ArrayList actions;
    public final boolean addLockScreenNotification;
    public final NotificationContent content;
    public final boolean isSilent;
    public final int notificationId;
    public final long timestamp;
    public final List wearActions;

    public SingleNotificationData(int i, boolean z, long j, NotificationContent notificationContent, ArrayList arrayList, ListBuilder listBuilder, boolean z2) {
        listBuilder.getClass();
        this.notificationId = i;
        this.isSilent = z;
        this.timestamp = j;
        this.content = notificationContent;
        this.actions = arrayList;
        this.wearActions = listBuilder;
        this.addLockScreenNotification = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SingleNotificationData)) {
            return false;
        }
        SingleNotificationData singleNotificationData = (SingleNotificationData) obj;
        return this.notificationId == singleNotificationData.notificationId && this.isSilent == singleNotificationData.isSilent && this.timestamp == singleNotificationData.timestamp && this.content.equals(singleNotificationData.content) && this.actions.equals(singleNotificationData.actions) && Intrinsics.areEqual(this.wearActions, singleNotificationData.wearActions) && this.addLockScreenNotification == singleNotificationData.addLockScreenNotification;
    }

    public final int hashCode() {
        int i = this.notificationId * 31;
        int i2 = this.isSilent ? 1231 : 1237;
        long j = this.timestamp;
        return CameraDevices$CC.m(this.wearActions, Config.CC.m(this.actions, (this.content.hashCode() + ((((i + i2) * 31) + ((int) (j ^ (j >>> 32)))) * 31)) * 31, 31), 31) + (this.addLockScreenNotification ? 1231 : 1237);
    }

    public final String toString() {
        return "SingleNotificationData(notificationId=" + this.notificationId + ", isSilent=" + this.isSilent + ", timestamp=" + this.timestamp + ", content=" + this.content + ", actions=" + this.actions + ", wearActions=" + this.wearActions + ", addLockScreenNotification=" + this.addLockScreenNotification + ")";
    }
}
