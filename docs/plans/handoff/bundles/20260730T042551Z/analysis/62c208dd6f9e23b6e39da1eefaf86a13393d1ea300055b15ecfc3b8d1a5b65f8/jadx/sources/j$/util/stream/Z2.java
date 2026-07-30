package j$.util.stream;

import j$.util.Objects;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
abstract class Z2 implements j$.util.e0 {
    int a;
    final int b;
    int c;
    final int d;
    Object e;
    final /* synthetic */ AbstractC2996a3 f;

    Z2(AbstractC2996a3 abstractC2996a3, int i, int i2, int i3, int i4) {
        this.f = abstractC2996a3;
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        Object[] objArr = abstractC2996a3.f;
        this.e = objArr == null ? abstractC2996a3.e : objArr[i];
    }

    abstract void a(int i, Object obj, Object obj2);

    abstract j$.util.e0 b(Object obj, int i, int i2);

    abstract j$.util.e0 c(int i, int i2, int i3, int i4);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i = this.a;
        int i2 = this.d;
        int i3 = this.b;
        if (i == i3) {
            return i2 - this.c;
        }
        long[] jArr = this.f.d;
        return ((jArr[i3] + i2) - jArr[i]) - this.c;
    }

    @Override // j$.util.e0
    public final void forEachRemaining(Object obj) {
        AbstractC2996a3 abstractC2996a3;
        Objects.requireNonNull(obj);
        int i = this.a;
        int i2 = this.d;
        int i3 = this.b;
        if (i < i3 || (i == i3 && this.c < i2)) {
            int i4 = this.c;
            while (true) {
                abstractC2996a3 = this.f;
                if (i >= i3) {
                    break;
                }
                Object obj2 = abstractC2996a3.f[i];
                abstractC2996a3.o(obj2, i4, abstractC2996a3.p(obj2), obj);
                i++;
                i4 = 0;
            }
            abstractC2996a3.o(this.a == i3 ? this.e : abstractC2996a3.f[i3], i4, i2, obj);
            this.a = i3;
            this.c = i2;
        }
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.E.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.util.E.e(this, i);
    }

    @Override // j$.util.e0
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        int i = this.a;
        int i2 = this.b;
        if (i >= i2 && (i != i2 || this.c >= this.d)) {
            return false;
        }
        Object obj2 = this.e;
        int i3 = this.c;
        this.c = i3 + 1;
        a(i3, obj2, obj);
        int i4 = this.c;
        Object obj3 = this.e;
        AbstractC2996a3 abstractC2996a3 = this.f;
        if (i4 == abstractC2996a3.p(obj3)) {
            this.c = 0;
            int i5 = this.a + 1;
            this.a = i5;
            Object[] objArr = abstractC2996a3.f;
            if (objArr != null && i5 <= i2) {
                this.e = objArr[i5];
            }
        }
        return true;
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    @Override // j$.util.e0, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.V trySplit() {
        return (j$.util.V) trySplit();
    }

    @Override // j$.util.e0, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.Y trySplit() {
        return (j$.util.Y) trySplit();
    }

    @Override // j$.util.e0, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.b0 trySplit() {
        return (j$.util.b0) trySplit();
    }

    @Override // j$.util.Spliterator
    public final j$.util.e0 trySplit() {
        int i = this.a;
        int i2 = this.b;
        if (i < i2) {
            int i3 = this.c;
            AbstractC2996a3 abstractC2996a3 = this.f;
            j$.util.e0 c = c(i, i2 - 1, i3, abstractC2996a3.p(abstractC2996a3.f[i2 - 1]));
            this.a = i2;
            this.c = 0;
            this.e = abstractC2996a3.f[i2];
            return c;
        }
        if (i != i2) {
            return null;
        }
        int i4 = this.c;
        int i5 = (this.d - i4) / 2;
        if (i5 == 0) {
            return null;
        }
        j$.util.e0 b = b(this.e, i4, i5);
        this.c += i5;
        return b;
    }
}
