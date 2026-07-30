package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class B extends E {
    B(Spliterator spliterator, int i) {
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

    @Override // j$.util.stream.E, j$.util.stream.H
    public final void forEach(DoubleConsumer doubleConsumer) {
        j$.util.V b1;
        if (isParallel()) {
            super.forEach(doubleConsumer);
        } else {
            b1 = E.b1(X0());
            b1.forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.E, j$.util.stream.H
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        j$.util.V b1;
        if (isParallel()) {
            super.forEachOrdered(doubleConsumer);
        } else {
            b1 = E.b1(X0());
            b1.forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ H parallel() {
        parallel();
        return this;
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* bridge */ /* synthetic */ H sequential() {
        sequential();
        return this;
    }
}
