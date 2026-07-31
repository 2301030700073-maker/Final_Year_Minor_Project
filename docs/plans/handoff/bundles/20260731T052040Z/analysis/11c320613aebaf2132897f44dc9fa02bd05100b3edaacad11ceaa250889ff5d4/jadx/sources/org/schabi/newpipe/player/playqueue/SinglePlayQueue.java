package org.schabi.newpipe.player.playqueue;

import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.List;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class SinglePlayQueue extends PlayQueue {
    public SinglePlayQueue(int i, List list) {
        super(i, (List) Collection.EL.stream(list).map(new ListHelper$$ExternalSyntheticLambda0(1)).collect(Collectors.toList()));
    }

    @Override // org.schabi.newpipe.player.playqueue.PlayQueue
    public final boolean isComplete() {
        return true;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SinglePlayQueue(org.schabi.newpipe.extractor.stream.StreamInfo r4) {
        /*
            r3 = this;
            org.schabi.newpipe.player.playqueue.PlayQueueItem r0 = new org.schabi.newpipe.player.playqueue.PlayQueueItem
            r0.<init>(r4)
            r4 = 1
            java.lang.Object[] r1 = new java.lang.Object[r4]
            r2 = 0
            r1[r2] = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r4)
            r4 = r1[r2]
            java.util.List r4 = androidx.compose.ui.node.Owner.CC.m(r4, r0, r4, r0)
            r3.<init>(r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.playqueue.SinglePlayQueue.<init>(org.schabi.newpipe.extractor.stream.StreamInfo):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SinglePlayQueue(org.schabi.newpipe.extractor.stream.StreamInfoItem r4) {
        /*
            r3 = this;
            org.schabi.newpipe.player.playqueue.PlayQueueItem r0 = new org.schabi.newpipe.player.playqueue.PlayQueueItem
            r0.<init>(r4)
            r4 = 1
            java.lang.Object[] r1 = new java.lang.Object[r4]
            r2 = 0
            r1[r2] = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r4)
            r4 = r1[r2]
            java.util.List r4 = androidx.compose.ui.node.Owner.CC.m(r4, r0, r4, r0)
            r3.<init>(r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.player.playqueue.SinglePlayQueue.<init>(org.schabi.newpipe.extractor.stream.StreamInfoItem):void");
    }

    @Override // org.schabi.newpipe.player.playqueue.PlayQueue
    public final void fetch() {
    }
}
