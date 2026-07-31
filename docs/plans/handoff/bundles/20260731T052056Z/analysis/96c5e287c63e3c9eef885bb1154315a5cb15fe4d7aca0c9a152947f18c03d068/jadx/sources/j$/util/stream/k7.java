package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class k7 extends b7 implements j$.util.r0 {
    @Override // j$.util.stream.b7
    public final void d() {
        o6 o6Var = new o6();
        this.h = o6Var;
        Objects.requireNonNull(o6Var);
        this.e = this.b.R(new j7(o6Var, 1));
        this.f = new j$.util.n(11, this);
    }

    @Override // j$.util.stream.b7
    public final b7 e(Spliterator spliterator) {
        return new k7(this.b, spliterator, this.a);
    }

    @Override // j$.util.a1
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(doubleConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(doubleConsumer);
        c();
        Objects.requireNonNull(doubleConsumer);
        j7 j7Var = new j7(doubleConsumer, 0);
        this.b.Q(this.d, j7Var);
        this.i = true;
    }

    @Override // j$.util.a1
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        boolean a = a();
        if (a) {
            o6 o6Var = (o6) this.h;
            long j = this.g;
            int r = o6Var.r(j);
            doubleConsumer.accept((o6Var.c == 0 && r == 0) ? ((double[]) o6Var.e)[(int) j] : ((double[][]) o6Var.f)[r][(int) (j - o6Var.d[r])]);
        }
        return a;
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.r0 trySplit() {
        return (j$.util.r0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.a1 trySplit() {
        return (j$.util.r0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.r0) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.time.a.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.time.a.z(this, consumer);
    }
}
