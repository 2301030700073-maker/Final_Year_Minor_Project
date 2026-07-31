package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class b0 extends a implements e0 {
    public static j$.util.t0 Q(Spliterator spliterator) {
        if (spliterator instanceof j$.util.t0) {
            return (j$.util.t0) spliterator;
        }
        if (!n8.a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        n8.a(a.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.e0
    public final boolean B() {
        return ((Boolean) p(w3.M(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.a
    public final boolean C(Spliterator spliterator, o5 o5Var) {
        DoubleConsumer d0Var;
        boolean e;
        j$.util.t0 Q = Q(spliterator);
        if (o5Var instanceof DoubleConsumer) {
            d0Var = (DoubleConsumer) o5Var;
        } else {
            if (n8.a) {
                n8.a(a.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(o5Var);
            d0Var = new j$.util.d0(o5Var, 1);
        }
        do {
            e = o5Var.e();
            if (e) {
                break;
            }
        } while (Q.tryAdvance(d0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final e7 E() {
        return e7.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 F(long j, IntFunction intFunction) {
        return w3.D(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator M(a aVar, Supplier supplier, boolean z) {
        return new o7(aVar, supplier, z);
    }

    @Override // j$.util.stream.e0
    public final e0 a() {
        int i = j9.a;
        Objects.requireNonNull(null);
        return new h6(this, j9.a, 1);
    }

    @Override // j$.util.stream.e0
    public final j$.util.b0 average() {
        double[] dArr = (double[]) collect(new j(28), new j(29), new r(0));
        return dArr[2] > 0.0d ? new j$.util.b0(Collectors.a(dArr) / dArr[2]) : j$.util.b0.c;
    }

    @Override // j$.util.stream.e0
    public final e0 b() {
        Objects.requireNonNull(null);
        return new x(this, d7.t, 1);
    }

    @Override // j$.util.stream.e0
    public final Stream boxed() {
        return new q(this, 0, new j(20), 0);
    }

    @Override // j$.util.stream.e0
    public final e0 c() {
        int i = j9.a;
        Objects.requireNonNull(null);
        return new h6(this, j9.b, 2);
    }

    @Override // j$.util.stream.e0
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(pVar);
        return p(new b4(e7.DOUBLE_VALUE, pVar, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.e0
    public final long count() {
        return ((Long) p(new d4(1))).longValue();
    }

    @Override // j$.util.stream.e0
    public final e0 d(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new s(this, d7.p | d7.n | d7.t, gVar, 1);
    }

    @Override // j$.util.stream.e0
    public final e0 distinct() {
        return ((g5) boxed()).distinct().mapToDouble(new j(21));
    }

    @Override // j$.util.stream.e0
    public final j$.util.b0 findAny() {
        return (j$.util.b0) p(g0.d);
    }

    @Override // j$.util.stream.e0
    public final j$.util.b0 findFirst() {
        return (j$.util.b0) p(g0.c);
    }

    @Override // j$.util.stream.e0
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        p(new n0(doubleConsumer, false));
    }

    @Override // j$.util.stream.e0
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        p(new n0(doubleConsumer, true));
    }

    @Override // j$.util.stream.e0
    public final boolean i() {
        return ((Boolean) p(w3.M(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final j$.util.g0 iterator2() {
        j$.util.t0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.g1(spliterator);
    }

    @Override // j$.util.stream.e0
    public final e0 limit(long j) {
        if (j >= 0) {
            return z5.e(this, 0L, j);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.e0
    public final e0 map(DoubleUnaryOperator doubleUnaryOperator) {
        Objects.requireNonNull(doubleUnaryOperator);
        return new s(this, d7.p | d7.n, doubleUnaryOperator, 0);
    }

    @Override // j$.util.stream.e0
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new q(this, d7.p | d7.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.e0
    public final j$.util.b0 max() {
        return reduce(new j(23));
    }

    @Override // j$.util.stream.e0
    public final j$.util.b0 min() {
        return reduce(new j(27));
    }

    @Override // j$.util.stream.e0
    public final e0 peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new s(this, doubleConsumer);
    }

    @Override // j$.util.stream.e0
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) p(new f4(e7.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.e0
    public final boolean s() {
        return ((Boolean) p(w3.M(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.e0
    public final e0 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : z5.e(this, j, -1L);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.e0
    public final e0 sorted() {
        return new h6(this, d7.q | d7.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final j$.util.t0 spliterator() {
        return Q(super.spliterator());
    }

    @Override // j$.util.stream.e0
    public final double sum() {
        return Collectors.a((double[]) collect(new j(24), new j(25), new j(26)));
    }

    @Override // j$.util.stream.e0
    public final j$.util.w summaryStatistics() {
        return (j$.util.w) collect(new j$.desugar.sun.nio.fs.m(21), new r(1), new j(19));
    }

    @Override // j$.util.stream.a
    public final g2 t(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return w3.z(aVar, spliterator, z);
    }

    @Override // j$.util.stream.e0
    public final double[] toArray() {
        return (double[]) w3.G((a2) r(new j(22))).b();
    }

    @Override // j$.util.stream.e0
    public final LongStream u() {
        Objects.requireNonNull(null);
        return new v(this, d7.p | d7.n, 0);
    }

    @Override // j$.util.stream.e0
    public final IntStream y() {
        Objects.requireNonNull(null);
        return new u(this, d7.p | d7.n, 0);
    }

    @Override // j$.util.stream.e0
    public final j$.util.b0 reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.b0) p(new z3(e7.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }
}
