package org.schabi.newpipe.database.feed.model;

import j$.time.OffsetDateTime;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedLastUpdatedEntity {
    public static final Companion Companion = new Companion();
    public final OffsetDateTime lastUpdated;
    public final long subscriptionId;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public FeedLastUpdatedEntity(long j, OffsetDateTime offsetDateTime) {
        this.subscriptionId = j;
        this.lastUpdated = offsetDateTime;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedLastUpdatedEntity)) {
            return false;
        }
        FeedLastUpdatedEntity feedLastUpdatedEntity = (FeedLastUpdatedEntity) obj;
        return this.subscriptionId == feedLastUpdatedEntity.subscriptionId && Intrinsics.areEqual(this.lastUpdated, feedLastUpdatedEntity.lastUpdated);
    }

    public final int hashCode() {
        long j = this.subscriptionId;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        OffsetDateTime offsetDateTime = this.lastUpdated;
        return i + (offsetDateTime == null ? 0 : offsetDateTime.hashCode());
    }

    public final String toString() {
        return "FeedLastUpdatedEntity(subscriptionId=" + this.subscriptionId + ", lastUpdated=" + this.lastUpdated + ")";
    }
}
