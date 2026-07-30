package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.i3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3036i3 implements Spliterator {
    final boolean a;
    final AbstractC3117z0 b;
    private Supplier c;
    Spliterator d;
    InterfaceC3079r2 e;
    C2992a f;
    long g;
    AbstractC3012e h;
    boolean i;

    AbstractC3036i3(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        this.b = abstractC3117z0;
        this.c = null;
        this.d = spliterator;
        this.a = z;
    }

    AbstractC3036i3(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        this.b = abstractC3117z0;
        this.c = c2992a;
        this.d = null;
        this.a = z;
    }

    private boolean b() {
        while (this.h.count() == 0) {
            if (this.e.e() || !this.f.a()) {
                if (this.i) {
                    return false;
                }
                this.e.end();
                this.i = true;
            }
        }
        return true;
    }

    final boolean a() {
        AbstractC3012e abstractC3012e = this.h;
        if (abstractC3012e == null) {
            if (this.i) {
                return false;
            }
            c();
            d();
            this.g = 0L;
            this.e.c(this.d.getExactSizeIfKnown());
            return b();
        }
        long j = this.g + 1;
        this.g = j;
        boolean z = j < abstractC3012e.count();
        if (z) {
            return z;
        }
        this.g = 0L;
        this.h.clear();
        return b();
    }

    final void c() {
        if (this.d == null) {
            this.d = (Spliterator) this.c.get();
            this.c = null;
        }
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        c();
        int y = EnumC3026g3.y(this.b.r0()) & EnumC3026g3.f;
        return (y & 64) != 0 ? (y & (-16449)) | (this.d.characteristics() & 16448) : y;
    }

    abstract void d();

    abstract AbstractC3036i3 e(Spliterator spliterator);

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        c();
        return this.d.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (j$.util.E.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        c();
        if (EnumC3026g3.SIZED.n(this.b.r0())) {
            return this.d.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return j$.util.E.e(this, i);
    }

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.d);
    }

    @Override // j$.util.Spliterator
    public Spliterator trySplit() {
        if (!this.a || this.h != null || this.i) {
            return null;
        }
        c();
        Spliterator trySplit = this.d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return e(trySplit);
    }
}
