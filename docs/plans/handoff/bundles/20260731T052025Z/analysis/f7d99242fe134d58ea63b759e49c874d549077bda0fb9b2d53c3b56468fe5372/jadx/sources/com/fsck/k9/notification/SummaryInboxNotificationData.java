package com.fsck.k9.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SummaryInboxNotificationData implements SummaryNotificationData {
    public final List actions;
    public final int additionalMessagesCount;
    public final List content;
    public final boolean isSilent;
    public final ArrayList messageReferences;
    public final int notificationId;
    public final long timestamp;
    public final List wearActions;

    public SummaryInboxNotificationData(int i, boolean z, long j, List list, int i2, ArrayList arrayList, ListBuilder listBuilder, ListBuilder listBuilder2) {
        listBuilder.getClass();
        listBuilder2.getClass();
        this.notificationId = i;
        this.isSilent = z;
        this.timestamp = j;
        this.content = list;
        this.additionalMessagesCount = i2;
        this.messageReferences = arrayList;
        this.actions = listBuilder;
        this.wearActions = listBuilder2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SummaryInboxNotificationData)) {
            return false;
        }
        SummaryInboxNotificationData summaryInboxNotificationData = (SummaryInboxNotificationData) obj;
        return this.notificationId == summaryInboxNotificationData.notificationId && this.isSilent == summaryInboxNotificationData.isSilent && this.timestamp == summaryInboxNotificationData.timestamp && this.content.equals(summaryInboxNotificationData.content) && this.additionalMessagesCount == summaryInboxNotificationData.additionalMessagesCount && this.messageReferences.equals(summaryInboxNotificationData.messageReferences) && Intrinsics.areEqual(this.actions, summaryInboxNotificationData.actions) && Intrinsics.areEqual(this.wearActions, summaryInboxNotificationData.wearActions);
    }

    public final int hashCode() {
        int i = this.notificationId * 31;
        int i2 = this.isSilent ? 1231 : 1237;
        long j = this.timestamp;
        return this.wearActions.hashCode() + CameraDevices$CC.m(this.actions, Config.CC.m(this.messageReferences, (CameraDevices$CC.m(this.content, (((i + i2) * 31) + ((int) (j ^ (j >>> 32)))) * 31, 31) + this.additionalMessagesCount) * 31, 31), 31);
    }

    public final String toString() {
        return "SummaryInboxNotificationData(notificationId=" + this.notificationId + ", isSilent=" + this.isSilent + ", timestamp=" + this.timestamp + ", content=" + this.content + ", additionalMessagesCount=" + this.additionalMessagesCount + ", messageReferences=" + this.messageReferences + ", actions=" + this.actions + ", wearActions=" + this.wearActions + ")";
    }
}
