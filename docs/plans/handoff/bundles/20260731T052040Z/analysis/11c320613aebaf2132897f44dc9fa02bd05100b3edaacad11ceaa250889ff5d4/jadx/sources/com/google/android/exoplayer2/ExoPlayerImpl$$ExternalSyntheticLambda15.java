package com.google.android.exoplayer2;

import com.google.android.exoplayer2.ExoPlayerImpl;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.util.concurrent.AsyncFunction;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayerImpl$$ExternalSyntheticLambda15 implements ListenerSet.Event, AsyncFunction, ListenerSet.IterationFinishedEvent {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ExoPlayerImpl$$ExternalSyntheticLambda15(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((Player.Listener) obj).onAudioAttributesChanged((AudioAttributes) obj2);
                break;
            case 1:
                ((Player.Listener) obj).onTrackSelectionParametersChanged((TrackSelectionParameters) obj2);
                break;
            case 2:
                ((Player.Listener) obj).onCues((List<Cue>) obj2);
                break;
            case 3:
                ((Player.Listener) obj).onCues((CueGroup) obj2);
                break;
            case 4:
                ((ExoPlayerImpl.ComponentListener) obj2).lambda$onMetadata$4((Player.Listener) obj);
                break;
            case 5:
                ((Player.Listener) obj).onMetadata((Metadata) obj2);
                break;
            case 6:
                ((Player.Listener) obj).onDeviceInfoChanged((DeviceInfo) obj2);
                break;
            case 7:
                ((Player.Listener) obj).onVideoSizeChanged((VideoSize) obj2);
                break;
            default:
                ((Player.Listener) obj).onTracksChanged((Tracks) obj2);
                break;
        }
    }

    @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
    public void invoke(Object obj, FlagSet flagSet) {
        ((SimpleBasePlayer) this.f$0).lambda$new$0((Player.Listener) obj, flagSet);
    }
}
