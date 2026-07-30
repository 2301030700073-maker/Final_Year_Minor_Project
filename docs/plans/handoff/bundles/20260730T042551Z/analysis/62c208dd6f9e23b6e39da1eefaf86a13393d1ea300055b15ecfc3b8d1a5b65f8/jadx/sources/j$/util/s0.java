package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class s0 implements b0 {
    private final long[] a;
    private int b;
    private final int c;
    private final int d;

    public s0(long[] jArr, int i, int i2, int i3) {
        this.a = jArr;
        this.b = i;
        this.c = i2;
        this.d = i3 | 64 | 16384;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.d;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.c - this.b;
    }

    @Override // j$.util.b0, j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        E.c(this, consumer);
    }

    @Override // j$.util.e0
    public final void forEachRemaining(LongConsumer longConsumer) {
        int i;
        longConsumer.getClass();
        long[] jArr = this.a;
        int length = jArr.length;
        int i2 = this.c;
        if (length < i2 || (i = this.b) < 0) {
            return;
        }
        this.b = i2;
        if (i < i2) {
            do {
                longConsumer.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (E.e(this, 4)) {
            return null;
        }
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

    @Override // j$.util.e0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        int i = this.b;
        if (i < 0 || i >= this.c) {
            return false;
        }
        this.b = i + 1;
        longConsumer.accept(this.a[i]);
        return true;
    }

    @Override // j$.util.e0, j$.util.Spliterator
    public final b0 trySplit() {
        int i = this.b;
        int i2 = (this.c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.b = i2;
        return new s0(this.a, i, i2, this.d);
    }
}
