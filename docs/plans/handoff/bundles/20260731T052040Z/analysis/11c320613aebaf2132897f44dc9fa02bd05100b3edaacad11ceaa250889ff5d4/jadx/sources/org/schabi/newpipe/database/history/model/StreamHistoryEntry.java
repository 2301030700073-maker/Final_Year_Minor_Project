package org.schabi.newpipe.database.history.model;

import androidx.compose.ui.Modifier;
import j$.time.OffsetDateTime;
import org.schabi.newpipe.database.stream.model.StreamEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamHistoryEntry {
    public final OffsetDateTime accessDate;
    public final long repeatCount;
    public final StreamEntity streamEntity;
    public final long streamId;

    public StreamHistoryEntry(StreamEntity streamEntity, long j, OffsetDateTime offsetDateTime, long j2) {
        this.streamEntity = streamEntity;
        this.streamId = j;
        this.accessDate = offsetDateTime;
        this.repeatCount = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamHistoryEntry)) {
            return false;
        }
        StreamHistoryEntry streamHistoryEntry = (StreamHistoryEntry) obj;
        return this.streamEntity.equals(streamHistoryEntry.streamEntity) && this.streamId == streamHistoryEntry.streamId && this.accessDate.equals(streamHistoryEntry.accessDate) && this.repeatCount == streamHistoryEntry.repeatCount;
    }

    public final int hashCode() {
        int hashCode = this.streamEntity.hashCode() * 31;
        long j = this.streamId;
        int hashCode2 = (this.accessDate.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31)) * 31;
        long j2 = this.repeatCount;
        return hashCode2 + ((int) ((j2 >>> 32) ^ j2));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StreamHistoryEntry(streamEntity=");
        sb.append(this.streamEntity);
        sb.append(", streamId=");
        sb.append(this.streamId);
        sb.append(", accessDate=");
        sb.append(this.accessDate);
        sb.append(", repeatCount=");
        return Modifier.CC.m(this.repeatCount, ")", sb);
    }
}
