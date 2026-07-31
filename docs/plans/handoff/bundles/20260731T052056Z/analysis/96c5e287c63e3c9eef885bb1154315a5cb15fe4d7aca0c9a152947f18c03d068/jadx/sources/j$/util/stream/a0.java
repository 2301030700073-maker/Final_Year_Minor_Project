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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class a0 extends a implements d0 {
    public static j$.util.r0 T(Spliterator spliterator) {
        if (spliterator instanceof j$.util.r0) {
            return (j$.util.r0) spliterator;
        }
        if (!h8.a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        h8.a(a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.a
    public final g2 E(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.B(aVar, spliterator, z);
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        DoubleConsumer b0Var;
        boolean e;
        j$.util.r0 T = T(spliterator);
        if (l5Var instanceof DoubleConsumer) {
            b0Var = (DoubleConsumer) l5Var;
        } else {
            if (h8.a) {
                h8.a(a.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(l5Var);
            b0Var = new j$.util.b0(l5Var, 1);
        }
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (T.tryAdvance(b0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.F(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new k7(aVar, supplier, z);
    }

    @Override // j$.util.stream.d0
    public final d0 a() {
        int i = x8.a;
        Objects.requireNonNull(null);
        return new d6(this, x8.a, 1);
    }

    @Override // j$.util.stream.d0
    public final j$.util.y average() {
        double[] dArr = (double[]) collect(new o(7), new o(8), new o(9));
        if (dArr[2] <= 0.0d) {
            return j$.util.y.c;
        }
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return new j$.util.y(d / dArr[2]);
    }

    @Override // j$.util.stream.d0
    public final d0 b(j$.util.n nVar) {
        Objects.requireNonNull(nVar);
        return new r(this, z6.p | z6.n | z6.t, nVar, 1);
    }

    @Override // j$.util.stream.d0
    public final Stream boxed() {
        return new q(this, 0, new j$.time.f(29), 0);
    }

    @Override // j$.util.stream.d0
    public final d0 c() {
        Objects.requireNonNull(null);
        return new w(this, z6.t, 1);
    }

    @Override // j$.util.stream.d0
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(pVar);
        return C(new a4(a7.DOUBLE_VALUE, pVar, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.d0
    public final long count() {
        return ((Long) C(new c4(1))).longValue();
    }

    @Override // j$.util.stream.d0
    public final d0 d() {
        int i = x8.a;
        Objects.requireNonNull(null);
        return new d6(this, x8.b, 2);
    }

    @Override // j$.util.stream.d0
    public final d0 distinct() {
        return ((d5) boxed()).distinct().mapToDouble(new o(0));
    }

    @Override // j$.util.stream.d0
    public final j$.util.y findAny() {
        return (j$.util.y) C(f0.d);
    }

    @Override // j$.util.stream.d0
    public final j$.util.y findFirst() {
        return (j$.util.y) C(f0.c);
    }

    @Override // j$.util.stream.d0
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        C(new m0(doubleConsumer, false));
    }

    @Override // j$.util.stream.d0
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        C(new m0(doubleConsumer, true));
    }

    @Override // j$.util.stream.g
    public final j$.util.e0 iterator() {
        j$.util.r0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.f1(spliterator);
    }

    @Override // j$.util.stream.d0
    public final boolean k() {
        return ((Boolean) C(v3.P(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.d0
    public final d0 limit(long j) {
        if (j >= 0) {
            return v3.Q(this, 0L, j);
        }
        j$.time.h.c(Long.toString(j));
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
    public final j$.util.y max() {
        return reduce(new o(2));
    }

    @Override // j$.util.stream.d0
    public final j$.util.y min() {
        return reduce(new o(6));
    }

    @Override // j$.util.stream.d0
    public final d0 peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new r(this, doubleConsumer);
    }

    @Override // j$.util.stream.d0
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) C(new e4(a7.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.d0
    public final boolean s() {
        return ((Boolean) C(v3.P(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.d0
    public final d0 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.Q(this, j, -1L);
        }
        j$.time.h.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.d0
    public final d0 sorted() {
        return new d6(this, z6.q | z6.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final j$.util.r0 spliterator() {
        return T(super.spliterator());
    }

    @Override // j$.util.stream.d0
    public final double sum() {
        double[] dArr = (double[]) collect(new o(3), new o(4), new o(5));
        Set set = Collectors.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.d0
    public final j$.util.u summaryStatistics() {
        return (j$.util.u) collect(new j$.time.f(13), new o(10), new j$.time.f(28));
    }

    @Override // j$.util.stream.d0
    public final m1 t() {
        Objects.requireNonNull(null);
        return new u(this, z6.p | z6.n, 0);
    }

    @Override // j$.util.stream.d0
    public final double[] toArray() {
        return (double[]) v3.J((a2) D(new o(1))).b();
    }

    @Override // j$.util.stream.d0
    public final IntStream w() {
        Objects.requireNonNull(null);
        return new t(this, z6.p | z6.n, 0);
    }

    @Override // j$.util.stream.d0
    public final boolean y() {
        return ((Boolean) C(v3.P(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.d0
    public final j$.util.y reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.y) C(new y3(a7.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }
}
