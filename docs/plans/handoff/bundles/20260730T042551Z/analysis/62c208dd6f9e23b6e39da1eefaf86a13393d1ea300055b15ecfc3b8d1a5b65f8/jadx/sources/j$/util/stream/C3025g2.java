package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C3025g2 extends AbstractC3040j2 {
    C3025g2(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean U0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC3002c
    final InterfaceC3079r2 V0(int i, InterfaceC3079r2 interfaceC3079r2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC3040j2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (isParallel()) {
            super.forEach(consumer);
        } else {
            X0().forEachRemaining(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC3040j2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (isParallel()) {
            super.forEachOrdered(consumer);
        } else {
            X0().forEachRemaining(consumer);
        }
    }
}
