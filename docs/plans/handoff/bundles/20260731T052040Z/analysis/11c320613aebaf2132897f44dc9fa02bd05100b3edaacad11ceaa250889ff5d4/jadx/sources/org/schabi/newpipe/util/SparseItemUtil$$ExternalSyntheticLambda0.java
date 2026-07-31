package org.schabi.newpipe.util;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.player.playqueue.SinglePlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SparseItemUtil$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Consumer f$0;

    public /* synthetic */ SparseItemUtil$$ExternalSyntheticLambda0(Consumer consumer, int i) {
        this.$r8$classId = i;
        this.f$0 = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Consumer consumer = this.f$0;
        StreamInfo streamInfo = (StreamInfo) obj;
        switch (i) {
            case 0:
                consumer.accept(streamInfo.getUploaderUrl());
                break;
            default:
                consumer.accept(new SinglePlayQueue(streamInfo));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
