package j$.util.stream;

import j$.util.C3124w;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
abstract class E extends AbstractC3002c implements H {
    E(Spliterator spliterator, int i) {
        super(spliterator, i, false);
    }

    E(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static j$.util.V b1(Spliterator spliterator) {
        if (spliterator instanceof j$.util.V) {
            return (j$.util.V) spliterator;
        }
        if (!S3.a) {
            throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
        }
        S3.a(AbstractC3002c.class, "using DoubleStream.adapt(Spliterator<Double> s)");
        throw null;
    }

    @Override // j$.util.stream.AbstractC3117z0
    final D0 C0(long j, IntFunction intFunction) {
        return AbstractC3117z0.h0(j);
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 M0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3117z0.b0(abstractC3117z0, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean N0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        DoubleConsumer c3086t;
        boolean e;
        j$.util.V b1 = b1(spliterator);
        if (interfaceC3079r2 instanceof DoubleConsumer) {
            c3086t = (DoubleConsumer) interfaceC3079r2;
        } else {
            if (S3.a) {
                S3.a(AbstractC3002c.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC3079r2);
            c3086t = new C3086t(interfaceC3079r2);
        }
        do {
            e = interfaceC3079r2.e();
            if (e) {
                break;
            }
        } while (b1.tryAdvance(c3086t));
        return e;
    }

    @Override // j$.util.stream.AbstractC3002c
    final EnumC3031h3 O0() {
        return EnumC3031h3.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator Y0(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        return new C3080r3(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.H
    public final H a() {
        Objects.requireNonNull(null);
        return new C3101w(this, EnumC3026g3.t, null, 2);
    }

    @Override // j$.util.stream.H
    public final j$.util.A average() {
        double[] dArr = (double[]) collect(new C2997b(4), new C2997b(5), new C2997b(6));
        if (dArr[2] <= 0.0d) {
            return j$.util.A.a();
        }
        Set set = AbstractC3057n.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return j$.util.A.d(d / dArr[2]);
    }

    @Override // j$.util.stream.H
    public final H b(C2992a c2992a) {
        Objects.requireNonNull(c2992a);
        return new C3101w(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, c2992a, 1);
    }

    @Override // j$.util.stream.H
    public final Stream boxed() {
        int i = 0;
        return new C3096v(this, i, new O0(16), i);
    }

    @Override // j$.util.stream.H
    public final H c() {
        Objects.requireNonNull(null);
        return new C3101w(this, EnumC3026g3.p | EnumC3026g3.n, null, 0);
    }

    @Override // j$.util.stream.InterfaceC3032i
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public final H unordered() {
        return !Q0() ? this : new A(this, EnumC3026g3.r, 0);
    }

    @Override // j$.util.stream.H
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C3081s c3081s = new C3081s(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c3081s);
        return K0(new E1(EnumC3031h3.DOUBLE_VALUE, c3081s, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.H
    public final long count() {
        return ((Long) K0(new G1(EnumC3031h3.DOUBLE_VALUE, 1))).longValue();
    }

    @Override // j$.util.stream.H
    public final H distinct() {
        return ((AbstractC3040j2) ((AbstractC3040j2) boxed()).distinct()).mapToDouble(new C2997b(7));
    }

    @Override // j$.util.stream.H
    public final j$.util.A findAny() {
        return (j$.util.A) K0(J.d);
    }

    @Override // j$.util.stream.H
    public final j$.util.A findFirst() {
        return (j$.util.A) K0(J.c);
    }

    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        K0(new P(doubleConsumer, false));
    }

    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        K0(new P(doubleConsumer, true));
    }

    @Override // j$.util.stream.H
    public final boolean h() {
        return ((Boolean) K0(AbstractC3117z0.x0(EnumC3102w0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final j$.util.H iterator() {
        return Spliterators.f(spliterator());
    }

    @Override // j$.util.stream.H
    public final H limit(long j) {
        if (j >= 0) {
            return AbstractC3117z0.w0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.H
    public final boolean m() {
        return ((Boolean) K0(AbstractC3117z0.x0(EnumC3102w0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.H
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C3096v(this, EnumC3026g3.p | EnumC3026g3.n, doubleFunction, 0);
    }

    @Override // j$.util.stream.H
    public final j$.util.A max() {
        return reduce(new O0(15));
    }

    @Override // j$.util.stream.H
    public final j$.util.A min() {
        return reduce(new O0(14));
    }

    @Override // j$.util.stream.H
    public final InterfaceC3073q0 n() {
        Objects.requireNonNull(null);
        return new C3111y(this, EnumC3026g3.p | EnumC3026g3.n, null, 0);
    }

    @Override // j$.util.stream.H
    public final H peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C3101w(this, 0, doubleConsumer, 3);
    }

    @Override // j$.util.stream.H
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) K0(new I1(EnumC3031h3.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.H
    public final j$.util.A reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (j$.util.A) K0(new C1(EnumC3031h3.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.H
    public final H skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC3117z0.w0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.H
    public final H sorted() {
        return new J2(this);
    }

    @Override // j$.util.stream.AbstractC3002c, j$.util.stream.InterfaceC3032i
    public final j$.util.V spliterator() {
        return b1(super.spliterator());
    }

    @Override // j$.util.stream.H
    public final double sum() {
        double[] dArr = (double[]) collect(new C2997b(8), new C2997b(2), new C2997b(3));
        Set set = AbstractC3057n.a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.H
    public final C3124w summaryStatistics() {
        return (C3124w) collect(new O0(8), new O0(17), new O0(18));
    }

    @Override // j$.util.stream.H
    public final double[] toArray() {
        return (double[]) AbstractC3117z0.n0((E0) L0(new C2997b(1))).b();
    }

    @Override // j$.util.stream.H
    public final IntStream u() {
        Objects.requireNonNull(null);
        return new C3106x(this, EnumC3026g3.p | EnumC3026g3.n, null, 0);
    }

    @Override // j$.util.stream.H
    public final boolean w() {
        return ((Boolean) K0(AbstractC3117z0.x0(EnumC3102w0.NONE))).booleanValue();
    }
}
