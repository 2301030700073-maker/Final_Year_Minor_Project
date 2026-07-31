package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.LongConsumer;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class w3 implements l8 {
    public static final y2 a = new y2();
    public static final w2 b = new w2();
    public static final x2 c = new x2();
    public static final v2 d = new v2();
    public static final int[] e = new int[0];
    public static final long[] f = new long[0];
    public static final double[] g = new double[0];

    public static c2 A(a aVar, Spliterator spliterator, boolean z) {
        long v = aVar.v(spliterator);
        if (v < 0 || !spliterator.hasCharacteristics(16384)) {
            c2 c2Var = (c2) new l2(aVar, spliterator, new d1(7), new d1(8), 1).invoke();
            return z ? H(c2Var) : c2Var;
        }
        if (v >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        int[] iArr = new int[(int) v];
        new o3(spliterator, aVar, iArr).invoke();
        return new b3(iArr);
    }

    public static e2 B(a aVar, Spliterator spliterator, boolean z) {
        long v = aVar.v(spliterator);
        if (v < 0 || !spliterator.hasCharacteristics(16384)) {
            e2 e2Var = (e2) new l2(aVar, spliterator, new d1(9), new d1(10), 2).invoke();
            return z ? I(e2Var) : e2Var;
        }
        if (v >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        long[] jArr = new long[(int) v];
        new p3(spliterator, aVar, jArr).invoke();
        return new k3(jArr);
    }

    public static i2 C(e7 e7Var, g2 g2Var, g2 g2Var2) {
        int i = h2.a[e7Var.ordinal()];
        if (i == 1) {
            return new r2(g2Var, g2Var2);
        }
        if (i == 2) {
            return new o2((c2) g2Var, (c2) g2Var2);
        }
        if (i == 3) {
            return new p2((e2) g2Var, (e2) g2Var2);
        }
        if (i == 4) {
            return new n2((a2) g2Var, (a2) g2Var2);
        }
        throw new IllegalStateException("Unknown shape " + e7Var);
    }

    public static v1 D(long j) {
        return (j < 0 || j >= 2147483639) ? new u2() : new t2(j);
    }

    public static z2 E(e7 e7Var) {
        int i = h2.a[e7Var.ordinal()];
        if (i == 1) {
            return a;
        }
        if (i == 2) {
            return b;
        }
        if (i == 3) {
            return c;
        }
        if (i == 4) {
            return d;
        }
        throw new IllegalStateException("Unknown shape " + e7Var);
    }

    public static g2 F(g2 g2Var, IntFunction intFunction) {
        if (g2Var.u() <= 0) {
            return g2Var;
        }
        long count = g2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new v3(g2Var, objArr, 1).invoke();
        return new j2(objArr);
    }

    public static a2 G(a2 a2Var) {
        if (a2Var.u() <= 0) {
            return a2Var;
        }
        long count = a2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        double[] dArr = new double[(int) count];
        new t3(a2Var, dArr, 0).invoke();
        return new s2(dArr);
    }

    public static c2 H(c2 c2Var) {
        if (c2Var.u() <= 0) {
            return c2Var;
        }
        long count = c2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        int[] iArr = new int[(int) count];
        new u3(c2Var, iArr, 0).invoke();
        return new b3(iArr);
    }

    public static e2 I(e2 e2Var) {
        if (e2Var.u() <= 0) {
            return e2Var;
        }
        long count = e2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        long[] jArr = new long[(int) count];
        new t3(e2Var, jArr, 0).invoke();
        return new k3(jArr);
    }

    public static j$.desugar.sun.nio.fs.g J(Function function) {
        j$.desugar.sun.nio.fs.g gVar = new j$.desugar.sun.nio.fs.g(13);
        gVar.b = function;
        return gVar;
    }

    public static w1 K(long j) {
        return (j < 0 || j >= 2147483639) ? new d3() : new c3(j);
    }

    public static x1 L(long j) {
        return (j < 0 || j >= 2147483639) ? new m3() : new l3(j);
    }

    public static j$.nio.file.b0 M(t1 t1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.b0(e7.DOUBLE_VALUE, t1Var, new n1(t1Var, 1));
    }

    public static j$.nio.file.b0 N(t1 t1Var, IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.b0(e7.INT_VALUE, t1Var, new j$.nio.file.b0(6, t1Var, intPredicate));
    }

    public static j$.nio.file.b0 O(t1 t1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.b0(e7.LONG_VALUE, t1Var, new n1(t1Var, 0));
    }

    public static j$.nio.file.b0 P(t1 t1Var, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.b0(e7.REFERENCE, t1Var, new j$.nio.file.b0(7, t1Var, predicate));
    }

    public static void c() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void d(l5 l5Var, Double d2) {
        if (n8.a) {
            n8.a(l5Var.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        l5Var.accept(d2.doubleValue());
    }

    public static void g(m5 m5Var, Integer num) {
        if (n8.a) {
            n8.a(m5Var.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        m5Var.accept(num.intValue());
    }

    public static void i(n5 n5Var, Long l) {
        if (n8.a) {
            n8.a(n5Var.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        n5Var.accept(l.longValue());
    }

    public static void k() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void l() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Object[] m(f2 f2Var, IntFunction intFunction) {
        if (n8.a) {
            n8.a(f2Var.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (f2Var.count() >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) f2Var.count());
        f2Var.n(objArr, 0);
        return objArr;
    }

    public static void n(a2 a2Var, Double[] dArr, int i) {
        if (n8.a) {
            n8.a(a2Var.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) a2Var.b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static void o(c2 c2Var, Integer[] numArr, int i) {
        if (n8.a) {
            n8.a(c2Var.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) c2Var.b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static void p(e2 e2Var, Long[] lArr, int i) {
        if (n8.a) {
            n8.a(e2Var.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) e2Var.b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static void q(a2 a2Var, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            a2Var.g((DoubleConsumer) consumer);
        } else {
            if (n8.a) {
                n8.a(a2Var.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.t0) a2Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void r(c2 c2Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            c2Var.g((IntConsumer) consumer);
        } else {
            if (n8.a) {
                n8.a(c2Var.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((Spliterator.OfInt) c2Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void s(e2 e2Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            e2Var.g((LongConsumer) consumer);
        } else {
            if (n8.a) {
                n8.a(e2Var.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.y0) e2Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static a2 t(a2 a2Var, long j, long j2) {
        if (j == 0 && j2 == a2Var.count()) {
            return a2Var;
        }
        long j3 = j2 - j;
        j$.util.t0 t0Var = (j$.util.t0) a2Var.spliterator();
        v1 D = D(j3);
        D.c(j3);
        for (int i = 0; i < j && t0Var.tryAdvance((DoubleConsumer) new z1(0)); i++) {
        }
        if (j2 == a2Var.count()) {
            t0Var.forEachRemaining((DoubleConsumer) D);
        } else {
            for (int i2 = 0; i2 < j3 && t0Var.tryAdvance((DoubleConsumer) D); i2++) {
            }
        }
        D.end();
        return D.build();
    }

    public static c2 u(c2 c2Var, long j, long j2) {
        if (j == 0 && j2 == c2Var.count()) {
            return c2Var;
        }
        long j3 = j2 - j;
        Spliterator.OfInt ofInt = (Spliterator.OfInt) c2Var.spliterator();
        w1 K = K(j3);
        K.c(j3);
        for (int i = 0; i < j && ofInt.tryAdvance((IntConsumer) new b2(0)); i++) {
        }
        if (j2 == c2Var.count()) {
            ofInt.forEachRemaining((IntConsumer) K);
        } else {
            for (int i2 = 0; i2 < j3 && ofInt.tryAdvance((IntConsumer) K); i2++) {
            }
        }
        K.end();
        return K.build();
    }

    public static e2 v(e2 e2Var, long j, long j2) {
        if (j == 0 && j2 == e2Var.count()) {
            return e2Var;
        }
        long j3 = j2 - j;
        j$.util.y0 y0Var = (j$.util.y0) e2Var.spliterator();
        x1 L = L(j3);
        L.c(j3);
        int i = 0;
        for (int i2 = 0; i2 < j && y0Var.tryAdvance((LongConsumer) new d2(i)); i2++) {
        }
        if (j2 == e2Var.count()) {
            y0Var.forEachRemaining((LongConsumer) L);
        } else {
            while (i < j3 && y0Var.tryAdvance((LongConsumer) L)) {
                i++;
            }
        }
        L.end();
        return L.build();
    }

    public static g2 w(g2 g2Var, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == g2Var.count()) {
            return g2Var;
        }
        Spliterator spliterator = g2Var.spliterator();
        long j3 = j2 - j;
        y1 x = x(j3, intFunction);
        x.c(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new d1(3)); i++) {
        }
        if (j2 == g2Var.count()) {
            spliterator.forEachRemaining(x);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(x); i2++) {
            }
        }
        x.end();
        return x.build();
    }

    public static y1 x(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new s3() : new a3(j, intFunction);
    }

    public static g2 y(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long v = aVar.v(spliterator);
        if (v < 0 || !spliterator.hasCharacteristics(16384)) {
            m0 m0Var = new m0();
            m0Var.a = intFunction;
            g2 g2Var = (g2) new l2(aVar, spliterator, m0Var, new d1(11), 3).invoke();
            return z ? F(g2Var, intFunction) : g2Var;
        }
        if (v >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) v);
        new q3(spliterator, aVar, objArr).invoke();
        return new j2(objArr);
    }

    public static a2 z(a aVar, Spliterator spliterator, boolean z) {
        long v = aVar.v(spliterator);
        if (v < 0 || !spliterator.hasCharacteristics(16384)) {
            a2 a2Var = (a2) new l2(aVar, spliterator, new d1(5), new d1(6), 0).invoke();
            return z ? G(a2Var) : a2Var;
        }
        if (v >= 2147483639) {
            j$.nio.file.m.c("Stream size exceeds max array size");
            return null;
        }
        double[] dArr = new double[(int) v];
        new n3(spliterator, aVar, dArr).invoke();
        return new s2(dArr);
    }

    public abstract r4 Q();

    @Override // j$.util.stream.l8
    public Object a(a aVar, Spliterator spliterator) {
        r4 Q = Q();
        aVar.N(spliterator, Q);
        return Q.get();
    }

    @Override // j$.util.stream.l8
    public Object b(a aVar, Spliterator spliterator) {
        return ((r4) new y4(this, aVar, spliterator).invoke()).get();
    }

    @Override // j$.util.stream.l8
    public /* synthetic */ int f() {
        return 0;
    }
}
