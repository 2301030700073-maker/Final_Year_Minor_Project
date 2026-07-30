package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.v3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3100v3 extends AbstractC3036i3 implements j$.util.b0 {
    C3100v3(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        super(abstractC3117z0, spliterator, z);
    }

    C3100v3(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        super(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final void d() {
        Y2 y2 = new Y2();
        this.h = y2;
        Objects.requireNonNull(y2);
        this.e = this.b.I0(new C3095u3(y2, 0));
        this.f = new C2992a(5, this);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final AbstractC3036i3 e(Spliterator spliterator) {
        return new C3100v3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.c(this, consumer);
    }

    @Override // j$.util.e0
    public final void forEachRemaining(LongConsumer longConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(longConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(longConsumer);
        c();
        Objects.requireNonNull(longConsumer);
        C3095u3 c3095u3 = new C3095u3(longConsumer, 1);
        this.b.H0(this.d, c3095u3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.h(this, consumer);
    }

    @Override // j$.util.e0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        boolean a = a();
        if (a) {
            Y2 y2 = (Y2) this.h;
            long j = this.g;
            int q = y2.q(j);
            longConsumer.accept((y2.c == 0 && q == 0) ? ((long[]) y2.e)[(int) j] : ((long[][]) y2.f)[q][(int) (j - y2.d[q])]);
        }
        return a;
    }

    @Override // j$.util.stream.AbstractC3036i3, j$.util.Spliterator
    public final j$.util.b0 trySplit() {
        return (j$.util.b0) super.trySplit();
    }
}
