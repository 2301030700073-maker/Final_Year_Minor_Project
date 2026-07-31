package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class b1 extends a implements IntStream {
    public static j$.util.v0 T(Spliterator spliterator) {
        if (spliterator instanceof j$.util.v0) {
            return (j$.util.v0) spliterator;
        }
        if (!h8.a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        h8.a(a.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        IntConsumer g0Var;
        boolean e;
        j$.util.v0 T = T(spliterator);
        if (l5Var instanceof IntConsumer) {
            g0Var = (IntConsumer) l5Var;
        } else {
            if (h8.a) {
                h8.a(a.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(l5Var);
            g0Var = new j$.util.g0(l5Var, 1);
        }
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (T.tryAdvance(g0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.INT_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.O(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new m7(aVar, supplier, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream a() {
        int i = a9.a;
        Objects.requireNonNull(null);
        return new e6(this, a9.a, 1);
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
    public final j$.util.z average() {
        long j = ((long[]) collect(new o(27), new o(28), new o(29)))[0];
        return j > 0 ? new j$.util.z(r4[1] / j) : j$.util.z.c;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream b() {
        Objects.requireNonNull(null);
        return new t(this, z6.t, 2);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new q(this, 0, new w0(1), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream c() {
        int i = a9.a;
        Objects.requireNonNull(null);
        return new e6(this, a9.b, 2);
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(pVar);
        return q(new a4(a7.INT_VALUE, pVar, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) q(new c4(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((d5) boxed()).distinct().mapToInt(new w0(0));
    }

    @Override // j$.util.stream.IntStream
    public final d0 e() {
        Objects.requireNonNull(null);
        return new w(this, z6.p | z6.n, 3);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.a0 findAny() {
        return (j$.util.a0) q(g0.d);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.a0 findFirst() {
        return (j$.util.a0) q(g0.c);
    }

    @Override // j$.util.stream.IntStream
    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        q(new n0(intConsumer, false));
    }

    @Override // j$.util.stream.IntStream
    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        q(new n0(intConsumer, true));
    }

    @Override // j$.util.stream.IntStream
    public final m1 h() {
        Objects.requireNonNull(null);
        return new u(this, z6.p | z6.n, 2);
    }

    @Override // j$.util.stream.g
    public final j$.util.j0 iterator() {
        j$.util.v0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.e1(spliterator);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return v3.T(this, 0L, j);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream map(IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new u0(this, z6.p | z6.n, intUnaryOperator, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new q(this, z6.p | z6.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.a0 max() {
        return reduce(new o(26));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.a0 min() {
        return reduce(new o(22));
    }

    @Override // j$.util.stream.IntStream
    public final boolean n() {
        return ((Boolean) q(v3.S(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new u0(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream r(l0 l0Var) {
        Objects.requireNonNull(l0Var);
        return new u0(this, z6.p | z6.n | z6.t, l0Var, 2);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) q(new l4(a7.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean s() {
        return ((Boolean) q(v3.S(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.T(this, j, -1L);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new e6(this, z6.q | z6.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final j$.util.v0 spliterator() {
        return T(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new o(25));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.w summaryStatistics() {
        return (j$.util.w) collect(new j$.desugar.sun.nio.fs.m(22), new o(23), new o(24));
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) v3.L((c2) t(new o(21))).b();
    }

    @Override // j$.util.stream.a
    public final g2 v(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.D(aVar, spliterator, z);
    }

    @Override // j$.util.stream.IntStream
    public final boolean z() {
        return ((Boolean) q(v3.S(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.a0 reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (j$.util.a0) q(new y3(a7.INT_VALUE, intBinaryOperator, 3));
    }
}
