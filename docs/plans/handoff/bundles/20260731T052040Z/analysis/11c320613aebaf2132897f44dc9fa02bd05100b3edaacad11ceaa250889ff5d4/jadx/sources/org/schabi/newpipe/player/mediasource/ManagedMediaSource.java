package org.schabi.newpipe.player.mediasource;

import com.google.android.exoplayer2.source.MediaSource;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface ManagedMediaSource extends MediaSource {
    boolean isStreamEqual(PlayQueueItem playQueueItem);

    boolean shouldBeReplacedWith(PlayQueueItem playQueueItem, boolean z);
}
