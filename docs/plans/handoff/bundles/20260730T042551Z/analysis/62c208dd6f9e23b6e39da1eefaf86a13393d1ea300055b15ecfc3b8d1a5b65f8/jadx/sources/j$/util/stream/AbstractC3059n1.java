package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;

/* renamed from: j$.util.stream.n1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3059n1 implements Spliterator {
    I0 a;
    int b;
    Spliterator c;
    Spliterator d;
    ArrayDeque e;

    AbstractC3059n1(I0 i0) {
        this.a = i0;
    }

    protected static I0 a(ArrayDeque arrayDeque) {
        while (true) {
            I0 i0 = (I0) arrayDeque.pollFirst();
            if (i0 == null) {
                return null;
            }
            if (i0.n() != 0) {
                int n = i0.n();
                while (true) {
                    n--;
                    if (n >= 0) {
                        arrayDeque.addFirst(i0.a(n));
                    }
                }
            } else if (i0.count() > 0) {
                return i0;
            }
        }
    }

    protected final ArrayDeque b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int n = this.a.n();
        while (true) {
            n--;
            if (n < this.b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.a.a(n));
        }
    }

    protected final boolean c() {
        if (this.a == null) {
            return false;
        }
        if (this.d != null) {
            return true;
        }
        Spliterator spliterator = this.c;
        if (spliterator == null) {
            ArrayDeque b = b();
            this.e = b;
            I0 a = a(b);
            if (a == null) {
                this.a = null;
                return false;
            }
            spliterator = a.spliterator();
        }
        this.d = spliterator;
        return true;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long j = 0;
        if (this.a == null) {
            return 0L;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.b; i < this.a.n(); i++) {
            j += this.a.a(i).count();
        }
        return j;
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

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        if (this.a == null || this.d != null) {
            return null;
        }
        Spliterator spliterator = this.c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.b < r0.n() - 1) {
            I0 i0 = this.a;
            int i = this.b;
            this.b = i + 1;
            return i0.a(i).spliterator();
        }
        I0 a = this.a.a(this.b);
        this.a = a;
        if (a.n() == 0) {
            Spliterator spliterator2 = this.a.spliterator();
            this.c = spliterator2;
            return spliterator2.trySplit();
        }
        I0 i02 = this.a;
        this.b = 0 + 1;
        return i02.a(0).spliterator();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.V trySplit() {
        return (j$.util.V) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.Y trySplit() {
        return (j$.util.Y) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.b0 trySplit() {
        return (j$.util.b0) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.e0 trySplit() {
        return (j$.util.e0) trySplit();
    }
}
