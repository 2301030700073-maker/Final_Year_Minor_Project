package j$.util.stream;

import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Collector;
import java.util.Comparator;
import java.util.Iterator;
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

/* renamed from: j$.util.stream.j2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC3040j2 extends AbstractC3002c implements Stream {
    AbstractC3040j2(Spliterator spliterator, int i, boolean z) {
        super(spliterator, i, z);
    }

    AbstractC3040j2(AbstractC3002c abstractC3002c, int i) {
        super(abstractC3002c, i);
    }

    @Override // j$.util.stream.AbstractC3117z0
    final D0 C0(long j, IntFunction intFunction) {
        return AbstractC3117z0.Z(j, intFunction);
    }

    @Override // j$.util.stream.AbstractC3002c
    final I0 M0(AbstractC3117z0 abstractC3117z0, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC3117z0.a0(abstractC3117z0, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC3002c
    final boolean N0(Spliterator spliterator, InterfaceC3079r2 interfaceC3079r2) {
        boolean e;
        do {
            e = interfaceC3079r2.e();
            if (e) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC3079r2));
        return e;
    }

    @Override // j$.util.stream.AbstractC3002c
    final EnumC3031h3 O0() {
        return EnumC3031h3.REFERENCE;
    }

    @Override // j$.util.stream.AbstractC3002c
    final Spliterator Y0(AbstractC3117z0 abstractC3117z0, C2992a c2992a, boolean z) {
        return new N3(abstractC3117z0, c2992a, z);
    }

    @Override // j$.util.stream.InterfaceC3032i
    /* renamed from: a1, reason: merged with bridge method [inline-methods] */
    public final Stream unordered() {
        return !Q0() ? this : new C3010d2(this, EnumC3026g3.r);
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) K0(AbstractC3117z0.D0(EnumC3102w0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) K0(AbstractC3117z0.D0(EnumC3102w0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream b(C2992a c2992a) {
        Objects.requireNonNull(c2992a);
        return new C3015e2(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, c2992a, 1);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Object K0;
        if (isParallel() && collector.characteristics().contains(Collector.Characteristics.CONCURRENT) && (!Q0() || collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            K0 = collector.supplier().get();
            forEach(new C3062o(5, collector.accumulator(), K0));
        } else {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            K0 = K0(new L1(EnumC3031h3.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector));
        }
        return collector.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? K0 : collector.finisher().apply(K0);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return K0(new E1(EnumC3031h3.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) K0(new G1(EnumC3031h3.REFERENCE, 2))).longValue();
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new r(this, EnumC3026g3.m | EnumC3026g3.t);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = c4.a;
        Objects.requireNonNull(predicate);
        return new V3(this, c4.b, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C3096v(this, EnumC3026g3.t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) K0(M.d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) K0(M.c);
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        K0(new T(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        K0(new T(consumer, true));
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final Iterator iterator() {
        return Spliterators.i(spliterator());
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j >= 0) {
            return AbstractC3117z0.E0(this, 0L, j);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C3015e2(this, EnumC3026g3.p | EnumC3026g3.n, function, 0);
    }

    @Override // j$.util.stream.Stream
    public final H mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C3101w(this, EnumC3026g3.p | EnumC3026g3.n, toDoubleFunction, 6);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C3106x(this, EnumC3026g3.p | EnumC3026g3.n, toIntFunction, 6);
    }

    @Override // j$.util.stream.Stream
    public final InterfaceC3073q0 mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C3111y(this, EnumC3026g3.p | EnumC3026g3.n, toLongFunction, 7);
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(0, comparator));
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new j$.util.function.a(1, comparator));
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) K0(AbstractC3117z0.D0(EnumC3102w0.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final InterfaceC3073q0 p(C2992a c2992a) {
        Objects.requireNonNull(c2992a);
        return new C3111y(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, c2992a, 6);
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C3096v(this, 0, consumer, 3);
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) K0(new C1(EnumC3031h3.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return K0(new E1(EnumC3031h3.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return K0(new E1(EnumC3031h3.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC3117z0.E0(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new M2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new M2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final IntStream t(C2992a c2992a) {
        Objects.requireNonNull(c2992a);
        return new C3106x(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, c2992a, 7);
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = c4.a;
        Objects.requireNonNull(predicate);
        return new T3(this, c4.a, predicate);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new O0(2));
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC3117z0.m0(L0(intFunction), intFunction).k(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final H x(C2992a c2992a) {
        Objects.requireNonNull(c2992a);
        return new C3101w(this, EnumC3026g3.p | EnumC3026g3.n | EnumC3026g3.t, c2992a, 7);
    }
}
