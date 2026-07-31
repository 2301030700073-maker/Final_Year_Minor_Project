package org.schabi.newpipe.database.subscription;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionEntity {
    public static final Companion Companion = new Companion();
    public String avatarUrl;
    public String description;
    public String name;
    public int notificationMode;
    public int serviceId;
    public Long subscriberCount;
    public long uid;
    public String url;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public /* synthetic */ SubscriptionEntity(int i, String str, String str2, String str3, Long l, String str4, int i2) {
        this(0L, (i2 & 2) != 0 ? -1 : i, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? null : l, (i2 & 64) != 0 ? null : str4, 0);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SubscriptionEntity)) {
            return false;
        }
        SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
        return this.uid == subscriptionEntity.uid && this.serviceId == subscriptionEntity.serviceId && Intrinsics.areEqual(this.url, subscriptionEntity.url) && Intrinsics.areEqual(this.name, subscriptionEntity.name) && Intrinsics.areEqual(this.avatarUrl, subscriptionEntity.avatarUrl) && Intrinsics.areEqual(this.subscriberCount, subscriptionEntity.subscriberCount) && Intrinsics.areEqual(this.description, subscriptionEntity.description) && this.notificationMode == subscriptionEntity.notificationMode;
    }

    public final int hashCode() {
        long j = this.uid;
        int i = ((((int) (j ^ (j >>> 32))) * 31) + this.serviceId) * 31;
        String str = this.url;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatarUrl;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l = this.subscriberCount;
        int hashCode4 = (hashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        String str4 = this.description;
        return ((hashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31) + this.notificationMode;
    }

    public final String toString() {
        return "SubscriptionEntity(uid=" + this.uid + ", serviceId=" + this.serviceId + ", url=" + this.url + ", name=" + this.name + ", avatarUrl=" + this.avatarUrl + ", subscriberCount=" + this.subscriberCount + ", description=" + this.description + ", notificationMode=" + this.notificationMode + ")";
    }

    public SubscriptionEntity(long j, int i, String str, String str2, String str3, Long l, String str4, int i2) {
        this.uid = j;
        this.serviceId = i;
        this.url = str;
        this.name = str2;
        this.avatarUrl = str3;
        this.subscriberCount = l;
        this.description = str4;
        this.notificationMode = i2;
    }
}
