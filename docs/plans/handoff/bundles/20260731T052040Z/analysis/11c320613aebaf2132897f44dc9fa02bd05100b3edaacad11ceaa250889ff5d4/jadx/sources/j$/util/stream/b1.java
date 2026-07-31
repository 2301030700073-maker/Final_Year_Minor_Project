package j$.util.stream;

import j$.util.Objects;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class b1 extends a implements IntStream {
    public static Spliterator.OfInt Q(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfInt) {
            return (Spliterator.OfInt) spliterator;
        }
        if (!n8.a) {
            throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
        }
        n8.a(a.class, "using IntStream.adapt(Spliterator<Integer> s)");
        throw null;
    }

    @Override // j$.util.stream.a
    public final boolean C(Spliterator spliterator, o5 o5Var) {
        IntConsumer h0Var;
        boolean e;
        Spliterator.OfInt Q = Q(spliterator);
        if (o5Var instanceof IntConsumer) {
            h0Var = (IntConsumer) o5Var;
        } else {
            if (n8.a) {
                n8.a(a.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(o5Var);
            h0Var = new j$.util.h0(o5Var, 1);
        }
        do {
            e = o5Var.e();
            if (e) {
                break;
            }
        } while (Q.tryAdvance(h0Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final e7 E() {
        return e7.INT_VALUE;
    }

    @Override // j$.util.stream.a
    public final y1 F(long j, IntFunction intFunction) {
        return w3.K(j);
    }

    @Override // j$.util.stream.a
    public final Spliterator M(a aVar, Supplier supplier, boolean z) {
        return new q7(aVar, supplier, z);
    }

    @Override // j$.util.stream.IntStream
    public final boolean allMatch(IntPredicate intPredicate) {
        return ((Boolean) p(w3.N(t1.ALL, intPredicate))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean anyMatch(IntPredicate intPredicate) {
        return ((Boolean) p(w3.N(t1.ANY, intPredicate))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final e0 asDoubleStream() {
        return new x(this, 0, 2);
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new v(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.b0 average() {
        long j = ((long[]) collect(new r(17), new r(18), new r(19)))[0];
        return j > 0 ? new j$.util.b0(r4[1] / j) : j$.util.b0.c;
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new q(this, 0, new r(21), 1);
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        p pVar = new p(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(pVar);
        return p(new b4(e7.INT_VALUE, pVar, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) p(new d4(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((g5) boxed()).distinct().mapToInt(new r(20));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream dropWhile(IntPredicate intPredicate) {
        int i = j9.a;
        Objects.requireNonNull(intPredicate);
        return new t8(this, j9.b, intPredicate);
    }

    @Override // j$.util.stream.IntStream
    public final e0 e() {
        Objects.requireNonNull(null);
        return new x(this, d7.p | d7.n, 3);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream filter(IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        return new v0(this, d7.t, intPredicate, 3);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt findAny() {
        return (OptionalInt) p(h0.d);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt findFirst() {
        return (OptionalInt) p(h0.c);
    }

    @Override // j$.util.stream.IntStream
    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        p(new o0(intConsumer, false));
    }

    @Override // j$.util.stream.IntStream
    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        p(new o0(intConsumer, true));
    }

    @Override // j$.util.stream.IntStream
    public final LongStream h() {
        Objects.requireNonNull(null);
        return new v(this, d7.p | d7.n, 2);
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator, reason: merged with bridge method [inline-methods] */
    public final Iterator<Integer> iterator2() {
        Spliterator.OfInt spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.e1(spliterator);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j >= 0) {
            return z5.f(this, 0L, j);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream map(IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new v0(this, d7.p | d7.n, intUnaryOperator, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new q(this, d7.p | d7.n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt max() {
        return reduce(new r(16));
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt min() {
        return reduce(new r(12));
    }

    @Override // j$.util.stream.IntStream
    public final boolean noneMatch(IntPredicate intPredicate) {
        return ((Boolean) p(w3.N(t1.NONE, intPredicate))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream o(m0 m0Var) {
        Objects.requireNonNull(m0Var);
        return new v0(this, d7.p | d7.n | d7.t, m0Var, 2);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new v0(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) p(new m4(e7.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : z5.f(this, j, -1L);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new i6(this, d7.q | d7.o);
    }

    @Override // j$.util.stream.a, j$.util.stream.BaseStream
    public final Spliterator.OfInt spliterator() {
        return Q(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new r(15));
    }

    @Override // j$.util.stream.IntStream
    public final j$.util.x summaryStatistics() {
        return (j$.util.x) collect(new j$.desugar.sun.nio.fs.m(28), new r(13), new r(14));
    }

    @Override // j$.util.stream.a
    public final g2 t(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return w3.A(aVar, spliterator, z);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream takeWhile(IntPredicate intPredicate) {
        int i = j9.a;
        Objects.requireNonNull(intPredicate);
        return new r8(this, j9.a, intPredicate);
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) w3.H((c2) r(new r(11))).b();
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (OptionalInt) p(new z3(e7.INT_VALUE, intBinaryOperator, 3));
    }
}
