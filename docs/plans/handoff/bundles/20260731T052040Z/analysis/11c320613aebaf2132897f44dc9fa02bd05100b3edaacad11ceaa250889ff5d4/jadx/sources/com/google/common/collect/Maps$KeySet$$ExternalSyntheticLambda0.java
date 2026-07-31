package com.google.common.collect;

import j$.util.function.BiConsumer$CC;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Maps$KeySet$$ExternalSyntheticLambda0 implements BiConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Consumer f$0;

    public /* synthetic */ Maps$KeySet$$ExternalSyntheticLambda0(Consumer consumer, int i) {
        this.$r8$classId = i;
        this.f$0 = consumer;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Consumer consumer = this.f$0;
        switch (i) {
            case 0:
                consumer.accept(obj);
                break;
            case 1:
                consumer.accept(obj);
                break;
            case 2:
                consumer.accept(obj2);
                break;
            default:
                consumer.accept(obj2);
                break;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.$r8$classId;
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
