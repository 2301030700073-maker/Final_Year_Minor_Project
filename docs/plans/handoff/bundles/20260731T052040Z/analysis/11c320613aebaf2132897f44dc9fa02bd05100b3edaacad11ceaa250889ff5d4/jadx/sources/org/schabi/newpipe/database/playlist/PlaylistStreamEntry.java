package org.schabi.newpipe.database.playlist;

import androidx.compose.ui.Modifier;
import org.schabi.newpipe.database.LocalItem;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistStreamEntry implements LocalItem {
    public final int joinIndex;
    public final long progressMillis;
    public final StreamEntity streamEntity;
    public final long streamId;

    public PlaylistStreamEntry(StreamEntity streamEntity, long j, long j2, int i) {
        this.streamEntity = streamEntity;
        this.progressMillis = j;
        this.streamId = j2;
        this.joinIndex = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaylistStreamEntry)) {
            return false;
        }
        PlaylistStreamEntry playlistStreamEntry = (PlaylistStreamEntry) obj;
        return this.streamEntity.equals(playlistStreamEntry.streamEntity) && this.progressMillis == playlistStreamEntry.progressMillis && this.streamId == playlistStreamEntry.streamId && this.joinIndex == playlistStreamEntry.joinIndex;
    }

    @Override // org.schabi.newpipe.database.LocalItem
    public final LocalItem.LocalItemType getLocalItemType() {
        return LocalItem.LocalItemType.PLAYLIST_STREAM_ITEM;
    }

    public final int hashCode() {
        int hashCode = this.streamEntity.hashCode() * 31;
        long j = this.progressMillis;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.streamId;
        return ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.joinIndex;
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
        StringBuilder sb = new StringBuilder("PlaylistStreamEntry(streamEntity=");
        sb.append(this.streamEntity);
        sb.append(", progressMillis=");
        sb.append(this.progressMillis);
        sb.append(", streamId=");
        sb.append(this.streamId);
        sb.append(", joinIndex=");
        return Modifier.CC.m(sb, this.joinIndex, ")");
    }
}
