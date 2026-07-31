package org.schabi.newpipe.player.event;

import com.google.android.exoplayer2.PlaybackParameters;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public interface PlayerEventListener {
    void onAudioTrackUpdate();

    void onMetadataUpdate(StreamInfo streamInfo, PlayQueue playQueue);

    void onPlaybackUpdate(int i, int i2, boolean z, PlaybackParameters playbackParameters);

    void onProgressUpdate(int i, int i2, int i3);

    void onQueueUpdate(PlayQueue playQueue);

    void onServiceStopped();
}
