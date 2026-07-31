package org.schabi.newpipe.player;

import androidx.compose.ui.node.Owner;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.List;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda5 implements DefaultTrackSelector.TrackInfo.Factory, Consumer {
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ Player$$ExternalSyntheticLambda5(Object obj, Object obj2, boolean z) {
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = z;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        Player player = (Player) this.f$0;
        TimestampChangeData timestampChangeData = (TimestampChangeData) this.f$1;
        StreamInfo streamInfo = (StreamInfo) obj;
        PlayQueue playQueue = player.playQueue;
        int i = timestampChangeData.seconds;
        streamInfo.setStartPosition(i);
        PlayQueueItem playQueueItem = new PlayQueueItem(streamInfo);
        boolean z = this.f$2;
        if (playQueue != null && playQueueItem.isSameItem(playQueue.getItem())) {
            if (player.simpleExoPlayer.getPlaybackState() == 1) {
                player.simpleExoPlayer.prepare();
            }
            player.simpleExoPlayer.seekTo(playQueue.getIndex(), i * 1000);
            player.simpleExoPlayer.setPlayWhenReady(z);
            return;
        }
        if (playQueue == null) {
            Object[] objArr = {playQueueItem};
            ArrayList arrayList = new ArrayList(1);
            Object obj2 = objArr[0];
            playQueue = new SinglePlayQueue(0, Owner.CC.m(obj2, arrayList, obj2, arrayList));
        } else {
            playQueue.enqueueNext(playQueueItem, true);
            playQueue.offsetIndex(1);
        }
        player.initPlayback(playQueue, z);
    }

    @Override // com.google.android.exoplayer2.trackselection.DefaultTrackSelector.TrackInfo.Factory
    public List create(int i, TrackGroup trackGroup, int[] iArr) {
        List lambda$selectAudioTrack$3;
        lambda$selectAudioTrack$3 = ((DefaultTrackSelector) this.f$0).lambda$selectAudioTrack$3((DefaultTrackSelector.Parameters) this.f$1, this.f$2, i, trackGroup, iArr);
        return lambda$selectAudioTrack$3;
    }
}
