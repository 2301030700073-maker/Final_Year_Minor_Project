package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class s7 extends f7 implements j$.util.y0 {
    @Override // j$.util.stream.f7
    public final void d() {
        w6 w6Var = new w6();
        this.h = w6Var;
        Objects.requireNonNull(w6Var);
        this.e = this.b.O(new r7(w6Var, 1));
        this.f = new j$.desugar.sun.nio.fs.g(20, this);
    }

    @Override // j$.util.stream.f7
    public final f7 e(Spliterator spliterator) {
        return new s7(this.b, spliterator, this.a);
    }

    @Override // j$.util.b1
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(longConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(longConsumer);
        c();
        Objects.requireNonNull(longConsumer);
        r7 r7Var = new r7(longConsumer, 0);
        this.b.N(this.d, r7Var);
        this.i = true;
    }

    @Override // j$.util.b1
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        boolean a = a();
        if (a) {
            w6 w6Var = (w6) this.h;
            long j = this.g;
            int y = w6Var.y(j);
            longConsumer.accept((w6Var.c == 0 && y == 0) ? ((long[]) w6Var.e)[(int) j] : ((long[][]) w6Var.f)[y][(int) (j - w6Var.d[y])]);
        }
        return a;
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final j$.util.y0 trySplit() {
        return (j$.util.y0) super.trySplit();
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final j$.util.b1 trySplit() {
        return (j$.util.y0) super.trySplit();
    }

    @Override // j$.util.stream.f7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.y0) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.a0.e(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.a0.h(this, consumer);
    }
}
