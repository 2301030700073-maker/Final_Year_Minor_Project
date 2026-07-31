package j$.util.stream;

import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.stream.Collector;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class g5 extends a implements Stream {
    @Override // j$.util.stream.Stream
    public final e0 A(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new s(this, d7.p | d7.n | d7.t, gVar, 4);
    }

    @Override // j$.util.stream.a
    public final boolean C(Spliterator spliterator, o5 o5Var) {
        boolean e;
        do {
            e = o5Var.e();
            if (e) {
                break;
            }
        } while (spliterator.tryAdvance(o5Var));
        return e;
    }

    @Override // j$.util.stream.Stream
    public final IntStream D(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new v0(this, d7.p | d7.n | d7.t, gVar, 5);
    }

    @Override // j$.util.stream.a
    public final e7 E() {
        return e7.REFERENCE;
    }

    @Override // j$.util.stream.a
    public final y1 F(long j, IntFunction intFunction) {
        return w3.x(j, intFunction);
    }

    @Override // j$.util.stream.a
    public final Spliterator M(a aVar, Supplier supplier, boolean z) {
        return new h8(aVar, supplier, z);
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) p(w3.P(t1.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) p(w3.P(t1.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Collector collector2;
        Object p;
        if (this.a.k && collector.characteristics().contains(Collector.Characteristics.CONCURRENT) && (!d7.ORDERED.u(this.f) || collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            p = collector.supplier().get();
            forEach(new j$.nio.file.b0(9, collector.accumulator(), p));
            collector2 = collector;
        } else {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            collector2 = collector;
            p = p(new i4(e7.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector2));
        }
        return collector2.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? p : collector2.finisher().apply(p);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) p(new d4(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new n(this, d7.m | d7.t);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = j9.a;
        Objects.requireNonNull(predicate);
        return new o8(this, j9.b, predicate, 1);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new q(this, d7.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) p(j0.d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) p(j0.c);
    }

    @Override // j$.util.stream.Stream
    public final Stream flatMap(Function function) {
        Objects.requireNonNull(function);
        return new b5(this, d7.p | d7.n | d7.t, function, 1);
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        p(new q0(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        p(new q0(consumer, true));
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final Iterator iterator2() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.d1(spliterator);
    }

    @Override // j$.util.stream.Stream
    public final LongStream k(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new g1(this, d7.p | d7.n | d7.t, gVar, 2);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return z5.h(this, 0L, j);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new b5(this, d7.p | d7.n, function, 0);
    }

    @Override // j$.util.stream.Stream
    public final e0 mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new s(this, d7.p | d7.n, toDoubleFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new v0(this, d7.p | d7.n, toIntFunction, 4);
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new g1(this, d7.p | d7.n, toLongFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 0));
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(comparator, 1));
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) p(w3.P(t1.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new q(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return p(new b4(e7.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : z5.h(this, j, -1L);
        }
        j$.nio.file.m.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new k6(this);
    }

    @Override // j$.util.stream.a
    public final g2 t(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return w3.y(aVar, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = j9.a;
        Objects.requireNonNull(predicate);
        return new o8(this, j9.a, predicate, 0);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return w3.F(r(intFunction), intFunction).q(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final List toList() {
        return Collections.unmodifiableList(new ArrayList(Arrays.asList(toArray())));
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new k6(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new d1(12));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return p(new b4(e7.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) p(new z3(e7.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return p(new b4(e7.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }
}
