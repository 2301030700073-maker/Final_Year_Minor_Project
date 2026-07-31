package com.fsck.k9.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.preference.LockScreenNotificationVisibility;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationData {
    public final LegacyAccountDto account;
    public final List activeNotifications;
    public final List inactiveNotifications;
    public final LockScreenNotificationVisibility lockScreenNotificationVisibility;

    public NotificationData(LegacyAccountDto legacyAccountDto, List list, List list2, LockScreenNotificationVisibility lockScreenNotificationVisibility) {
        legacyAccountDto.getClass();
        lockScreenNotificationVisibility.getClass();
        this.account = legacyAccountDto;
        this.activeNotifications = list;
        this.inactiveNotifications = list2;
        this.lockScreenNotificationVisibility = lockScreenNotificationVisibility;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
    public static NotificationData copy$default(NotificationData notificationData, ArrayList arrayList, List list, int i) {
        LegacyAccountDto legacyAccountDto = notificationData.account;
        ArrayList arrayList2 = arrayList;
        if ((i & 2) != 0) {
            arrayList2 = notificationData.activeNotifications;
        }
        if ((i & 4) != 0) {
            list = notificationData.inactiveNotifications;
        }
        LockScreenNotificationVisibility lockScreenNotificationVisibility = notificationData.lockScreenNotificationVisibility;
        legacyAccountDto.getClass();
        lockScreenNotificationVisibility.getClass();
        return new NotificationData(legacyAccountDto, arrayList2, list, lockScreenNotificationVisibility);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationData)) {
            return false;
        }
        NotificationData notificationData = (NotificationData) obj;
        return Intrinsics.areEqual(this.account, notificationData.account) && this.activeNotifications.equals(notificationData.activeNotifications) && this.inactiveNotifications.equals(notificationData.inactiveNotifications) && this.lockScreenNotificationVisibility == notificationData.lockScreenNotificationVisibility;
    }

    public final ListBuilder getMessageReferences() {
        List list = this.activeNotifications;
        int size = list.size();
        List list2 = this.inactiveNotifications;
        ListBuilder listBuilder = new ListBuilder(list2.size() + size);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            listBuilder.add(((NotificationHolder) it.next()).content.messageReference);
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            listBuilder.add(((InactiveNotificationHolder) it2.next()).content.messageReference);
        }
        return IntOffsetKt.build(listBuilder);
    }

    public final int hashCode() {
        return this.lockScreenNotificationVisibility.hashCode() + CameraDevices$CC.m(this.inactiveNotifications, CameraDevices$CC.m(this.activeNotifications, this.account.uuid.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        return "NotificationData(account=" + this.account + ", activeNotifications=" + this.activeNotifications + ", inactiveNotifications=" + this.inactiveNotifications + ", lockScreenNotificationVisibility=" + this.lockScreenNotificationVisibility + ")";
    }
}
