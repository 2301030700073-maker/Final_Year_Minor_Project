package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class a0 extends a implements d0 {
    public static j$.util.s0 T(Spliterator spliterator) {
        if (spliterator instanceof j$.util.s0) {
            return (j$.util.s0) spliterator;
        }
        if (!h8.a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        h8.a(a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.d0
    public final IntStream A() {
        Objects.requireNonNull(null);
        return new t(this, z6.p | z6.n, 0);
    }

    @Override // j$.util.stream.d0
    public final boolean E() {
        return ((Boolean) q(v3.Q(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        DoubleConsumer c0Var;
        boolean e;
        j$.util.s0 T = T(spliterator);
        if (l5Var instanceof DoubleConsumer) {
            c0Var = (DoubleConsumer) l5Var;
        } else {
            if (h8.a) {
                h8.a(a.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(l5Var);
            c0Var = new j$.util.c0(l5Var, 1);
        }
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (T.tryAdvance(c0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.G(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new k7(aVar, supplier, z);
    }

    @Override // j$.util.stream.d0
    public final d0 a() {
        int i = a9.a;
        Objects.requireNonNull(null);
        return new d6(this, a9.a, 1);
    }

    @Override // j$.util.stream.d0
    public final j$.util.z average() {
        double[] dArr = (double[]) collect(new o(8), new o(9), new o(10));
        if (dArr[2] <= 0.0d) {
            return j$.util.z.c;
        }
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return new j$.util.z(d / dArr[2]);
    }

    @Override // j$.util.stream.d0
    public final d0 b() {
        Objects.requireNonNull(null);
        return new w(this, z6.t, 1);
    }

    @Override // j$.util.stream.d0
    public final Stream boxed() {
        return new q(this, 0, new o(0), 0);
    }

    @Override // j$.util.stream.d0
    public final d0 c() {
        int i = a9.a;
        Objects.requireNonNull(null);
        return new d6(this, a9.b, 2);
    }

    @Override // j$.util.stream.d0
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(pVar);
        return q(new a4(a7.DOUBLE_VALUE, pVar, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.d0
    public final long count() {
        return ((Long) q(new c4(1))).longValue();
    }

    @Override // j$.util.stream.d0
    public final d0 d(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new r(this, z6.p | z6.n | z6.t, gVar, 1);
    }

    @Override // j$.util.stream.d0
    public final d0 distinct() {
        return ((d5) boxed()).distinct().mapToDouble(new o(1));
    }

    @Override // j$.util.stream.d0
    public final j$.util.z findAny() {
        return (j$.util.z) q(f0.d);
    }

    @Override // j$.util.stream.d0
    public final j$.util.z findFirst() {
        return (j$.util.z) q(f0.c);
    }

    @Override // j$.util.stream.d0
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        q(new m0(doubleConsumer, false));
    }

    @Override // j$.util.stream.d0
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        q(new m0(doubleConsumer, true));
    }

    @Override // j$.util.stream.g
    public final j$.util.f0 iterator() {
        j$.util.s0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.g1(spliterator);
    }

    @Override // j$.util.stream.d0
    public final boolean k() {
        return ((Boolean) q(v3.Q(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.d0
    public final d0 limit(long j) {
        if (j >= 0) {
            return v3.R(this, 0L, j);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.d0
    public final d0 map(DoubleUnaryOperator doubleUnaryOperator) {
        Objects.requireNonNull(doubleUnaryOperator);
        return new r(this, z6.p | z6.n, doubleUnaryOperator, 0);
    }

    @Override // j$.util.stream.d0
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new q(this, z6.p | z6.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.d0
    public final j$.util.z max() {
        return reduce(new o(3));
    }

    @Override // j$.util.stream.d0
    public final j$.util.z min() {
        return reduce(new o(7));
    }

    @Override // j$.util.stream.d0
    public final d0 peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new r(this, doubleConsumer);
    }

    @Override // j$.util.stream.d0
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) q(new e4(a7.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.d0
    public final d0 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.R(this, j, -1L);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.d0
    public final d0 sorted() {
        return new d6(this, z6.q | z6.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final j$.util.s0 spliterator() {
        return T(super.spliterator());
    }

    @Override // j$.util.stream.d0
    public final double sum() {
        double[] dArr = (double[]) collect(new o(4), new o(5), new o(6));
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.d0
    public final j$.util.v summaryStatistics() {
        return (j$.util.v) collect(new j$.desugar.sun.nio.fs.m(15), new o(11), new j$.desugar.sun.nio.fs.m(29));
    }

    @Override // j$.util.stream.d0
    public final double[] toArray() {
        return (double[]) v3.K((a2) t(new o(2))).b();
    }

    @Override // j$.util.stream.d0
    public final boolean u() {
        return ((Boolean) q(v3.Q(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.a
    public final g2 v(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.C(aVar, spliterator, z);
    }

    @Override // j$.util.stream.d0
    public final m1 w() {
        Objects.requireNonNull(null);
        return new u(this, z6.p | z6.n, 0);
    }

    @Override // j$.util.stream.d0
    public final j$.util.z reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.z) q(new y3(a7.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }
}
