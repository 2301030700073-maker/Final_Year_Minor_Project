package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.r3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3080r3 extends AbstractC3036i3 implements j$.util.V {
    C3080r3(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        super(abstractC3117z0, spliterator, z);
    }

    C3080r3(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        super(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final void d() {
        U2 u2 = new U2();
        this.h = u2;
        Objects.requireNonNull(u2);
        this.e = this.b.I0(new C3076q3(u2, 0));
        this.f = new C2992a(3, this);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final AbstractC3036i3 e(Spliterator spliterator) {
        return new C3080r3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.a(this, consumer);
    }

    @Override // j$.util.e0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(doubleConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(doubleConsumer);
        c();
        Objects.requireNonNull(doubleConsumer);
        C3076q3 c3076q3 = new C3076q3(doubleConsumer, 1);
        this.b.H0(this.d, c3076q3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.f(this, consumer);
    }

    @Override // j$.util.e0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        boolean a = a();
        if (a) {
            U2 u2 = (U2) this.h;
            long j = this.g;
            int q = u2.q(j);
            doubleConsumer.accept((u2.c == 0 && q == 0) ? ((double[]) u2.e)[(int) j] : ((double[][]) u2.f)[q][(int) (j - u2.d[q])]);
        }
        return a;
    }

    @Override // j$.util.stream.AbstractC3036i3, j$.util.Spliterator
    public final j$.util.V trySplit() {
        return (j$.util.V) super.trySplit();
    }
}
