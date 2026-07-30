package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class B3 extends C3 implements j$.util.b0 {
    B3(j$.util.b0 b0Var, long j, long j2) {
        super(b0Var, j, j2);
    }

    B3(j$.util.b0 b0Var, long j, long j2, long j3, long j4) {
        super(b0Var, j, j2, j3, j4);
    }

    @Override // j$.util.stream.E3
    protected final Spliterator a(Spliterator spliterator, long j, long j2, long j3, long j4) {
        return new B3((j$.util.b0) spliterator, j, j2, j3, j4);
    }

    @Override // j$.util.stream.C3
    protected final Object b() {
        return new A3(0);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.h(this, consumer);
    }
}
