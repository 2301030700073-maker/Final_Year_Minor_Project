package org.schabi.newpipe.database.history.model;

import j$.time.OffsetDateTime;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamHistoryEntity {
    public static final Companion Companion = new Companion();
    public OffsetDateTime accessDate;
    public long repeatCount;
    public final long streamUid;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamHistoryEntity(long j, OffsetDateTime offsetDateTime, long j2) {
        offsetDateTime.getClass();
        this.streamUid = j;
        this.accessDate = offsetDateTime;
        this.repeatCount = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamHistoryEntity)) {
            return false;
        }
        StreamHistoryEntity streamHistoryEntity = (StreamHistoryEntity) obj;
        return this.streamUid == streamHistoryEntity.streamUid && Intrinsics.areEqual(this.accessDate, streamHistoryEntity.accessDate) && this.repeatCount == streamHistoryEntity.repeatCount;
    }

    public final int hashCode() {
        long j = this.streamUid;
        int hashCode = (this.accessDate.hashCode() + (((int) (j ^ (j >>> 32))) * 31)) * 31;
        long j2 = this.repeatCount;
        return hashCode + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "StreamHistoryEntity(streamUid=" + this.streamUid + ", accessDate=" + this.accessDate + ", repeatCount=" + this.repeatCount + ")";
    }
}
