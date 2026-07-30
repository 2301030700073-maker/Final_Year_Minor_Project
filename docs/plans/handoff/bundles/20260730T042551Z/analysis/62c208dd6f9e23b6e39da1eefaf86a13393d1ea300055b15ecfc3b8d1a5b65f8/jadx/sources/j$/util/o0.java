package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class o0 extends E implements b0 {
    o0() {
    }

    @Override // j$.util.b0, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        E.c(this, consumer);
    }

    @Override // j$.util.b0
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
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

    @Override // j$.util.b0, j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return E.h(this, consumer);
    }

    @Override // j$.util.b0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return false;
    }

    @Override // j$.util.E, j$.util.V, j$.util.e0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ b0 trySplit() {
        return null;
    }

    @Override // j$.util.E, j$.util.V, j$.util.e0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ e0 trySplit() {
        return null;
    }
}
