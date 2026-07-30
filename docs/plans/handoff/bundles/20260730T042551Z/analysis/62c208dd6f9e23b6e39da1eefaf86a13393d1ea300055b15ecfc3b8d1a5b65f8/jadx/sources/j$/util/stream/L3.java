package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
abstract class L3 {
    protected final Spliterator a;
    protected final boolean b;
    protected final int c;
    private final long d;
    private final AtomicLong e;

    L3(Spliterator spliterator, long j, long j2) {
        this.a = spliterator;
        this.b = j2 < 0;
        this.d = j2 >= 0 ? j2 : 0L;
        this.c = 128;
        this.e = new AtomicLong(j2 >= 0 ? j + j2 : j);
    }

    L3(Spliterator spliterator, L3 l3) {
        this.a = spliterator;
        this.b = l3.b;
        this.e = l3.e;
        this.d = l3.d;
        this.c = l3.c;
    }

    protected final long a(long j) {
        AtomicLong atomicLong;
        long j2;
        boolean z;
        long min;
        do {
            atomicLong = this.e;
            j2 = atomicLong.get();
            z = this.b;
            if (j2 != 0) {
                min = Math.min(j2, j);
                if (min <= 0) {
                    break;
                }
            } else {
                if (z) {
                    return j;
                }
                return 0L;
            }
        } while (!atomicLong.compareAndSet(j2, j2 - min));
        if (z) {
            return Math.max(j - min, 0L);
        }
        long j3 = this.d;
        return j2 > j3 ? Math.max(min - (j2 - j3), 0L) : min;
    }

    protected abstract Spliterator b(Spliterator spliterator);

    public final int characteristics() {
        return this.a.characteristics() & (-16465);
    }

    public final long estimateSize() {
        return this.a.estimateSize();
    }

    protected final K3 f() {
        return this.e.get() > 0 ? K3.MAYBE_MORE : this.b ? K3.UNLIMITED : K3.NO_MORE;
    }

    public final Spliterator trySplit() {
        Spliterator trySplit;
        if (this.e.get() == 0 || (trySplit = this.a.trySplit()) == null) {
            return null;
        }
        return b(trySplit);
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.V m7012trySplit() {
        return (j$.util.V) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.Y m7013trySplit() {
        return (j$.util.Y) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.b0 m7014trySplit() {
        return (j$.util.b0) trySplit();
    }

    /* renamed from: trySplit, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ j$.util.e0 m7015trySplit() {
        return (j$.util.e0) trySplit();
    }
}
