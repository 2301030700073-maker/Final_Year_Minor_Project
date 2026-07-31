package com.google.android.exoplayer2;

import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.android.exoplayer2.util.ListenerSet;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayerImpl$$ExternalSyntheticLambda0 implements ListenerSet.Event {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ ExoPlayerImpl$$ExternalSyntheticLambda0(Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ExoPlayerImpl.lambda$updatePlaybackInfo$12((PlaybackInfo) obj2, i2, (Player.Listener) obj);
                break;
            case 1:
                ExoPlayerImpl.lambda$updatePlaybackInfo$22((PlaybackInfo) obj2, i2, (Player.Listener) obj);
                break;
            default:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$31((SimpleBasePlayer.State) obj2, i2, (Player.Listener) obj);
                break;
        }
    }
}
