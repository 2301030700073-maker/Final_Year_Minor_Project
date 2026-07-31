package org.schabi.newpipe.player;

import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.utils.Pair;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PlayQueueActivity$$ExternalSyntheticLambda4 implements Consumer {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ PlayQueueActivity$$ExternalSyntheticLambda4(int i, ArrayList arrayList) {
        this.f$1 = i;
        this.f$0 = arrayList;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        int i2 = this.f$1;
        switch (i) {
            case 0:
                PlayQueueActivity playQueueActivity = (PlayQueueActivity) obj2;
                MediaItemTag.AudioTrack audioTrack = (MediaItemTag.AudioTrack) obj;
                int i3 = PlayQueueActivity.$r8$clinit;
                List list = audioTrack.audioStreams;
                if (audioTrack.selectedAudioStreamIndex != i2 && list.size() > i2) {
                    String audioTrackId = ((AudioStream) list.get(i2)).getAudioTrackId();
                    Player player = playQueueActivity.player;
                    player.saveStreamProgressState();
                    player.setRecovery();
                    player.videoResolver.audioTrack = audioTrackId;
                    player.audioResolver.settings = audioTrackId;
                    player.reloadPlayQueueManager();
                    break;
                }
                break;
            default:
                ArrayList arrayList = (ArrayList) obj2;
                Map.Entry entry = (Map.Entry) obj;
                Pair pair = (Pair) entry.getValue();
                if (((Integer) pair.getFirst()).intValue() >= i2) {
                    pair.setFirst(Integer.valueOf(((Integer) pair.getFirst()).intValue() - i2));
                    break;
                } else {
                    arrayList.add(entry);
                    break;
                }
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public /* synthetic */ PlayQueueActivity$$ExternalSyntheticLambda4(PlayQueueActivity playQueueActivity, int i) {
        this.f$0 = playQueueActivity;
        this.f$1 = i;
    }
}
