package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class j1 extends a implements m1 {
    public static j$.util.y0 T(Spliterator spliterator) {
        if (spliterator instanceof j$.util.y0) {
            return (j$.util.y0) spliterator;
        }
        if (!h8.a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        h8.a(a.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.m1
    public final IntStream C() {
        Objects.requireNonNull(null);
        return new t(this, z6.p | z6.n, 3);
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        LongConsumer k0Var;
        boolean e;
        j$.util.y0 T = T(spliterator);
        if (l5Var instanceof LongConsumer) {
            k0Var = (LongConsumer) l5Var;
        } else {
            if (h8.a) {
                h8.a(a.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(l5Var);
            k0Var = new j$.util.k0(l5Var, 1);
        }
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (T.tryAdvance(k0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.LONG_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.P(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new o7(aVar, supplier, z);
    }

    @Override // j$.util.stream.m1
    public final m1 a() {
        int i = a9.a;
        Objects.requireNonNull(null);
        return new f6(this, a9.a, 1);
    }

    @Override // j$.util.stream.m1
    public final d0 asDoubleStream() {
        return new w(this, z6.n, 4);
    }

    @Override // j$.util.stream.m1
    public final j$.util.z average() {
        long j = ((long[]) collect(new w0(6), new w0(7), new w0(8)))[0];
        return j > 0 ? new j$.util.z(r4[1] / j) : j$.util.z.c;
    }

    @Override // j$.util.stream.m1
    public final m1 b() {
        Objects.requireNonNull(null);
        return new u(this, z6.t, 5);
    }

    @Override // j$.util.stream.m1
    public final Stream boxed() {
        return new q(this, 0, new w0(5), 2);
    }

    @Override // j$.util.stream.m1
    public final m1 c() {
        int i = a9.a;
        Objects.requireNonNull(null);
        return new f6(this, a9.b, 2);
    }

    @Override // j$.util.stream.m1
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(pVar);
        return q(new a4(a7.LONG_VALUE, pVar, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.m1
    public final long count() {
        return ((Long) q(new c4(0))).longValue();
    }

    @Override // j$.util.stream.m1
    public final m1 d(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new f1(this, z6.p | z6.n | z6.t, gVar, 0);
    }

    @Override // j$.util.stream.m1
    public final m1 distinct() {
        return ((d5) boxed()).distinct().mapToLong(new w0(12));
    }

    @Override // j$.util.stream.m1
    public final j$.util.b0 findAny() {
        return (j$.util.b0) q(h0.d);
    }

    @Override // j$.util.stream.m1
    public final j$.util.b0 findFirst() {
        return (j$.util.b0) q(h0.c);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        q(new o0(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        q(new o0(longConsumer, true));
    }

    @Override // j$.util.stream.m1
    public final d0 g() {
        Objects.requireNonNull(null);
        return new w(this, z6.p | z6.n, 5);
    }

    @Override // j$.util.stream.m1
    public final boolean i() {
        return ((Boolean) q(v3.U(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.g
    public final j$.util.n0 iterator() {
        j$.util.y0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.f1(spliterator);
    }

    @Override // j$.util.stream.m1
    public final m1 limit(long j) {
        if (j >= 0) {
            return v3.V(this, 0L, j);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.m1
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new q(this, z6.p | z6.n, longFunction, 2);
    }

    @Override // j$.util.stream.m1
    public final j$.util.b0 max() {
        return reduce(new w0(9));
    }

    @Override // j$.util.stream.m1
    public final j$.util.b0 min() {
        return reduce(new w0(11));
    }

    @Override // j$.util.stream.m1
    public final boolean p() {
        return ((Boolean) q(v3.U(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.m1
    public final m1 peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new f1(this, longConsumer);
    }

    @Override // j$.util.stream.m1
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) q(new w3(a7.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.m1
    public final m1 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.V(this, j, -1L);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.m1
    public final m1 sorted() {
        return new f6(this, z6.q | z6.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final j$.util.y0 spliterator() {
        return T(super.spliterator());
    }

    @Override // j$.util.stream.m1
    public final long sum() {
        return reduce(0L, new w0(10));
    }

    @Override // j$.util.stream.m1
    public final j$.util.y summaryStatistics() {
        return (j$.util.y) collect(new j$.desugar.sun.nio.fs.m(23), new w0(2), new w0(3));
    }

    @Override // j$.util.stream.m1
    public final long[] toArray() {
        return (long[]) v3.M((e2) t(new w0(4))).b();
    }

    @Override // j$.util.stream.a
    public final g2 v(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.E(aVar, spliterator, z);
    }

    @Override // j$.util.stream.m1
    public final m1 x() {
        Objects.requireNonNull(null);
        return new u(this, z6.p | z6.n, 3);
    }

    @Override // j$.util.stream.m1
    public final boolean y() {
        return ((Boolean) q(v3.U(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.m1
    public final j$.util.b0 reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.b0) q(new y3(a7.LONG_VALUE, longBinaryOperator, 0));
    }
}
