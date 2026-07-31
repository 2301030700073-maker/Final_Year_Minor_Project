package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class m7 extends b7 implements j$.util.v0 {
    @Override // j$.util.stream.b7
    public final void d() {
        q6 q6Var = new q6();
        this.h = q6Var;
        Objects.requireNonNull(q6Var);
        this.e = this.b.R(new l7(q6Var, 1));
        this.f = new j$.desugar.sun.nio.fs.g(14, this);
    }

    @Override // j$.util.stream.b7
    public final b7 e(Spliterator spliterator) {
        return new m7(this.b, spliterator, this.a);
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
        l7 l7Var = new l7(intConsumer, 0);
        this.b.Q(this.d, l7Var);
        this.i = true;
    }

    @Override // j$.util.b1
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        boolean a = a();
        if (a) {
            q6 q6Var = (q6) this.h;
            long j = this.g;
            int x = q6Var.x(j);
            intConsumer.accept((q6Var.c == 0 && x == 0) ? ((int[]) q6Var.e)[(int) j] : ((int[][]) q6Var.f)[x][(int) (j - q6Var.d[x])]);
        }
        return a;
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.v0 trySplit() {
        return (j$.util.v0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.b1 trySplit() {
        return (j$.util.v0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.v0) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.c.f(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.c.k(this, consumer);
    }
}
