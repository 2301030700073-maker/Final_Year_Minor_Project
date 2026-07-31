package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class o7 extends f7 implements j$.util.t0 {
    @Override // j$.util.stream.f7
    public final void d() {
        s6 s6Var = new s6();
        this.h = s6Var;
        Objects.requireNonNull(s6Var);
        this.e = this.b.O(new n7(s6Var, 1));
        this.f = new j$.desugar.sun.nio.fs.g(18, this);
    }

    @Override // j$.util.stream.f7
    public final f7 e(Spliterator spliterator) {
        return new o7(this.b, spliterator, this.a);
    }

    @Override // j$.util.b1
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(doubleConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(doubleConsumer);
        c();
        Objects.requireNonNull(doubleConsumer);
        n7 n7Var = new n7(doubleConsumer, 0);
        this.b.N(this.d, n7Var);
        this.i = true;
    }

    @Override // j$.util.b1
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        boolean a = a();
        if (a) {
            s6 s6Var = (s6) this.h;
            long j = this.g;
            int y = s6Var.y(j);
            doubleConsumer.accept((s6Var.c == 0 && y == 0) ? ((double[]) s6Var.e)[(int) j] : ((double[][]) s6Var.f)[y][(int) (j - s6Var.d[y])]);
        }
        return a;
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final j$.util.t0 trySplit() {
        return (j$.util.t0) super.trySplit();
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final j$.util.b1 trySplit() {
        return (j$.util.t0) super.trySplit();
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.t0) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.a0.c(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.a0.f(this, consumer);
    }
}
