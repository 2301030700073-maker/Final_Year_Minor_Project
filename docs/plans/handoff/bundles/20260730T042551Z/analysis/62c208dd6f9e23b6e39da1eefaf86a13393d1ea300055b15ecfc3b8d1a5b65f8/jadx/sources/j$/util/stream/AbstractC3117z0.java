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

/* renamed from: j$.util.stream.z0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC3117z0 implements P3 {
    private static final C3004c1 a = new C3004c1();
    private static final F0 b = new C2994a1();
    private static final G0 c = new C2999b1();
    private static final E0 d = new Z0();
    private static final int[] e = new int[0];
    private static final long[] f = new long[0];
    private static final double[] g = new double[0];

    public /* synthetic */ AbstractC3117z0() {
    }

    public /* synthetic */ AbstractC3117z0(EnumC3031h3 enumC3031h3) {
    }

    public static void A(InterfaceC3065o2 interfaceC3065o2, Double d2) {
        if (S3.a) {
            S3.a(interfaceC3065o2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC3065o2.accept(d2.doubleValue());
    }

    public static InterfaceC3073q0 A0(AbstractC3002c abstractC3002c, long j, long j2) {
        if (j >= 0) {
            return new C3109x2(abstractC3002c, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static C3107x0 B0(EnumC3102w0 enumC3102w0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC3102w0);
        return new C3107x0(EnumC3031h3.LONG_VALUE, enumC3102w0, new C3062o(4, enumC3102w0, null));
    }

    public static void C(InterfaceC3070p2 interfaceC3070p2, Integer num) {
        if (S3.a) {
            S3.a(interfaceC3070p2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC3070p2.accept(num.intValue());
    }

    public static C3107x0 D0(EnumC3102w0 enumC3102w0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC3102w0);
        return new C3107x0(EnumC3031h3.REFERENCE, enumC3102w0, new C3062o(2, enumC3102w0, predicate));
    }

    public static void E(InterfaceC3075q2 interfaceC3075q2, Long l) {
        if (S3.a) {
            S3.a(interfaceC3075q2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC3075q2.accept(l.longValue());
    }

    public static Stream E0(AbstractC3002c abstractC3002c, long j, long j2) {
        if (j >= 0) {
            return new C3089t2(abstractC3002c, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static void G() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Stream G0(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C3025g2(spliterator, EnumC3026g3.k(spliterator), z);
    }

    public static void H() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static Object[] I(H0 h0, IntFunction intFunction) {
        if (S3.a) {
            S3.a(h0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (h0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) h0.count());
        h0.j(objArr, 0);
        return objArr;
    }

    public static void J(E0 e0, Double[] dArr, int i) {
        if (S3.a) {
            S3.a(e0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) e0.b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    public static void K(F0 f0, Integer[] numArr, int i) {
        if (S3.a) {
            S3.a(f0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) f0.b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    public static void L(G0 g0, Long[] lArr, int i) {
        if (S3.a) {
            S3.a(g0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) g0.b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    public static void M(E0 e0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            e0.g((DoubleConsumer) consumer);
        } else {
            if (S3.a) {
                S3.a(e0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.V) e0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void N(F0 f0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            f0.g((IntConsumer) consumer);
        } else {
            if (S3.a) {
                S3.a(f0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.Y) f0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static void O(G0 g0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            g0.g((LongConsumer) consumer);
        } else {
            if (S3.a) {
                S3.a(g0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((j$.util.b0) g0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static E0 P(E0 e0, long j, long j2) {
        if (j == 0 && j2 == e0.count()) {
            return e0;
        }
        long j3 = j2 - j;
        j$.util.V v = (j$.util.V) e0.spliterator();
        A0 h0 = h0(j3);
        h0.c(j3);
        for (int i = 0; i < j && v.tryAdvance((DoubleConsumer) new C3105w3(1)); i++) {
        }
        if (j2 == e0.count()) {
            v.forEachRemaining((DoubleConsumer) h0);
        } else {
            for (int i2 = 0; i2 < j3 && v.tryAdvance((DoubleConsumer) h0); i2++) {
            }
        }
        h0.end();
        return h0.build();
    }

    public static F0 Q(F0 f0, long j, long j2) {
        if (j == 0 && j2 == f0.count()) {
            return f0;
        }
        long j3 = j2 - j;
        j$.util.Y y = (j$.util.Y) f0.spliterator();
        B0 s0 = s0(j3);
        s0.c(j3);
        for (int i = 0; i < j && y.tryAdvance((IntConsumer) new C3115y3(1)); i++) {
        }
        if (j2 == f0.count()) {
            y.forEachRemaining((IntConsumer) s0);
        } else {
            for (int i2 = 0; i2 < j3 && y.tryAdvance((IntConsumer) s0); i2++) {
            }
        }
        s0.end();
        return s0.build();
    }

    public static G0 R(G0 g0, long j, long j2) {
        if (j == 0 && j2 == g0.count()) {
            return g0;
        }
        long j3 = j2 - j;
        j$.util.b0 b0Var = (j$.util.b0) g0.spliterator();
        C0 u0 = u0(j3);
        u0.c(j3);
        for (int i = 0; i < j && b0Var.tryAdvance((LongConsumer) new A3(1)); i++) {
        }
        if (j2 == g0.count()) {
            b0Var.forEachRemaining((LongConsumer) u0);
        } else {
            for (int i2 = 0; i2 < j3 && b0Var.tryAdvance((LongConsumer) u0); i2++) {
            }
        }
        u0.end();
        return u0.build();
    }

    public static I0 S(I0 i0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == i0.count()) {
            return i0;
        }
        Spliterator spliterator = i0.spliterator();
        long j3 = j2 - j;
        D0 Z = Z(j3, intFunction);
        Z.c(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new C3028h0(5)); i++) {
        }
        if (j2 == i0.count()) {
            spliterator.forEachRemaining(Z);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(Z); i2++) {
            }
        }
        Z.end();
        return Z.build();
    }

    static long W(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    static long X(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    static Spliterator Y(EnumC3031h3 enumC3031h3, Spliterator spliterator, long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        long j4 = j3 >= 0 ? j3 : Long.MAX_VALUE;
        int i = A2.a[enumC3031h3.ordinal()];
        if (i == 1) {
            return new D3(spliterator, j, j4);
        }
        if (i == 2) {
            return new C3120z3((j$.util.Y) spliterator, j, j4);
        }
        if (i == 3) {
            return new B3((j$.util.b0) spliterator, j, j4);
        }
        if (i == 4) {
            return new C3110x3((j$.util.V) spliterator, j, j4);
        }
        throw new IllegalStateException("Unknown shape " + enumC3031h3);
    }

    static D0 Z(long j, IntFunction intFunction) {
        return (j < 0 || j >= 2147483639) ? new C3103w1() : new C3014e1(j, intFunction);
    }

    public static I0 a0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long k0 = abstractC3117z0.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            I0 i0 = (I0) new N0(spliterator, abstractC3117z0, intFunction).invoke();
            return z ? m0(i0, intFunction) : i0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) k0);
        new C3093u1(spliterator, abstractC3117z0, objArr).invoke();
        return new L0(objArr);
    }

    public static E0 b0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        long k0 = abstractC3117z0.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            E0 e0 = (E0) new N0(0, spliterator, abstractC3117z0).invoke();
            return z ? n0(e0) : e0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) k0];
        new C3078r1(spliterator, abstractC3117z0, dArr).invoke();
        return new W0(dArr);
    }

    public static F0 c0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        long k0 = abstractC3117z0.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            F0 f0 = (F0) new N0(1, spliterator, abstractC3117z0).invoke();
            return z ? o0(f0) : f0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) k0];
        new C3083s1(spliterator, abstractC3117z0, iArr).invoke();
        return new C3019f1(iArr);
    }

    public static G0 d0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z) {
        long k0 = abstractC3117z0.k0(spliterator);
        if (k0 < 0 || !spliterator.hasCharacteristics(16384)) {
            G0 g0 = (G0) new N0(2, spliterator, abstractC3117z0).invoke();
            return z ? p0(g0) : g0;
        }
        if (k0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) k0];
        new C3088t1(spliterator, abstractC3117z0, jArr).invoke();
        return new C3064o1(jArr);
    }

    static K0 e0(EnumC3031h3 enumC3031h3, I0 i0, I0 i02) {
        int i = J0.a[enumC3031h3.ordinal()];
        if (i == 1) {
            return new V0(i0, i02);
        }
        if (i == 2) {
            return new S0((F0) i0, (F0) i02);
        }
        if (i == 3) {
            return new T0((G0) i0, (G0) i02);
        }
        if (i == 4) {
            return new R0((E0) i0, (E0) i02);
        }
        throw new IllegalStateException("Unknown shape " + enumC3031h3);
    }

    static A0 h0(long j) {
        return (j < 0 || j >= 2147483639) ? new Y0() : new X0(j);
    }

    public static H i0(j$.util.V v) {
        return new B(v, EnumC3026g3.k(v));
    }

    static AbstractC3009d1 j0(EnumC3031h3 enumC3031h3) {
        I0 i0;
        int i = J0.a[enumC3031h3.ordinal()];
        if (i == 1) {
            return a;
        }
        if (i == 2) {
            i0 = b;
        } else if (i == 3) {
            i0 = c;
        } else {
            if (i != 4) {
                throw new IllegalStateException("Unknown shape " + enumC3031h3);
            }
            i0 = d;
        }
        return (AbstractC3009d1) i0;
    }

    private static int l0(long j) {
        return (j != -1 ? EnumC3026g3.u : 0) | EnumC3026g3.t;
    }

    public static I0 m0(I0 i0, IntFunction intFunction) {
        if (i0.n() <= 0) {
            return i0;
        }
        long count = i0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        new C3113y1(i0, objArr).invoke();
        return new L0(objArr);
    }

    public static E0 n0(E0 e0) {
        if (e0.n() <= 0) {
            return e0;
        }
        long count = e0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) count];
        new C3108x1(e0, dArr).invoke();
        return new W0(dArr);
    }

    public static F0 o0(F0 f0) {
        if (f0.n() <= 0) {
            return f0;
        }
        long count = f0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) count];
        new C3108x1(f0, iArr).invoke();
        return new C3019f1(iArr);
    }

    public static G0 p0(G0 g0) {
        if (g0.n() <= 0) {
            return g0;
        }
        long count = g0.count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) count];
        new C3108x1(g0, jArr).invoke();
        return new C3064o1(jArr);
    }

    public static C2992a q0(Function function) {
        return new C2992a(8, function);
    }

    static B0 s0(long j) {
        return (j < 0 || j >= 2147483639) ? new C3029h1() : new C3024g1(j);
    }

    public static IntStream t0(j$.util.Y y) {
        return new C3003c0(y, EnumC3026g3.k(y));
    }

    static C0 u0(long j) {
        return (j < 0 || j >= 2147483639) ? new C3074q1() : new C3069p1(j);
    }

    public static InterfaceC3073q0 v0(j$.util.b0 b0Var) {
        return new C3043k0(b0Var, EnumC3026g3.k(b0Var));
    }

    public static H w0(AbstractC3002c abstractC3002c, long j, long j2) {
        if (j >= 0) {
            return new C3119z2(abstractC3002c, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static C3107x0 x0(EnumC3102w0 enumC3102w0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC3102w0);
        return new C3107x0(EnumC3031h3.DOUBLE_VALUE, enumC3102w0, new C3062o(3, enumC3102w0, null));
    }

    public static IntStream y0(AbstractC3002c abstractC3002c, long j, long j2) {
        if (j >= 0) {
            return new C3099v2(abstractC3002c, l0(j2), j, j2);
        }
        throw new IllegalArgumentException("Skip must be non-negative: " + j);
    }

    public static void z() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static C3107x0 z0(EnumC3102w0 enumC3102w0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC3102w0);
        return new C3107x0(EnumC3031h3.INT_VALUE, enumC3102w0, new C3062o(1, enumC3102w0, null));
    }

    abstract D0 C0(long j, IntFunction intFunction);

    public abstract U1 F0();

    abstract InterfaceC3079r2 H0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2);

    abstract InterfaceC3079r2 I0(InterfaceC3079r2 interfaceC3079r2);

    abstract void f0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2);

    abstract boolean g0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2);

    @Override // j$.util.stream.P3
    public Object k(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        return ((U1) new C3000b2(this, abstractC3117z0, spliterator).invoke()).get();
    }

    abstract long k0(Spliterator spliterator);

    @Override // j$.util.stream.P3
    public /* synthetic */ int o() {
        return 0;
    }

    abstract int r0();

    @Override // j$.util.stream.P3
    public Object y(AbstractC3117z0 abstractC3117z0, Spliterator spliterator) {
        U1 F0 = F0();
        abstractC3117z0.H0(spliterator, F0);
        return F0.get();
    }
}
