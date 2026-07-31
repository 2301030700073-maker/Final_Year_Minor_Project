package org.schabi.newpipe.player.helper;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.jsoup.parser.TagSet$$ExternalSyntheticLambda1;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.event.PlayerEventListener;
import org.schabi.newpipe.player.event.PlayerServiceExtendedEventListener;
import org.schabi.newpipe.player.helper.PlayerHolder;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class PlayerHolder$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PlayerHolder$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        PlayQueue playQueue;
        PlayQueue playQueue2;
        PlayQueue playQueue3;
        PlayQueue playQueue4;
        int i = this.$r8$classId;
        int i2 = 24;
        int i3 = 0;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Player player = (Player) obj;
                if (player.fragmentListener == ((PlayerHolder) obj2).internalListener) {
                    player.fragmentListener = null;
                    break;
                }
                break;
            case 1:
                PlayerHolder playerHolder = (PlayerHolder) obj2;
                Player player2 = (Player) obj;
                PlayerHolder.PlayerServiceConnection playerServiceConnection = playerHolder.serviceConnection;
                PlayerServiceExtendedEventListener playerServiceExtendedEventListener = playerHolder.listener;
                if (playerServiceExtendedEventListener != null) {
                    if (player2 != null) {
                        ((VideoDetailFragment) playerServiceExtendedEventListener).onPlayerConnected(player2, playerServiceConnection.playAfterConnect);
                        playerServiceConnection.playAfterConnect = false;
                        player2.fragmentListener = playerHolder.internalListener;
                        player2.UIs.call(new TagSet$$ExternalSyntheticLambda1(i2));
                        PlayerHolder.AnonymousClass1 anonymousClass1 = player2.fragmentListener;
                        if (anonymousClass1 != null && (playQueue2 = player2.playQueue) != null) {
                            anonymousClass1.onQueueUpdate(playQueue2);
                        }
                        PlayerEventListener playerEventListener = player2.activityListener;
                        if (playerEventListener != null && (playQueue = player2.playQueue) != null) {
                            playerEventListener.onQueueUpdate(playQueue);
                        }
                        player2.getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda0(player2, i3));
                        player2.notifyPlaybackUpdateToListeners();
                        player2.triggerProgressUpdate();
                        break;
                    } else {
                        VideoDetailFragment videoDetailFragment = (VideoDetailFragment) playerServiceExtendedEventListener;
                        videoDetailFragment.player = null;
                        if (videoDetailFragment.binding != null) {
                            videoDetailFragment.restoreDefaultBrightness();
                            break;
                        }
                    }
                }
                break;
            case 2:
                Player player3 = (Player) obj;
                player3.fragmentListener = ((PlayerHolder) obj2).internalListener;
                player3.UIs.call(new TagSet$$ExternalSyntheticLambda1(i2));
                PlayerHolder.AnonymousClass1 anonymousClass12 = player3.fragmentListener;
                if (anonymousClass12 != null && (playQueue4 = player3.playQueue) != null) {
                    anonymousClass12.onQueueUpdate(playQueue4);
                }
                PlayerEventListener playerEventListener2 = player3.activityListener;
                if (playerEventListener2 != null && (playQueue3 = player3.playQueue) != null) {
                    playerEventListener2.onQueueUpdate(playQueue3);
                }
                player3.getCurrentStreamInfo().ifPresent(new Player$$ExternalSyntheticLambda0(player3, i3));
                player3.notifyPlaybackUpdateToListeners();
                player3.triggerProgressUpdate();
                break;
            default:
                PlaybackParameterDialog playbackParameterDialog = (PlaybackParameterDialog) obj2;
                if (!((Boolean) obj).booleanValue()) {
                    double d = playbackParameterDialog.tempo;
                    double d2 = playbackParameterDialog.pitchPercent;
                    if (d != d2) {
                        double min = Math.min(d, d2);
                        playbackParameterDialog.setAndUpdateTempo(min);
                        playbackParameterDialog.setAndUpdatePitch(min);
                        playbackParameterDialog.updateCallback();
                        break;
                    }
                }
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
