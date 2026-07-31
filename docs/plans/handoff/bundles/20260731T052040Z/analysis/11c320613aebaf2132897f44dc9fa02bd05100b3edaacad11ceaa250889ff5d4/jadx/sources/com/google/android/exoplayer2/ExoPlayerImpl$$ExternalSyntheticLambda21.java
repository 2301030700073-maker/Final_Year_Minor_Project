package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayerImplInternal;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayerImpl$$ExternalSyntheticLambda21 implements ListenerSet.Event, ListenerSet.IterationFinishedEvent, ExoPlayerImplInternal.PlaybackInfoUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ExoPlayerImpl f$0;

    public /* synthetic */ ExoPlayerImpl$$ExternalSyntheticLambda21(ExoPlayerImpl exoPlayerImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = exoPlayerImpl;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.$r8$classId;
        ExoPlayerImpl exoPlayerImpl = this.f$0;
        Player.Listener listener = (Player.Listener) obj;
        switch (i) {
            case 0:
                exoPlayerImpl.lambda$setPlaylistMetadata$7(listener);
                break;
            default:
                exoPlayerImpl.lambda$updateAvailableCommands$26(listener);
                break;
        }
    }

    @Override // com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener
    public void onPlaybackInfoUpdate(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.f$0.lambda$new$2(playbackInfoUpdate);
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        this.f$0.lambda$new$0((Player.Listener) obj, flagSet);
    }
}
