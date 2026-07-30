package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class n0 extends E implements Y {
    n0() {
    }

    @Override // j$.util.Y, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        E.b(this, consumer);
    }

    @Override // j$.util.Y
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return E.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return E.e(this, i);
    }

    @Override // j$.util.Y, j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return E.g(this, consumer);
    }

    @Override // j$.util.Y
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return false;
    }

    @Override // j$.util.E, j$.util.V, j$.util.e0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ Y trySplit() {
        return null;
    }

    @Override // j$.util.E, j$.util.V, j$.util.e0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ e0 trySplit() {
        return null;
    }
}
