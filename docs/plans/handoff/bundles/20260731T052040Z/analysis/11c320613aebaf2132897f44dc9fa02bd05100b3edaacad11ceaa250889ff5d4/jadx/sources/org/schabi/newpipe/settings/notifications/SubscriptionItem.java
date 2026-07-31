package org.schabi.newpipe.settings.notifications;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SubscriptionItem {
    private final long id;
    private final int notificationMode;
    private final int serviceId;
    private final String title;
    private final String url;

    public SubscriptionItem(long j, String str, int i, int i2, String str2) {
        str.getClass();
        str2.getClass();
        this.id = j;
        this.title = str;
        this.notificationMode = i;
        this.serviceId = i2;
        this.url = str2;
    }

    public static /* synthetic */ SubscriptionItem copy$default(SubscriptionItem subscriptionItem, long j, String str, int i, int i2, String str2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            j = subscriptionItem.id;
        }
        long j2 = j;
        if ((i3 & 2) != 0) {
            str = subscriptionItem.title;
        }
        String str3 = str;
        if ((i3 & 4) != 0) {
            i = subscriptionItem.notificationMode;
        }
        int i4 = i;
        if ((i3 & 8) != 0) {
            i2 = subscriptionItem.serviceId;
        }
        int i5 = i2;
        if ((i3 & 16) != 0) {
            str2 = subscriptionItem.url;
        }
        return subscriptionItem.copy(j2, str3, i4, i5, str2);
    }

    public final long component1() {
        return this.id;
    }

    public final String component2() {
        return this.title;
    }

    public final int component3() {
        return this.notificationMode;
    }

    public final int component4() {
        return this.serviceId;
    }

    public final String component5() {
        return this.url;
    }

    public final SubscriptionItem copy(long j, String str, int i, int i2, String str2) {
        str.getClass();
        str2.getClass();
        return new SubscriptionItem(j, str, i, i2, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubscriptionItem)) {
            return false;
        }
        SubscriptionItem subscriptionItem = (SubscriptionItem) obj;
        return this.id == subscriptionItem.id && Intrinsics.areEqual(this.title, subscriptionItem.title) && this.notificationMode == subscriptionItem.notificationMode && this.serviceId == subscriptionItem.serviceId && Intrinsics.areEqual(this.url, subscriptionItem.url);
    }

    public final long getId() {
        return this.id;
    }

    public final int getNotificationMode() {
        return this.notificationMode;
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        long j = this.id;
        return this.url.hashCode() + ((((Modifier.CC.m(((int) (j ^ (j >>> 32))) * 31, 31, this.title) + this.notificationMode) * 31) + this.serviceId) * 31);
    }

    public String toString() {
        return "SubscriptionItem(id=" + this.id + ", title=" + this.title + ", notificationMode=" + this.notificationMode + ", serviceId=" + this.serviceId + ", url=" + this.url + ")";
    }

    public static /* synthetic */ void getNotificationMode$annotations() {
    }
}
