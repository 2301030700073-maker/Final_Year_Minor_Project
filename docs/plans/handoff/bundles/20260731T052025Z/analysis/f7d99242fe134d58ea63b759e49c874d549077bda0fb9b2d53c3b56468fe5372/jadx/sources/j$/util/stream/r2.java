package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class r2 extends i2 {
    @Override // j$.util.stream.g2
    public final void forEach(Consumer consumer) {
        this.a.forEach(consumer);
        this.b.forEach(consumer);
    }

    @Override // j$.util.stream.g2
    public final g2 k(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.c) {
            return this;
        }
        long count = this.a.count();
        if (j >= count) {
            return this.b.k(j - count, j2 - count, intFunction);
        }
        g2 g2Var = this.a;
        if (j2 <= count) {
            return g2Var.k(j, j2, intFunction);
        }
        return v3.F(a7.REFERENCE, g2Var.k(j, count, intFunction), this.b.k(0L, j2 - count, intFunction));
    }

    @Override // j$.util.stream.g2
    public final void m(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        g2 g2Var = this.a;
        g2Var.m(objArr, i);
        this.b.m(objArr, i + ((int) g2Var.count()));
    }

    @Override // j$.util.stream.g2
    public final Object[] p(IntFunction intFunction) {
        long j = this.c;
        if (j >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        m(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.g2
    public final Spliterator spliterator() {
        return new i3(this);
    }

    public final String toString() {
        long j = this.c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.a, this.b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}
