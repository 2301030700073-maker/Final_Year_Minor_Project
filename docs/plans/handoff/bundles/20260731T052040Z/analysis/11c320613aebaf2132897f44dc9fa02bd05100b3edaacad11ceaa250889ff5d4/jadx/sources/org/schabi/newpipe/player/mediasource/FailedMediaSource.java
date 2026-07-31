package org.schabi.newpipe.player.mediasource;

import android.util.Log;
import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.SilenceMediaSource;
import com.google.android.exoplayer2.source.SinglePeriodTimeline;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import java.io.IOException;
import java.util.ArrayList;
import org.schabi.newpipe.player.mediaitem.ExceptionTag;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FailedMediaSource extends BaseMediaSource implements ManagedMediaSource {
    public static final MediaPeriod SILENT_MEDIA = new SilenceMediaSource.Factory().setDurationUs(2000000).createMediaSource().createPeriod(null, null, 0);
    public final String TAG = "FailedMediaSource@" + Integer.toHexString(hashCode());
    public final Exception error;
    public final MediaItem mediaItem;
    public final PlayQueueItem playQueueItem;
    public final long retryTimestamp;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* loaded from: classes3.dex */
    public final class StreamInfoLoadException extends Exception {
    }

    public FailedMediaSource(PlayQueueItem playQueueItem, Exception exc, long j) {
        this.playQueueItem = playQueueItem;
        this.error = exc;
        this.retryTimestamp = j;
        Object[] objArr = {exc};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        this.mediaItem = RecordTag.$default$asMediaItem(new ExceptionTag(playQueueItem, Owner.CC.m(obj, arrayList, obj, arrayList), this));
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return SILENT_MEDIA;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // org.schabi.newpipe.player.mediasource.ManagedMediaSource
    public final boolean isStreamEqual(PlayQueueItem playQueueItem) {
        return this.playQueueItem == playQueueItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void maybeThrowSourceInfoRefreshError() {
        Exception exc = this.error;
        if (!(exc instanceof StreamInfoLoadException)) {
            throw new IOException(exc);
        }
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public final void prepareSourceInternal(TransferListener transferListener) {
        String str = this.TAG;
        Exception exc = this.error;
        Log.e(str, "Loading failed source: ", exc);
        if (exc instanceof StreamInfoLoadException) {
            refreshSourceInfo(new SinglePeriodTimeline(2000000L, true, false, false, (Object) null, this.mediaItem));
        }
    }

    @Override // org.schabi.newpipe.player.mediasource.ManagedMediaSource
    public final boolean shouldBeReplacedWith(PlayQueueItem playQueueItem, boolean z) {
        return playQueueItem != this.playQueueItem || System.currentTimeMillis() >= this.retryTimestamp;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public final void releaseSourceInternal() {
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public final void releasePeriod(MediaPeriod mediaPeriod) {
    }
}
