package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class q7 extends f7 implements Spliterator.OfInt {
    @Override // j$.util.stream.f7
    public final void d() {
        u6 u6Var = new u6();
        this.h = u6Var;
        Objects.requireNonNull(u6Var);
        this.e = this.b.O(new p7(u6Var, 1));
        this.f = new j$.desugar.sun.nio.fs.g(19, this);
    }

    @Override // j$.util.stream.f7
    public final f7 e(Spliterator spliterator) {
        return new q7(this.b, spliterator, this.a);
    }

    @Override // j$.util.b1
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(intConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(intConsumer);
        c();
        Objects.requireNonNull(intConsumer);
        p7 p7Var = new p7(intConsumer, 0);
        this.b.N(this.d, p7Var);
        this.i = true;
    }

    @Override // j$.util.b1
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        boolean a = a();
        if (a) {
            u6 u6Var = (u6) this.h;
            long j = this.g;
            int y = u6Var.y(j);
            intConsumer.accept((u6Var.c == 0 && y == 0) ? ((int[]) u6Var.e)[(int) j] : ((int[][]) u6Var.f)[y][(int) (j - u6Var.d[y])]);
        }
        return a;
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final j$.util.b1 trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.a0.d(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.a0.g(this, consumer);
    }
}
