package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.t3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3090t3 extends AbstractC3036i3 implements j$.util.Y {
    C3090t3(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        super(abstractC3117z0, spliterator, z);
    }

    C3090t3(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        super(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final void d() {
        W2 w2 = new W2();
        this.h = w2;
        Objects.requireNonNull(w2);
        this.e = this.b.I0(new C3085s3(w2, 0));
        this.f = new C2992a(4, this);
    }

    @Override // j$.util.stream.AbstractC3036i3
    final AbstractC3036i3 e(Spliterator spliterator) {
        return new C3090t3(this.b, spliterator, this.a);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.E.b(this, consumer);
    }

    @Override // j$.util.e0
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.h != null || this.i) {
            while (tryAdvance(intConsumer)) {
            }
            return;
        }
        Objects.requireNonNull(intConsumer);
        c();
        Objects.requireNonNull(intConsumer);
        C3085s3 c3085s3 = new C3085s3(intConsumer, 1);
        this.b.H0(this.d, c3085s3);
        this.i = true;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.E.g(this, consumer);
    }

    @Override // j$.util.e0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        boolean a = a();
        if (a) {
            W2 w2 = (W2) this.h;
            long j = this.g;
            int q = w2.q(j);
            intConsumer.accept((w2.c == 0 && q == 0) ? ((int[]) w2.e)[(int) j] : ((int[][]) w2.f)[q][(int) (j - w2.d[q])]);
        }
        return a;
    }

    @Override // j$.util.stream.AbstractC3036i3, j$.util.Spliterator
    public final j$.util.Y trySplit() {
        return (j$.util.Y) super.trySplit();
    }
}
