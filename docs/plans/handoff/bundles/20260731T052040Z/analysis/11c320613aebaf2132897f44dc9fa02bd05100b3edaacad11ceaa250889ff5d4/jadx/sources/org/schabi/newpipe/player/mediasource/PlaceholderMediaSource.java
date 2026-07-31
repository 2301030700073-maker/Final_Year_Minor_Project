package org.schabi.newpipe.player.mediasource;

import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.CompositeMediaSource;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import org.schabi.newpipe.player.mediaitem.PlaceholderTag;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlaceholderMediaSource extends CompositeMediaSource implements ManagedMediaSource {
    public static final PlaceholderMediaSource COPY;
    public static final MediaItem MEDIA_ITEM;

    static {
        PlaceholderMediaSource placeholderMediaSource = new PlaceholderMediaSource();
        COPY = placeholderMediaSource;
        MEDIA_ITEM = RecordTag.$default$asMediaItem(new PlaceholderTag(placeholderMediaSource));
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return null;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final MediaItem getMediaItem() {
        return MEDIA_ITEM;
    }

    @Override // org.schabi.newpipe.player.mediasource.ManagedMediaSource
    public final boolean isStreamEqual(PlayQueueItem playQueueItem) {
        return false;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed */
    public final /* bridge */ /* synthetic */ void lambda$prepareChildSource$0(Object obj, MediaSource mediaSource, Timeline timeline) {
    }

    @Override // org.schabi.newpipe.player.mediasource.ManagedMediaSource
    public final boolean shouldBeReplacedWith(PlayQueueItem playQueueItem, boolean z) {
        return true;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void releasePeriod(MediaPeriod mediaPeriod) {
    }
}
