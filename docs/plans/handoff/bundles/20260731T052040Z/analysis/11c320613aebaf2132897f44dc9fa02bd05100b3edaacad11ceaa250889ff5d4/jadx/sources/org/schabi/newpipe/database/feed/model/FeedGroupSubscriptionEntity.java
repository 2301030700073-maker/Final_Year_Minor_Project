package org.schabi.newpipe.database.feed.model;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedGroupSubscriptionEntity {
    public static final Companion Companion = new Companion();
    public long feedGroupId;
    public long subscriptionId;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedGroupSubscriptionEntity)) {
            return false;
        }
        FeedGroupSubscriptionEntity feedGroupSubscriptionEntity = (FeedGroupSubscriptionEntity) obj;
        return this.feedGroupId == feedGroupSubscriptionEntity.feedGroupId && this.subscriptionId == feedGroupSubscriptionEntity.subscriptionId;
    }

    public final int hashCode() {
        long j = this.feedGroupId;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.subscriptionId;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }

    public final String toString() {
        return Modifier.CC.m(this.subscriptionId, ")", Modifier.CC.m(this.feedGroupId, "FeedGroupSubscriptionEntity(feedGroupId=", ", subscriptionId="));
    }
}
