package com.google.common.collect;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class CollectSpliterators$1$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Consumer f$0;
    public final /* synthetic */ Function f$1;

    public /* synthetic */ CollectSpliterators$1$$ExternalSyntheticLambda0(Consumer consumer, Function function, int i) {
        this.$r8$classId = i;
        this.f$0 = consumer;
        this.f$1 = function;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Function function = this.f$1;
        Consumer consumer = this.f$0;
        switch (i) {
            case 0:
                consumer.accept(function.apply(obj));
                break;
            default:
                consumer.accept(function.apply(obj));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
