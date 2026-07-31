package com.google.common.collect;

import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0 implements IntConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Consumer f$0;
    public final /* synthetic */ IntFunction f$1;

    public /* synthetic */ CollectSpliterators$1WithCharacteristics$$ExternalSyntheticLambda0(Consumer consumer, IntFunction intFunction, int i) {
        this.$r8$classId = i;
        this.f$0 = consumer;
        this.f$1 = intFunction;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.$r8$classId;
        IntFunction intFunction = this.f$1;
        Consumer consumer = this.f$0;
        switch (i2) {
            case 0:
                consumer.accept(intFunction.apply(i));
                break;
            default:
                consumer.accept(intFunction.apply(i));
                break;
        }
    }

    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        int i = this.$r8$classId;
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }
}
