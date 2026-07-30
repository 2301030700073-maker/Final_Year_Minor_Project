package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.k0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3043k0 extends AbstractC3058n0 {
    C3043k0(Spliterator spliterator, int i) {
        super(spliterator, i);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean U0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC3058n0, j$.util.stream.InterfaceC3073q0
    public final void forEach(LongConsumer longConsumer) {
        j$.util.b0 b1;
        if (isParallel()) {
            super.forEach(longConsumer);
        } else {
            b1 = AbstractC3058n0.b1(X0());
            b1.forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC3058n0, j$.util.stream.InterfaceC3073q0
    public final void forEachOrdered(LongConsumer longConsumer) {
        j$.util.b0 b1;
        if (isParallel()) {
            super.forEachOrdered(longConsumer);
        } else {
            b1 = AbstractC3058n0.b1(X0());
            b1.forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ InterfaceC3073q0 parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ InterfaceC3073q0 sequential() {
        sequential();
        return this;
    }
}
