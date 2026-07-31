package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class o7 extends b7 implements j$.util.y0 {
    @Override // j$.util.stream.b7
    public final void d() {
        s6 s6Var = new s6();
        this.h = s6Var;
        Objects.requireNonNull(s6Var);
        this.e = this.b.R(new n7(s6Var, 1));
        this.f = new j$.desugar.sun.nio.fs.g(15, this);
    }

    @Override // j$.util.stream.b7
    public final b7 e(Spliterator spliterator) {
        return new o7(this.b, spliterator, this.a);
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
        n7 n7Var = new n7(longConsumer, 0);
        this.b.Q(this.d, n7Var);
        this.i = true;
    }

    @Override // j$.util.b1
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        boolean a = a();
        if (a) {
            s6 s6Var = (s6) this.h;
            long j = this.g;
            int x = s6Var.x(j);
            longConsumer.accept((s6Var.c == 0 && x == 0) ? ((long[]) s6Var.e)[(int) j] : ((long[][]) s6Var.f)[x][(int) (j - s6Var.d[x])]);
        }
        return a;
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.y0 trySplit() {
        return (j$.util.y0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.b1 trySplit() {
        return (j$.util.y0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.y0) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.c.g(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.c.l(this, consumer);
    }
}
