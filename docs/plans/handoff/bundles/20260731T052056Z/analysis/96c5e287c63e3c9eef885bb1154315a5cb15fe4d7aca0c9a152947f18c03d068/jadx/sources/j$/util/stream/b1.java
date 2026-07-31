package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class b1 extends a implements IntStream {
    public static j$.util.u0 T(Spliterator spliterator) {
        if (spliterator instanceof j$.util.u0) {
            return (j$.util.u0) spliterator;
        }
        if (!h8.a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        h8.a(a.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    @Override // j$.util.stream.a
    public final g2 E(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.C(aVar, spliterator, z);
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        IntConsumer f0Var;
        boolean e;
        j$.util.u0 T = T(spliterator);
        if (l5Var instanceof IntConsumer) {
            f0Var = (IntConsumer) l5Var;
        } else {
            if (h8.a) {
                h8.a(a.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(l5Var);
            f0Var = new j$.util.f0(l5Var, 1);
        }
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (T.tryAdvance(f0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.INT_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.N(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new m7(aVar, supplier, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = x8.a;
        Objects.requireNonNull(null);
        return new e6(this, x8.a, 1);
    }

    @Override // j$.util.stream.IntStream
    public final d0 asDoubleStream() {
        return new w(this, 0, 2);
    }

    @Override // j$.util.stream.IntStream
    public final m1 asLongStream() {
        return new u(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.y average() {
        long j = ((long[]) collect(new o(26), new o(27), new o(28)))[0];
        return j > 0 ? new j$.util.y(r4[1] / j) : j$.util.y.c;
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new q(this, 0, new w0(0), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        Objects.requireNonNull(null);
        return new t(this, z6.t, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(pVar);
        return C(new a4(a7.INT_VALUE, pVar, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) C(new c4(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream d() {
        int i = x8.a;
        Objects.requireNonNull(null);
        return new e6(this, x8.b, 2);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((d5) boxed()).distinct().mapToInt(new o(29));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream e() {
        Objects.requireNonNull(null);
        return new t(this, z6.p | z6.n, 1);
    }

    @Override // j$.util.stream.IntStream
    public final d0 f() {
        Objects.requireNonNull(null);
        return new w(this, z6.p | z6.n, 3);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.z findAny() {
        return (j$.util.z) C(g0.d);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.z findFirst() {
        return (j$.util.z) C(g0.c);
    }

    @Override // j$.util.stream.IntStream
    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        C(new n0(intConsumer, false));
    }

    @Override // j$.util.stream.IntStream
    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        C(new n0(intConsumer, true));
    }

    @Override // j$.util.stream.IntStream
    public final m1 i() {
        Objects.requireNonNull(null);
        return new u(this, z6.p | z6.n, 2);
    }

    @Override // j$.util.stream.g
    public final j$.util.i0 iterator() {
        j$.util.u0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.d1(spliterator);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return v3.S(this, 0L, j);
        }
        j$.time.h.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.IntStream
    public final boolean m() {
        return ((Boolean) C(v3.R(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new q(this, z6.p | z6.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.z max() {
        return reduce(new o(25));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.z min() {
        return reduce(new o(21));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream o(l0 l0Var) {
        Objects.requireNonNull(l0Var);
        return new u0(this, z6.p | z6.n | z6.t, l0Var, 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new u0(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final boolean q() {
        return ((Boolean) C(v3.R(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) C(new l4(a7.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.S(this, j, -1L);
        }
        j$.time.h.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new e6(this, z6.q | z6.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final j$.util.u0 spliterator() {
        return T(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new o(24));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.v summaryStatistics() {
        return (j$.util.v) collect(new j$.time.f(18), new o(22), new o(23));
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) v3.K((c2) D(new o(20))).b();
    }

    @Override // j$.util.stream.IntStream
    public final boolean v() {
        return ((Boolean) C(v3.R(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.z reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (j$.util.z) C(new y3(a7.INT_VALUE, intBinaryOperator, 3));
    }
}
