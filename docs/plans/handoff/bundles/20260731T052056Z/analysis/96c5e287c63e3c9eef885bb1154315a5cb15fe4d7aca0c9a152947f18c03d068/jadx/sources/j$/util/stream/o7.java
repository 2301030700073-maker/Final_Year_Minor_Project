package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class o7 extends b7 implements j$.util.x0 {
    @Override // j$.util.stream.b7
    public final void d() {
        s6 s6Var = new s6();
        this.h = s6Var;
        Objects.requireNonNull(s6Var);
        this.e = this.b.R(new n7(s6Var, 1));
        this.f = new j$.util.n(13, this);
    }

    @Override // j$.util.stream.b7
    public final b7 e(Spliterator spliterator) {
        return new o7(this.b, spliterator, this.a);
    }

    @Override // j$.util.a1
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

    @Override // j$.util.a1
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        boolean a = a();
        if (a) {
            s6 s6Var = (s6) this.h;
            long j = this.g;
            int r = s6Var.r(j);
            longConsumer.accept((s6Var.c == 0 && r == 0) ? ((long[]) s6Var.e)[(int) j] : ((long[][]) s6Var.f)[r][(int) (j - s6Var.d[r])]);
        }
        return a;
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.x0 trySplit() {
        return (j$.util.x0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final j$.util.a1 trySplit() {
        return (j$.util.x0) super.trySplit();
    }

    @Override // j$.util.stream.b7, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (j$.util.x0) super.trySplit();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.time.a.k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.time.a.B(this, consumer);
    }
}
