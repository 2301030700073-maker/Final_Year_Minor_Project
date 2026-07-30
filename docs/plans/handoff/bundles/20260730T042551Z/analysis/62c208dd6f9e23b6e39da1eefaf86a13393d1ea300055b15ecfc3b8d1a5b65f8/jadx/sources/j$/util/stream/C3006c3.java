package j$.util.stream;

import j$.util.AbstractC3127z;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
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

/* renamed from: j$.util.stream.c3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3006c3 implements Stream {
    public final /* synthetic */ java.util.stream.Stream a;

    private /* synthetic */ C3006c3(java.util.stream.Stream stream) {
        this.a = stream;
    }

    public static /* synthetic */ Stream k(java.util.stream.Stream stream) {
        if (stream == null) {
            return null;
        }
        return stream instanceof Stream.Wrapper ? Stream.this : new C3006c3(stream);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ boolean allMatch(Predicate predicate) {
        return this.a.allMatch(predicate);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ boolean anyMatch(Predicate predicate) {
        return this.a.anyMatch(predicate);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream b(C2992a c2992a) {
        return k(this.a.flatMap(AbstractC3117z0.q0(c2992a)));
    }

    @Override // j$.util.stream.InterfaceC3032i, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object collect(Collector collector) {
        return this.a.collect(C3047l.a(collector));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        return this.a.collect(supplier, biConsumer, biConsumer2);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream distinct() {
        return k(this.a.distinct());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream dropWhile(Predicate predicate) {
        return k(this.a.dropWhile(predicate));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        if (obj instanceof C3006c3) {
            obj = ((C3006c3) obj).a;
        }
        return this.a.equals(obj);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream filter(Predicate predicate) {
        return k(this.a.filter(predicate));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional findAny() {
        return AbstractC3127z.a(this.a.findAny());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional findFirst() {
        return AbstractC3127z.a(this.a.findFirst());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ void forEach(Consumer consumer) {
        this.a.forEach(consumer);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ void forEachOrdered(Consumer consumer) {
        this.a.forEachOrdered(consumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream limit(long j) {
        return k(this.a.limit(j));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream map(Function function) {
        return k(this.a.map(function));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ H mapToDouble(ToDoubleFunction toDoubleFunction) {
        return F.k(this.a.mapToDouble(toDoubleFunction));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(toIntFunction));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ InterfaceC3073q0 mapToLong(ToLongFunction toLongFunction) {
        return C3063o0.k(this.a.mapToLong(toLongFunction));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional max(Comparator comparator) {
        return AbstractC3127z.a(this.a.max(comparator));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional min(Comparator comparator) {
        return AbstractC3127z.a(this.a.min(comparator));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ boolean noneMatch(Predicate predicate) {
        return this.a.noneMatch(predicate);
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i onClose(Runnable runnable) {
        return C3022g.k(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ InterfaceC3073q0 p(C2992a c2992a) {
        return C3063o0.k(this.a.flatMapToLong(AbstractC3117z0.q0(c2992a)));
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i parallel() {
        return C3022g.k(this.a.parallel());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream peek(Consumer consumer) {
        return k(this.a.peek(consumer));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
        return AbstractC3127z.a(this.a.reduce(binaryOperator));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        return this.a.reduce(obj, biFunction, binaryOperator);
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
        return this.a.reduce(obj, binaryOperator);
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i sequential() {
        return C3022g.k(this.a.sequential());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream skip(long j) {
        return k(this.a.skip(j));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream sorted() {
        return k(this.a.sorted());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream sorted(Comparator comparator) {
        return k(this.a.sorted(comparator));
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.f0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ IntStream t(C2992a c2992a) {
        return IntStream.VivifiedWrapper.convert(this.a.flatMapToInt(AbstractC3117z0.q0(c2992a)));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Stream takeWhile(Predicate predicate) {
        return k(this.a.takeWhile(predicate));
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return this.a.toArray(intFunction);
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i unordered() {
        return C3022g.k(this.a.unordered());
    }

    @Override // j$.util.stream.Stream
    public final /* synthetic */ H x(C2992a c2992a) {
        return F.k(this.a.flatMapToDouble(AbstractC3117z0.q0(c2992a)));
    }
}
