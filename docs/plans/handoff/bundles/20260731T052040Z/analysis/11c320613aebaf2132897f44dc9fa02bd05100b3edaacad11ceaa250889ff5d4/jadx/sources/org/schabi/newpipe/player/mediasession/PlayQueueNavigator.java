package org.schabi.newpipe.player.mediasession;

import android.net.Uri;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.session.MediaSessionCompat;
import com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector;
import com.google.android.exoplayer2.util.Util;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.Collections;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.util.image.ImageStrategy;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlayQueueNavigator implements MediaSessionConnector.QueueNavigator {
    public long activeQueueItemId = -1;
    public final MediaSessionCompat mediaSession;
    public final Player player;

    public PlayQueueNavigator(MediaSessionCompat mediaSessionCompat, Player player) {
        this.mediaSession = mediaSessionCompat;
        this.player = player;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final long getActiveQueueItemId(com.google.android.exoplayer2.Player player) {
        return ((Integer) Optional.ofNullable(this.player.playQueue).map(new Player$$ExternalSyntheticLambda28(21)).orElse(-1)).intValue();
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final long getSupportedQueueNavigatorActions(com.google.android.exoplayer2.Player player) {
        return MediaSessionConnector.QueueNavigator.ACTIONS;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.CommandReceiver
    public final boolean onCommand(com.google.android.exoplayer2.Player player, String str, Bundle bundle, ResultReceiver resultReceiver) {
        return false;
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final void onCurrentMediaItemIndexChanged(com.google.android.exoplayer2.Player player) {
        if (this.activeQueueItemId == -1 || player.getCurrentTimeline().getWindowCount() > 10) {
            publishFloatingQueueWindow();
        } else {
            if (player.getCurrentTimeline().isEmpty()) {
                return;
            }
            this.activeQueueItemId = player.getCurrentMediaItemIndex();
        }
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final void onSkipToNext(com.google.android.exoplayer2.Player player) {
        this.player.playNext();
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final void onSkipToPrevious(com.google.android.exoplayer2.Player player) {
        this.player.playPrevious();
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final void onSkipToQueueItem(com.google.android.exoplayer2.Player player, long j) {
        Player player2 = this.player;
        PlayQueue playQueue = player2.playQueue;
        if (playQueue != null) {
            player2.selectQueueItem(playQueue.getItem((int) j));
        }
    }

    @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.QueueNavigator
    public final void onTimelineChanged(com.google.android.exoplayer2.Player player) {
        publishFloatingQueueWindow();
    }

    public final void publishFloatingQueueWindow() {
        PlayQueueItem item;
        Uri uri;
        MediaDescriptionCompat mediaDescriptionCompat;
        Player player = this.player;
        int intValue = ((Integer) Optional.ofNullable(player.playQueue).map(new Player$$ExternalSyntheticLambda28(19)).orElse(0)).intValue();
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        if (intValue == 0) {
            mediaSessionCompat.setQueue(Collections.EMPTY_LIST);
            this.activeQueueItemId = -1L;
            return;
        }
        int index = player.playQueue.getIndex();
        int min = Math.min(10, intValue);
        int constrainValue = Util.constrainValue(index - ((min - 1) / 2), 0, intValue - min);
        ArrayList arrayList = new ArrayList();
        for (int i = constrainValue; i < constrainValue + min; i++) {
            PlayQueue playQueue = player.playQueue;
            if (playQueue == null || (item = playQueue.getItem(i)) == null) {
                mediaDescriptionCompat = null;
            } else {
                String valueOf = String.valueOf(i);
                String title = item.getTitle();
                String uploader = item.getUploader();
                Bundle bundle = new Bundle();
                bundle.putString("android.media.metadata.TITLE", item.getTitle());
                bundle.putString("android.media.metadata.ARTIST", item.getUploader());
                bundle.putLong("android.media.metadata.DURATION", item.getDuration() * 1000);
                bundle.putLong("android.media.metadata.TRACK_NUMBER", i + 1);
                bundle.putLong("android.media.metadata.NUM_TRACKS", player.playQueue.size());
                try {
                    uri = Uri.parse(ImageStrategy.choosePreferredImage(item.getThumbnails()));
                } catch (Throwable unused) {
                    uri = null;
                }
                mediaDescriptionCompat = new MediaDescriptionCompat(valueOf, title, uploader, null, null, uri, bundle, null);
            }
            arrayList.add(new MediaSessionCompat.QueueItem(null, mediaDescriptionCompat, i));
        }
        mediaSessionCompat.setQueue(arrayList);
        this.activeQueueItemId = index;
    }
}
