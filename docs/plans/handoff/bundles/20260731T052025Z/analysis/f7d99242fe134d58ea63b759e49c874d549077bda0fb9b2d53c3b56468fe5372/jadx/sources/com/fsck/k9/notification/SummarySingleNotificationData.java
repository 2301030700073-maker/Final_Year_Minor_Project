package com.fsck.k9.notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SummarySingleNotificationData implements SummaryNotificationData {
    public final SingleNotificationData singleNotificationData;

    public SummarySingleNotificationData(SingleNotificationData singleNotificationData) {
        this.singleNotificationData = singleNotificationData;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SummarySingleNotificationData) && this.singleNotificationData.equals(((SummarySingleNotificationData) obj).singleNotificationData);
    }

    public final int hashCode() {
        return this.singleNotificationData.hashCode();
    }

    public final String toString() {
        return "SummarySingleNotificationData(singleNotificationData=" + this.singleNotificationData + ")";
    }
}
