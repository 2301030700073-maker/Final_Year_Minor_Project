package org.schabi.newpipe.player.playqueue;

import io.reactivex.rxjava3.internal.operators.single.SingleDoOnError;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.Serializable;
import java.util.List;
import org.schabi.newpipe.extractor.Image;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.extractor.stream.StreamType;
import org.schabi.newpipe.util.ExtractorHelper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayQueueItem implements Serializable {
    private final long duration;
    private Throwable error;
    private boolean isAutoQueued;
    private long recoveryPosition;
    private final int serviceId;
    private final StreamType streamType;
    private final List<Image> thumbnails;
    private final String title;
    private final String uploader;
    private final String uploaderUrl;
    private final String url;

    public PlayQueueItem(StreamInfo streamInfo) {
        this(streamInfo.getName(), streamInfo.getUrl(), streamInfo.getServiceId(), streamInfo.getDuration(), streamInfo.getThumbnails(), streamInfo.getUploaderName(), streamInfo.getUploaderUrl(), streamInfo.getStreamType());
        if (streamInfo.getStartPosition() > 0) {
            this.recoveryPosition = streamInfo.getStartPosition() * 1000;
        }
    }

    public final long getDuration() {
        return this.duration;
    }

    public final long getRecoveryPosition() {
        return this.recoveryPosition;
    }

    public final int getServiceId() {
        return this.serviceId;
    }

    public final SingleDoOnError getStream() {
        return new SingleDoOnError(ExtractorHelper.getStreamInfo(this.serviceId, this.url, false).subscribeOn(Schedulers.IO), new PlayQueueItem$$ExternalSyntheticLambda0(this), 0);
    }

    public final StreamType getStreamType() {
        return this.streamType;
    }

    public final List getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getUploader() {
        return this.uploader;
    }

    public final String getUploaderUrl() {
        return this.uploaderUrl;
    }

    public final String getUrl() {
        return this.url;
    }

    public final boolean isAutoQueued() {
        return this.isAutoQueued;
    }

    public final boolean isSameItem(PlayQueueItem playQueueItem) {
        return playQueueItem != null && this.serviceId == playQueueItem.serviceId && this.url.equals(playQueueItem.url);
    }

    public final void setAutoQueued(boolean z) {
        this.isAutoQueued = z;
    }

    public final void setRecoveryPosition(long j) {
        this.recoveryPosition = j;
    }

    public PlayQueueItem(StreamInfoItem streamInfoItem) {
        this(streamInfoItem.getName(), streamInfoItem.getUrl(), streamInfoItem.getServiceId(), streamInfoItem.getDuration(), streamInfoItem.getThumbnails(), streamInfoItem.getUploaderName(), streamInfoItem.getUploaderUrl(), streamInfoItem.getStreamType());
    }

    public PlayQueueItem(String str, String str2, int i, long j, List list, String str3, String str4, StreamType streamType) {
        this.title = str == null ? "" : str;
        this.url = str2 == null ? "" : str2;
        this.serviceId = i;
        this.duration = j;
        this.thumbnails = list;
        this.uploader = str3 == null ? "" : str3;
        this.uploaderUrl = str4;
        this.streamType = streamType;
        this.recoveryPosition = Long.MIN_VALUE;
    }
}
