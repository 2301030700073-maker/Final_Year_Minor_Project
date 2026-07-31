package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class g1 extends j1 {
    @Override // j$.util.stream.a
    public final boolean L() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.a
    public final l5 M(int i, l5 l5Var) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.j1, j$.util.stream.m1
    public final void forEach(LongConsumer longConsumer) {
        if (this.a.k) {
            super.forEach(longConsumer);
        } else {
            j1.T(O()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.j1, j$.util.stream.m1
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (this.a.k) {
            super.forEachOrdered(longConsumer);
        } else {
            j1.T(O()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final m1 parallel() {
        this.a.k = true;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final m1 sequential() {
        this.a.k = false;
        return this;
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.g
    public final g unordered() {
        return !z6.ORDERED.u(this.f) ? this : new u(this, z6.r, 4);
    }
}
