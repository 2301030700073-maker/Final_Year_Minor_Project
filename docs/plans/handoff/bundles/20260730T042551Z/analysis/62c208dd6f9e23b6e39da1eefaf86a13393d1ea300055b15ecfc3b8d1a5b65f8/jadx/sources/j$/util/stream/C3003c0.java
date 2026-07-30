package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3003c0 extends AbstractC3018f0 {
    C3003c0(Spliterator spliterator, int i) {
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

    @Override // j$.util.stream.AbstractC3018f0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        j$.util.Y b1;
        if (isParallel()) {
            super.forEach(intConsumer);
        } else {
            b1 = AbstractC3018f0.b1(X0());
            b1.forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC3018f0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        j$.util.Y b1;
        if (isParallel()) {
            super.forEachOrdered(intConsumer);
        } else {
            b1 = AbstractC3018f0.b1(X0());
            b1.forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ IntStream parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ IntStream sequential() {
        sequential();
        return this;
    }
}
