package org.schabi.newpipe.player.mediasource;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.WrappingMediaSource;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class LoadedMediaSource extends WrappingMediaSource implements ManagedMediaSource {
    public final long expireTimestamp;
    public final MediaItem mediaItem;
    public final PlayQueueItem stream;

    public LoadedMediaSource(MediaSource mediaSource, MediaItemTag mediaItemTag, PlayQueueItem playQueueItem, long j) {
        super(mediaSource);
        this.stream = playQueueItem;
        this.expireTimestamp = j;
        this.mediaItem = mediaItemTag.withExtras(this).asMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.WrappingMediaSource, com.google.android.exoplayer2.source.MediaSource
    public final MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // org.schabi.newpipe.player.mediasource.ManagedMediaSource
    public final boolean isStreamEqual(PlayQueueItem playQueueItem) {
        return this.stream == playQueueItem;
    }

    @Override // org.schabi.newpipe.player.mediasource.ManagedMediaSource
    public final boolean shouldBeReplacedWith(PlayQueueItem playQueueItem, boolean z) {
        if (playQueueItem == this.stream) {
            return z && System.currentTimeMillis() >= this.expireTimestamp;
        }
        return true;
    }
}
