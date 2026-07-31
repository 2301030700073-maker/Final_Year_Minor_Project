package com.fsck.k9.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NewMailNotificationData {
    public final BaseNotificationData baseNotificationData;
    public final List cancelNotificationIds;
    public final List singleNotificationData;
    public final SummaryNotificationData summaryNotificationData;

    public NewMailNotificationData(List list, BaseNotificationData baseNotificationData, List list2, SummaryNotificationData summaryNotificationData) {
        list.getClass();
        this.cancelNotificationIds = list;
        this.baseNotificationData = baseNotificationData;
        this.singleNotificationData = list2;
        this.summaryNotificationData = summaryNotificationData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NewMailNotificationData)) {
            return false;
        }
        NewMailNotificationData newMailNotificationData = (NewMailNotificationData) obj;
        return Intrinsics.areEqual(this.cancelNotificationIds, newMailNotificationData.cancelNotificationIds) && this.baseNotificationData.equals(newMailNotificationData.baseNotificationData) && this.singleNotificationData.equals(newMailNotificationData.singleNotificationData) && Intrinsics.areEqual(this.summaryNotificationData, newMailNotificationData.summaryNotificationData);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(this.singleNotificationData, (this.baseNotificationData.hashCode() + (this.cancelNotificationIds.hashCode() * 31)) * 31, 31);
        SummaryNotificationData summaryNotificationData = this.summaryNotificationData;
        return m + (summaryNotificationData == null ? 0 : summaryNotificationData.hashCode());
    }

    public final String toString() {
        return "NewMailNotificationData(cancelNotificationIds=" + this.cancelNotificationIds + ", baseNotificationData=" + this.baseNotificationData + ", singleNotificationData=" + this.singleNotificationData + ", summaryNotificationData=" + this.summaryNotificationData + ")";
    }
}
