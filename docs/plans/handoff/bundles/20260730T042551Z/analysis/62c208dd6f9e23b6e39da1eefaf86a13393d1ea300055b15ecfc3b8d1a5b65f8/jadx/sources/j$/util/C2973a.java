package j$.util;

import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.function.Consumer;

/* renamed from: j$.util.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C2973a implements Spliterator {
    private final java.util.List a;
    private int b;
    private int c;

    private C2973a(C2973a c2973a, int i, int i2) {
        this.a = c2973a.a;
        this.b = i;
        this.c = i2;
    }

    C2973a(java.util.List list) {
        this.a = list;
        this.b = 0;
        this.c = -1;
    }

    private int a() {
        int i = this.c;
        if (i >= 0) {
            return i;
        }
        int size = this.a.size();
        this.c = size;
        return size;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return a() - this.b;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int a = a();
        this.b = a;
        for (int i = this.b; i < a; i++) {
            try {
                consumer.accept(this.a.get(i));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
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

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int a = a();
        int i = this.b;
        if (i >= a) {
            return false;
        }
        this.b = i + 1;
        try {
            consumer.accept(this.a.get(i));
            return true;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int a = a();
        int i = this.b;
        int i2 = (a + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.b = i2;
        return new C2973a(this, i, i2);
    }
}
