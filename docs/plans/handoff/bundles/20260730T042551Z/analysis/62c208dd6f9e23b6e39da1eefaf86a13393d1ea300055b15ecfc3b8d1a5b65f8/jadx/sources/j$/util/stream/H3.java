package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class H3 extends I3 implements j$.util.b0, LongConsumer {
    long f;

    H3(j$.util.b0 b0Var, long j, long j2) {
        super(b0Var, j, j2);
    }

    H3(j$.util.b0 b0Var, H3 h3) {
        super(b0Var, h3);
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2959a.c(this, longConsumer);
    }

    @Override // j$.util.stream.L3
    protected final Spliterator b(Spliterator spliterator) {
        return new H3((j$.util.b0) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.c(this, consumer);
    }

    @Override // j$.util.stream.I3
    protected final void g(Object obj) {
        ((LongConsumer) obj).accept(this.f);
    }

    @Override // j$.util.stream.I3
    protected final AbstractC3056m3 i(int i) {
        return new C3051l3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.h(this, consumer);
    }
}
