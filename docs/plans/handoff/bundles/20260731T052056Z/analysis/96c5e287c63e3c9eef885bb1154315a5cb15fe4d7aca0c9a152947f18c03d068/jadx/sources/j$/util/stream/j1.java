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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class j1 extends a implements m1 {
    public static j$.util.x0 T(Spliterator spliterator) {
        if (spliterator instanceof j$.util.x0) {
            return (j$.util.x0) spliterator;
        }
        if (!h8.a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        h8.a(a.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.a
    public final g2 E(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.D(aVar, spliterator, z);
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        LongConsumer j0Var;
        boolean e;
        j$.util.x0 T = T(spliterator);
        if (l5Var instanceof LongConsumer) {
            j0Var = (LongConsumer) l5Var;
        } else {
            if (h8.a) {
                h8.a(a.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(l5Var);
            j0Var = new j$.util.j0(l5Var, 1);
        }
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (T.tryAdvance(j0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.LONG_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.O(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new o7(aVar, supplier, z);
    }

    @Override // j$.util.stream.m1
    public final m1 a() {
        int i = x8.a;
        Objects.requireNonNull(null);
        return new f6(this, x8.a, 1);
    }

    @Override // j$.util.stream.m1
    public final d0 asDoubleStream() {
        return new w(this, z6.n, 4);
    }

    @Override // j$.util.stream.m1
    public final j$.util.y average() {
        long j = ((long[]) collect(new w0(5), new w0(6), new w0(7)))[0];
        return j > 0 ? new j$.util.y(r4[1] / j) : j$.util.y.c;
    }

    @Override // j$.util.stream.m1
    public final m1 b(j$.util.n nVar) {
        Objects.requireNonNull(nVar);
        return new f1(this, z6.p | z6.n | z6.t, nVar, 0);
    }

    @Override // j$.util.stream.m1
    public final Stream boxed() {
        return new q(this, 0, new w0(4), 2);
    }

    @Override // j$.util.stream.m1
    public final m1 c() {
        Objects.requireNonNull(null);
        return new u(this, z6.t, 5);
    }

    @Override // j$.util.stream.m1
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(pVar);
        return C(new a4(a7.LONG_VALUE, pVar, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.m1
    public final long count() {
        return ((Long) C(new c4(0))).longValue();
    }

    @Override // j$.util.stream.m1
    public final m1 d() {
        int i = x8.a;
        Objects.requireNonNull(null);
        return new f6(this, x8.b, 2);
    }

    @Override // j$.util.stream.m1
    public final m1 distinct() {
        return ((d5) boxed()).distinct().mapToLong(new w0(11));
    }

    @Override // j$.util.stream.m1
    public final m1 e() {
        Objects.requireNonNull(null);
        return new u(this, z6.p | z6.n, 3);
    }

    @Override // j$.util.stream.m1
    public final j$.util.a0 findAny() {
        return (j$.util.a0) C(h0.d);
    }

    @Override // j$.util.stream.m1
    public final j$.util.a0 findFirst() {
        return (j$.util.a0) C(h0.c);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        C(new o0(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        C(new o0(longConsumer, true));
    }

    @Override // j$.util.stream.m1
    public final d0 h() {
        Objects.requireNonNull(null);
        return new w(this, z6.p | z6.n, 5);
    }

    @Override // j$.util.stream.g
    public final j$.util.m0 iterator() {
        j$.util.x0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.e1(spliterator);
    }

    @Override // j$.util.stream.m1
    public final boolean j() {
        return ((Boolean) C(v3.T(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.m1
    public final m1 limit(long j) {
        if (j >= 0) {
            return v3.U(this, 0L, j);
        }
        j$.time.h.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.m1
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new q(this, z6.p | z6.n, longFunction, 2);
    }

    @Override // j$.util.stream.m1
    public final j$.util.a0 max() {
        return reduce(new w0(8));
    }

    @Override // j$.util.stream.m1
    public final j$.util.a0 min() {
        return reduce(new w0(10));
    }

    @Override // j$.util.stream.m1
    public final boolean n() {
        return ((Boolean) C(v3.T(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.m1
    public final m1 peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new f1(this, longConsumer);
    }

    @Override // j$.util.stream.m1
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) C(new w3(a7.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.m1
    public final m1 skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.U(this, j, -1L);
        }
        j$.time.h.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.m1
    public final m1 sorted() {
        return new f6(this, z6.q | z6.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.g
    public final j$.util.x0 spliterator() {
        return T(super.spliterator());
    }

    @Override // j$.util.stream.m1
    public final long sum() {
        return reduce(0L, new w0(9));
    }

    @Override // j$.util.stream.m1
    public final j$.util.x summaryStatistics() {
        return (j$.util.x) collect(new j$.time.f(19), new w0(1), new w0(2));
    }

    @Override // j$.util.stream.m1
    public final long[] toArray() {
        return (long[]) v3.L((e2) D(new w0(3))).b();
    }

    @Override // j$.util.stream.m1
    public final boolean u() {
        return ((Boolean) C(v3.T(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.m1
    public final IntStream x() {
        Objects.requireNonNull(null);
        return new t(this, z6.p | z6.n, 4);
    }

    @Override // j$.util.stream.m1
    public final j$.util.a0 reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.a0) C(new y3(a7.LONG_VALUE, longBinaryOperator, 0));
    }
}
