package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class m0 extends E implements V {
    m0() {
    }

    @Override // j$.util.V, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        E.a(this, consumer);
    }

    @Override // j$.util.V
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
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

    @Override // j$.util.V, j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return E.f(this, consumer);
    }

    @Override // j$.util.V
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return false;
    }

    @Override // j$.util.E, j$.util.V, j$.util.e0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ V trySplit() {
        return null;
    }

    @Override // j$.util.E, j$.util.V, j$.util.e0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ e0 trySplit() {
        return null;
    }
}
