package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;
import java.util.function.Predicate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class v3 implements f8 {
    public static final y2 a = new y2();
    public static final w2 b = new w2();
    public static final x2 c = new x2();
    public static final v2 d = new v2();
    public static final int[] e = new int[0];
    public static final long[] f = new long[0];
    public static final double[] g = new double[0];

    public static long A(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    public static g2 B(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long B = aVar.B(spliterator);
        if (B < 0 || !spliterator.hasCharacteristics(16384)) {
            l0 l0Var = new l0();
            l0Var.a = intFunction;
            g2 g2Var = (g2) new l2(aVar, spliterator, l0Var, new w0(21), 3).invoke();
            return z ? J(g2Var, intFunction) : g2Var;
        }
        if (B >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) B);
        new q3(spliterator, aVar, objArr).invoke();
        return new j2(objArr);
    }

    public static a2 C(a aVar, Spliterator spliterator, boolean z) {
        long B = aVar.B(spliterator);
        if (B < 0 || !spliterator.hasCharacteristics(16384)) {
            a2 a2Var = (a2) new l2(aVar, spliterator, new w0(15), new w0(16), 0).invoke();
            return z ? K(a2Var) : a2Var;
        }
        if (B >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        double[] dArr = new double[(int) B];
        new n3(spliterator, aVar, dArr).invoke();
        return new s2(dArr);
    }

    public static c2 D(a aVar, Spliterator spliterator, boolean z) {
        long B = aVar.B(spliterator);
        if (B < 0 || !spliterator.hasCharacteristics(16384)) {
            c2 c2Var = (c2) new l2(aVar, spliterator, new w0(17), new w0(18), 1).invoke();
            return z ? L(c2Var) : c2Var;
        }
        if (B >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        int[] iArr = new int[(int) B];
        new o3(spliterator, aVar, iArr).invoke();
        return new b3(iArr);
    }

    public static e2 E(a aVar, Spliterator spliterator, boolean z) {
        long B = aVar.B(spliterator);
        if (B < 0 || !spliterator.hasCharacteristics(16384)) {
            e2 e2Var = (e2) new l2(aVar, spliterator, new w0(19), new w0(20), 2).invoke();
            return z ? M(e2Var) : e2Var;
        }
        if (B >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        long[] jArr = new long[(int) B];
        new p3(spliterator, aVar, jArr).invoke();
        return new k3(jArr);
    }

    public static i2 F(a7 a7Var, g2 g2Var, g2 g2Var2) {
        int i = h2.a[a7Var.ordinal()];
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
        throw new IllegalStateException("Unknown shape " + a7Var);
    }

    public static v1 G(long j) {
        return (j < 0 || j >= 2147483639) ? new u2() : new t2(j);
    }

    public static z2 H(a7 a7Var) {
        int i = h2.a[a7Var.ordinal()];
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
        throw new IllegalStateException("Unknown shape " + a7Var);
    }

    public static int I(long j) {
        return (j != -1 ? z6.u : 0) | z6.t;
    }

    public static g2 J(g2 g2Var, IntFunction intFunction) {
        if (g2Var.s() <= 0) {
            return g2Var;
        }
        long count = g2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new u3(g2Var, objArr, 1).invoke();
        return new j2(objArr);
    }

    public static a2 K(a2 a2Var) {
        if (a2Var.s() <= 0) {
            return a2Var;
        }
        long count = a2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        double[] dArr = new double[(int) count];
        new t3(a2Var, dArr, 0).invoke();
        return new s2(dArr);
    }

    public static c2 L(c2 c2Var) {
        if (c2Var.s() <= 0) {
            return c2Var;
        }
        long count = c2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        int[] iArr = new int[(int) count];
        new t3(c2Var, iArr, 0).invoke();
        return new b3(iArr);
    }

    public static e2 M(e2 e2Var) {
        if (e2Var.s() <= 0) {
            return e2Var;
        }
        long count = e2Var.count();
        if (count >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        long[] jArr = new long[(int) count];
        new t3(e2Var, jArr, 0).invoke();
        return new k3(jArr);
    }

    public static j$.desugar.sun.nio.fs.g N(Function function) {
        j$.desugar.sun.nio.fs.g gVar = new j$.desugar.sun.nio.fs.g(8);
        gVar.b = function;
        return gVar;
    }

    public static w1 O(long j) {
        return (j < 0 || j >= 2147483639) ? new d3() : new c3(j);
    }

    public static x1 P(long j) {
        return (j < 0 || j >= 2147483639) ? new m3() : new l3(j);
    }

    public static j$.nio.file.x Q(t1 t1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.x(a7.DOUBLE_VALUE, t1Var, new n1(t1Var, 2));
    }

    public static t5 R(a0 a0Var, long j, long j2) {
        if (j >= 0) {
            return new t5(a0Var, I(j2), j, j2);
        }
        j$.nio.file.j.a(j);
        return null;
    }

    public static j$.nio.file.x S(t1 t1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.x(a7.INT_VALUE, t1Var, new n1(t1Var, 1));
    }

    public static p5 T(b1 b1Var, long j, long j2) {
        if (j >= 0) {
            return new p5(b1Var, I(j2), j, j2);
        }
        j$.nio.file.j.a(j);
        return null;
    }

    public static j$.nio.file.x U(t1 t1Var) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.x(a7.LONG_VALUE, t1Var, new n1(t1Var, 0));
    }

    public static r5 V(j1 j1Var, long j, long j2) {
        if (j >= 0) {
            return new r5(j1Var, I(j2), j, j2);
        }
        j$.nio.file.j.a(j);
        return null;
    }

    public static j$.nio.file.x W(t1 t1Var, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(t1Var);
        return new j$.nio.file.x(a7.REFERENCE, t1Var, new j$.nio.file.x(7, t1Var, predicate));
    }

    public static n5 X(d5 d5Var, long j, long j2) {
        if (j >= 0) {
            return new n5(d5Var, I(j2), j, j2);
        }
        j$.nio.file.j.a(j);
        return null;
    }

    public static void c() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void d(i5 i5Var, Double d2) {
        if (h8.a) {
            h8.a(i5Var.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        i5Var.accept(d2.doubleValue());
    }

    public static void g(j5 j5Var, Integer num) {
        if (h8.a) {
            h8.a(j5Var.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        j5Var.accept(num.intValue());
    }

    public static void i(k5 k5Var, Long l) {
        if (h8.a) {
            h8.a(k5Var.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        k5Var.accept(l.longValue());
    }

    public static void k() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static void l() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Object[] m(f2 f2Var, IntFunction intFunction) {
        if (h8.a) {
            h8.a(f2Var.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (f2Var.count() >= 2147483639) {
            j$.nio.file.j.c("Stream size exceeds max array size");
            return null;
        }
        Object[] objArr = (Object[]) intFunction.apply((int) f2Var.count());
        f2Var.m(objArr, 0);
        return objArr;
    }

    public static void n(a2 a2Var, Double[] dArr, int i) {
        if (h8.a) {
            h8.a(a2Var.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) a2Var.b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static void o(c2 c2Var, Integer[] numArr, int i) {
        if (h8.a) {
            h8.a(c2Var.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) c2Var.b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static void p(e2 e2Var, Long[] lArr, int i) {
        if (h8.a) {
            h8.a(e2Var.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
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
            if (h8.a) {
                h8.a(a2Var.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.s0) a2Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void r(c2 c2Var, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            c2Var.g((IntConsumer) consumer);
        } else {
            if (h8.a) {
                h8.a(c2Var.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.v0) c2Var.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void s(e2 e2Var, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            e2Var.g((LongConsumer) consumer);
        } else {
            if (h8.a) {
                h8.a(e2Var.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
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
        j$.util.s0 s0Var = (j$.util.s0) a2Var.spliterator();
        v1 G = G(j3);
        G.c(j3);
        int i = 0;
        for (int i2 = 0; i2 < j && s0Var.tryAdvance((DoubleConsumer) new z1(i)); i2++) {
        }
        if (j2 == a2Var.count()) {
            s0Var.forEachRemaining((DoubleConsumer) G);
        } else {
            while (i < j3 && s0Var.tryAdvance((DoubleConsumer) G)) {
                i++;
            }
        }
        G.end();
        return G.build();
    }

    public static c2 u(c2 c2Var, long j, long j2) {
        if (j == 0 && j2 == c2Var.count()) {
            return c2Var;
        }
        long j3 = j2 - j;
        j$.util.v0 v0Var = (j$.util.v0) c2Var.spliterator();
        w1 O = O(j3);
        O.c(j3);
        int i = 0;
        for (int i2 = 0; i2 < j && v0Var.tryAdvance((IntConsumer) new b2(i)); i2++) {
        }
        if (j2 == c2Var.count()) {
            v0Var.forEachRemaining((IntConsumer) O);
        } else {
            while (i < j3 && v0Var.tryAdvance((IntConsumer) O)) {
                i++;
            }
        }
        O.end();
        return O.build();
    }

    public static e2 v(e2 e2Var, long j, long j2) {
        if (j == 0 && j2 == e2Var.count()) {
            return e2Var;
        }
        long j3 = j2 - j;
        j$.util.y0 y0Var = (j$.util.y0) e2Var.spliterator();
        x1 P = P(j3);
        P.c(j3);
        int i = 0;
        for (int i2 = 0; i2 < j && y0Var.tryAdvance((LongConsumer) new d2(i)); i2++) {
        }
        if (j2 == e2Var.count()) {
            y0Var.forEachRemaining((LongConsumer) P);
        } else {
            while (i < j3 && y0Var.tryAdvance((LongConsumer) P)) {
                i++;
            }
        }
        P.end();
        return P.build();
    }

    public static g2 w(g2 g2Var, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == g2Var.count()) {
            return g2Var;
        }
        Spliterator spliterator = g2Var.spliterator();
        long j3 = j2 - j;
        y1 z = z(j3, intFunction);
        z.c(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new w0(13)); i++) {
        }
        if (j2 == g2Var.count()) {
            spliterator.forEachRemaining(z);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(z); i2++) {
            }
        }
        z.end();
        return z.build();
    }

    public static long x(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    public static Spliterator y(a7 a7Var, Spliterator spliterator, long j, long j2) {
        long A = A(j, j2);
        int i = u5.a[a7Var.ordinal()];
        if (i == 1) {
            return new t7(spliterator, j, A);
        }
        if (i == 2) {
            return new q7((j$.util.v0) spliterator, j, A);
        }
        if (i == 3) {
            return new r7((j$.util.y0) spliterator, j, A);
        }
        if (i == 4) {
            return new p7((j$.util.s0) spliterator, j, A);
        }
        throw new IllegalStateException("Unknown shape " + a7Var);
    }

    public static y1 z(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new s3() : new a3(j, intFunction);
    }

    public abstract q4 Y();

    @Override // j$.util.stream.f8
    public Object a(a aVar, Spliterator spliterator) {
        q4 Y = Y();
        aVar.Q(spliterator, Y);
        return Y.get();
    }

    @Override // j$.util.stream.f8
    public Object b(a aVar, Spliterator spliterator) {
        return ((q4) new x4(this, aVar, spliterator).invoke()).get();
    }

    @Override // j$.util.stream.f8
    public /* synthetic */ int f() {
        return 0;
    }
}
