package j$.util.stream;

import j$.time.AbstractC2959a;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class F3 extends I3 implements j$.util.V, DoubleConsumer {
    double f;

    F3(j$.util.V v, long j, long j2) {
        super(v, j, j2);
    }

    F3(j$.util.V v, F3 f3) {
        super(v, f3);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f = d;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2959a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.L3
    protected final Spliterator b(Spliterator spliterator) {
        return new F3((j$.util.V) spliterator, this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.a(this, consumer);
    }

    @Override // j$.util.stream.I3
    protected final void g(Object obj) {
        ((DoubleConsumer) obj).accept(this.f);
    }

    @Override // j$.util.stream.I3
    protected final AbstractC3056m3 i(int i) {
        return new C3041j3(i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.f(this, consumer);
    }
}
