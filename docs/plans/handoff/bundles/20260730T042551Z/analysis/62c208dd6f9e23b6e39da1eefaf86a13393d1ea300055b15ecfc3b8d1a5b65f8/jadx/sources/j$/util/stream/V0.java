package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class V0 extends K0 {
    V0(I0 i0, I0 i02) {
        super(i0, i02);
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        this.a.forEach(consumer);
        this.b.forEach(consumer);
    }

    @Override // j$.util.stream.I0
    public final I0 i(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == count()) {
            return this;
        }
        long count = this.a.count();
        return j >= count ? this.b.i(j - count, j2 - count, intFunction) : j2 <= count ? this.a.i(j, j2, intFunction) : AbstractC3117z0.e0(EnumC3031h3.REFERENCE, this.a.i(j, count, intFunction), this.b.i(0L, j2 - count, intFunction));
    }

    @Override // j$.util.stream.I0
    public final void j(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        I0 i0 = this.a;
        i0.j(objArr, i);
        this.b.j(objArr, i + ((int) i0.count()));
    }

    @Override // j$.util.stream.I0
    public final Object[] k(IntFunction intFunction) {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        j(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C3054m1(this);
    }

    public final String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.a, this.b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}
