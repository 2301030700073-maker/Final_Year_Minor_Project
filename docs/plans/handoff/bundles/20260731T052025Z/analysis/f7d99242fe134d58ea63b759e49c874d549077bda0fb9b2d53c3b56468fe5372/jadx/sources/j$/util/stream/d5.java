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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class d5 extends a implements Stream {
    @Override // j$.util.stream.Stream
    public final d0 D(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new r(this, z6.p | z6.n | z6.t, gVar, 4);
    }

    @Override // j$.util.stream.Stream
    public final IntStream F(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new u0(this, z6.p | z6.n | z6.t, gVar, 4);
    }

    @Override // j$.util.stream.a
    public final boolean G(Spliterator spliterator, l5 l5Var) {
        boolean e;
        do {
            e = l5Var.e();
            if (e) {
                break;
            }
        } while (spliterator.tryAdvance(l5Var));
        return e;
    }

    @Override // j$.util.stream.a
    public final a7 H() {
        return a7.REFERENCE;
    }

    @Override // j$.util.stream.a
    public final y1 I(long j, IntFunction intFunction) {
        return v3.z(j, intFunction);
    }

    @Override // j$.util.stream.a
    public final Spliterator P(a aVar, Supplier supplier, boolean z) {
        return new d8(aVar, supplier, z);
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) q(v3.W(t1.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) q(v3.W(t1.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Collector collector2;
        Object q;
        if (this.a.k && collector.characteristics().contains(Collector.Characteristics.CONCURRENT) && (!z6.ORDERED.u(this.f) || collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            q = collector.supplier().get();
            forEach(new j$.nio.file.x(9, collector.accumulator(), q));
            collector2 = collector;
        } else {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            collector2 = collector;
            q = q(new h4(a7.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector2));
        }
        return collector2.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? q : collector2.finisher().apply(q);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) q(new c4(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream d(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new q(this, z6.p | z6.n | z6.t, gVar, 6);
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new m(this, z6.m | z6.t);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = a9.a;
        Objects.requireNonNull(predicate);
        return new i8(this, a9.b, predicate, 1);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new q(this, z6.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) q(i0.d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) q(i0.c);
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        q(new p0(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        q(new p0(consumer, true));
    }

    @Override // j$.util.stream.g
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.d1(spliterator);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return v3.X(this, 0L, j);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.Stream
    public final m1 m(j$.desugar.sun.nio.fs.g gVar) {
        Objects.requireNonNull(gVar);
        return new f1(this, z6.p | z6.n | z6.t, gVar, 2);
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new q(this, z6.p | z6.n, function, 5);
    }

    @Override // j$.util.stream.Stream
    public final d0 mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new r(this, z6.p | z6.n, toDoubleFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new u0(this, z6.p | z6.n, toIntFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final m1 mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new f1(this, z6.p | z6.n, toLongFunction, 3);
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
        return ((Boolean) q(v3.W(t1.NONE, predicate))).booleanValue();
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
        return q(new a4(a7.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : v3.X(this, j, -1L);
        }
        j$.nio.file.j.c(Long.toString(j));
        return null;
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new g6(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = a9.a;
        Objects.requireNonNull(predicate);
        return new i8(this, a9.a, predicate, 0);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return v3.J(t(intFunction), intFunction).p(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final List toList() {
        return Collections.unmodifiableList(new ArrayList(Arrays.asList(toArray())));
    }

    @Override // j$.util.stream.a
    public final g2 v(a aVar, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return v3.B(aVar, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new g6(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new w0(22));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return q(new a4(a7.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) q(new y3(a7.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return q(new a4(a7.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }
}
