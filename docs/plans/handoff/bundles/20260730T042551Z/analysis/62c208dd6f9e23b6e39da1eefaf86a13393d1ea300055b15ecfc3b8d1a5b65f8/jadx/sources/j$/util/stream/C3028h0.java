package j$.util.stream;

import j$.util.C3126y;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;

/* renamed from: j$.util.stream.h0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3028h0 implements LongFunction, LongBinaryOperator, ObjLongConsumer, BiConsumer, Consumer {
    public final /* synthetic */ int a;

    public /* synthetic */ C3028h0(int i) {
        this.a = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
    }

    @Override // java.util.function.ObjLongConsumer
    public final void accept(Object obj, long j) {
        ((C3126y) obj).accept(j);
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((C3126y) obj).a((C3126y) obj2);
    }

    @Override // java.util.function.BiConsumer
    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.LongFunction
    public final Object apply(long j) {
        return Long.valueOf(j);
    }

    @Override // java.util.function.LongBinaryOperator
    public final long applyAsLong(long j, long j2) {
        switch (this.a) {
            case 1:
                return j + j2;
            default:
                return Math.min(j, j2);
        }
    }
}
