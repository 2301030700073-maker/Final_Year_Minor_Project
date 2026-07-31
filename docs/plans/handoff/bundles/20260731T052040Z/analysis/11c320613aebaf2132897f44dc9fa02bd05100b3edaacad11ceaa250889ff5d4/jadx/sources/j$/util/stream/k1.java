package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class k1 extends a implements LongStream {
    public static j$.util.y0 Q(Spliterator spliterator) {
        if (spliterator instanceof j$.util.y0) {
            return (j$.util.y0) spliterator;
        }
        if (!n8.a) {
            throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
        }
        n8.a(a.class, "using LongStream.adapt(Spliterator<Long> s)");
        throw null;
    }

    @Override // j$.util.stream.a
    public final boolean C(Spliterator spliterator, o5 o5Var) {
        LongConsumer l0Var;
        boolean e;
        j$.util.y0 Q = Q(spliterator);
        if (o5Var instanceof LongConsumer) {
            l0Var = (LongConsumer) o5Var;
        } else {
            if (n8.a) {
                n8.a(a.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(o5Var);
            l0Var = new j$.util.l0(o5Var, 1);
        }
        do {
            e = o5Var.e();
            if (e) {
                break;
            }
        } while (Q.tryAdvance(l0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final e7 E() {
        return e7.LONG_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 F(long j, IntFunction intFunction) {
        return w3.L(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator M(a aVar, Supplier supplier, boolean z) {
        return new s7(aVar, supplier, z);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream a() {
        int i = j9.a;
        Objects.requireNonNull(null);
        return new j6(this, j9.a, 1);
    }

    @Override // j$.util.stream.LongStream
    public final e0 asDoubleStream() {
        return new x(this, d7.n, 4);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.b0 average() {
        long j = ((long[]) collect(new r(26), new r(27), new r(28)))[0];
        return j > 0 ? new j$.util.b0(r4[1] / j) : j$.util.b0.c;
    }

    @Override // j$.util.stream.LongStream
    public final LongStream b() {
        Objects.requireNonNull(null);
        return new v(this, d7.t, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new q(this, 0, new r(25), 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream c() {
        int i = j9.a;
        Objects.requireNonNull(null);
        return new j6(this, j9.b, 2);
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(pVar);
        return p(new b4(e7.LONG_VALUE, pVar, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) p(new d4(0))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream d(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new g1(this, d7.p | d7.n | d7.t, gVar, 0);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((g5) boxed()).distinct().mapToLong(new d1(2));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.c0 findAny() {
        return (j$.util.c0) p(i0.d);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.c0 findFirst() {
        return (j$.util.c0) p(i0.c);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        p(new p0(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        p(new p0(longConsumer, true));
    }

    @Override // j$.util.stream.LongStream
    public final e0 g() {
        Objects.requireNonNull(null);
        return new x(this, d7.p | d7.n, 5);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator<Long> iterator2() {
        j$.util.y0 spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.f1(spliterator);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j >= 0) {
            return z5.g(this, 0L, j);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new q(this, d7.p | d7.n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.c0 max() {
        return reduce(new r(29));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.c0 min() {
        return reduce(new d1(1));
    }

    @Override // j$.util.stream.LongStream
    public final boolean n() {
        return ((Boolean) p(w3.O(t1.ALL))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new g1(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final boolean q() {
        return ((Boolean) p(w3.O(t1.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) p(new x3(e7.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : z5.g(this, j, -1L);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new j6(this, d7.q | d7.o, 0);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final j$.util.y0 spliterator() {
        return Q(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new d1(0));
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.z summaryStatistics() {
        return (j$.util.z) collect(new j(6), new r(22), new r(23));
    }

    @Override // j$.util.stream.a
    public final g2 t(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return w3.B(aVar, spliterator, z);
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) w3.I((e2) r(new r(24))).b();
    }

    @Override // j$.util.stream.LongStream
    public final LongStream w() {
        Objects.requireNonNull(null);
        return new v(this, d7.p | d7.n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final boolean x() {
        return ((Boolean) p(w3.O(t1.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final IntStream z() {
        Objects.requireNonNull(null);
        return new u(this, d7.p | d7.n, 2);
    }

    @Override // j$.util.stream.LongStream
    public final j$.util.c0 reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (j$.util.c0) p(new z3(e7.LONG_VALUE, longBinaryOperator, 0));
    }
}
