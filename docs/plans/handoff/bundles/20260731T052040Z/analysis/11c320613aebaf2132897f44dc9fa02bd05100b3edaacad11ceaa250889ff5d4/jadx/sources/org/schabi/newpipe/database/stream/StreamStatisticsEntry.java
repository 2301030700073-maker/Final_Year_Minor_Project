package org.schabi.newpipe.database.stream;

import j$.time.OffsetDateTime;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamStatisticsEntry implements LocalItem {
    public static final Companion Companion = new Companion();
    public final OffsetDateTime latestAccessDate;
    public final long progressMillis;
    public final StreamEntity streamEntity;
    public final long streamId;
    public final long watchCount;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    public StreamStatisticsEntry(StreamEntity streamEntity, long j, long j2, OffsetDateTime offsetDateTime, long j3) {
        this.streamEntity = streamEntity;
        this.progressMillis = j;
        this.streamId = j2;
        this.latestAccessDate = offsetDateTime;
        this.watchCount = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StreamStatisticsEntry)) {
            return false;
        }
        StreamStatisticsEntry streamStatisticsEntry = (StreamStatisticsEntry) obj;
        return this.streamEntity.equals(streamStatisticsEntry.streamEntity) && this.progressMillis == streamStatisticsEntry.progressMillis && this.streamId == streamStatisticsEntry.streamId && this.latestAccessDate.equals(streamStatisticsEntry.latestAccessDate) && this.watchCount == streamStatisticsEntry.watchCount;
    }

    @Override // org.schabi.newpipe.database.LocalItem
    public final LocalItem.LocalItemType getLocalItemType() {
        return LocalItem.LocalItemType.STATISTIC_STREAM_ITEM;
    }

    public final int hashCode() {
        int hashCode = this.streamEntity.hashCode() * 31;
        long j = this.progressMillis;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.streamId;
        int hashCode2 = (this.latestAccessDate.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
        long j3 = this.watchCount;
        return hashCode2 + ((int) ((j3 >>> 32) ^ j3));
    }

    public final StreamInfoItem toStreamInfoItem() {
        StreamEntity streamEntity = this.streamEntity;
        StreamInfoItem streamInfoItem = new StreamInfoItem(streamEntity.getServiceId(), streamEntity.getUrl(), streamEntity.getTitle(), streamEntity.getStreamType());
        streamInfoItem.setDuration(streamEntity.getDuration());
        streamInfoItem.setUploaderName(streamEntity.getUploader());
        streamInfoItem.setUploaderUrl(streamEntity.getUploaderUrl());
        streamInfoItem.setThumbnails(ImageStrategy.dbUrlToImageList(streamEntity.getThumbnailUrl()));
        return streamInfoItem;
    }

    public final String toString() {
        return "StreamStatisticsEntry(streamEntity=" + this.streamEntity + ", progressMillis=" + this.progressMillis + ", streamId=" + this.streamId + ", latestAccessDate=" + this.latestAccessDate + ", watchCount=" + this.watchCount + ")";
    }
}
