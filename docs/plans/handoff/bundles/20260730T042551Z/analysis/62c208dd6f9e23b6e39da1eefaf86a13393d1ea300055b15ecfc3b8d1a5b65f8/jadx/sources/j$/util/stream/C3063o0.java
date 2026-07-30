package j$.util.stream;

import j$.util.AbstractC3127z;
import j$.util.C3126y;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.stream.LongStream;

/* renamed from: j$.util.stream.o0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3063o0 implements InterfaceC3073q0 {
    public final /* synthetic */ LongStream a;

    private /* synthetic */ C3063o0(LongStream longStream) {
        this.a = longStream;
    }

    public static /* synthetic */ InterfaceC3073q0 k(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C3068p0 ? ((C3068p0) longStream).a : new C3063o0(longStream);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 a() {
        return k(this.a.filter(null));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ H asDoubleStream() {
        return F.k(this.a.asDoubleStream());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ j$.util.A average() {
        return AbstractC3127z.b(this.a.average());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final InterfaceC3073q0 b(C2992a c2992a) {
        return k(this.a.flatMap(new C2992a(9, c2992a)));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ Stream boxed() {
        return C3006c3.k(this.a.boxed());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 c() {
        return k(this.a.map(null));
    }

    @Override // j$.util.stream.InterfaceC3032i, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 distinct() {
        return k(this.a.distinct());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ H e() {
        return F.k(this.a.mapToDouble(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        if (obj instanceof C3063o0) {
            obj = ((C3063o0) obj).a;
        }
        return this.a.equals(obj);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ j$.util.C findAny() {
        return AbstractC3127z.d(this.a.findAny());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ j$.util.C findFirst() {
        return AbstractC3127z.d(this.a.findFirst());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.a.forEach(longConsumer);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.a.forEachOrdered(longConsumer);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ boolean g() {
        return this.a.noneMatch(null);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.InterfaceC3073q0, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ j$.util.P iterator() {
        return j$.util.N.a(this.a.iterator());
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ boolean j() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 limit(long j) {
        return k(this.a.limit(j));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return C3006c3.k(this.a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ j$.util.C max() {
        return AbstractC3127z.d(this.a.max());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ j$.util.C min() {
        return AbstractC3127z.d(this.a.min());
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i onClose(Runnable runnable) {
        return C3022g.k(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i parallel() {
        return C3022g.k(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC3073q0, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3073q0 parallel() {
        return k(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 peek(LongConsumer longConsumer) {
        return k(this.a.peek(longConsumer));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ boolean r() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ j$.util.C reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC3127z.d(this.a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i sequential() {
        return C3022g.k(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC3073q0, j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3073q0 sequential() {
        return k(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 skip(long j) {
        return k(this.a.skip(j));
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ InterfaceC3073q0 sorted() {
        return k(this.a.sorted());
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.f0.a(this.a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.InterfaceC3073q0, j$.util.stream.InterfaceC3032i
    public final /* synthetic */ j$.util.b0 spliterator() {
        return j$.util.Z.a(this.a.spliterator());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ long sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final C3126y summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ long[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i unordered() {
        return C3022g.k(this.a.unordered());
    }

    @Override // j$.util.stream.InterfaceC3073q0
    public final /* synthetic */ IntStream v() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }
}
