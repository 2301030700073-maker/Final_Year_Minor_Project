package org.schabi.newpipe.player;

import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda7 implements Consumer, Action {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Player f$0;
    public final /* synthetic */ PlayQueue f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ Player$$ExternalSyntheticLambda7(Player player, PlayQueue playQueue, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = player;
        this.f$1 = playQueue;
        this.f$2 = z;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        boolean z = this.f$2;
        PlayQueue playQueue = this.f$1;
        Player player = this.f$0;
        switch (i) {
            case 0:
                StreamStateEntity streamStateEntity = (StreamStateEntity) obj;
                player.getClass();
                if (!streamStateEntity.isFinished(playQueue.getItem().getDuration())) {
                    playQueue.setRecovery(playQueue.getIndex(), streamStateEntity.progressMillis);
                }
                player.initPlayback(playQueue, z);
                break;
            default:
                player.initPlayback(playQueue, z);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        this.f$0.initPlayback(this.f$1, this.f$2);
    }
}
