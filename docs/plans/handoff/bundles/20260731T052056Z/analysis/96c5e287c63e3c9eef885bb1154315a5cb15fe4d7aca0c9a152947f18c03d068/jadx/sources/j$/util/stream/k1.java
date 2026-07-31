package j$.util.stream;

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

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final /* synthetic */ class k1 implements m1 {
    public final /* synthetic */ LongStream a;

    public /* synthetic */ k1(LongStream longStream) {
        this.a = longStream;
    }

    public static /* synthetic */ m1 g(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof l1 ? ((l1) longStream).a : new k1(longStream);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 a() {
        return g(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ d0 asDoubleStream() {
        return b0.g(this.a.asDoubleStream());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ j$.util.y average() {
        return j$.time.a.F(this.a.average());
    }

    @Override // j$.util.stream.m1
    public final m1 b(j$.util.n nVar) {
        LongStream longStream = this.a;
        j$.util.n nVar2 = new j$.util.n(7);
        nVar2.b = nVar;
        return g(longStream.flatMap(nVar2));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ Stream boxed() {
        return w6.g(this.a.boxed());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 c() {
        return g(this.a.filter(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 d() {
        return g(this.a.dropWhile(null));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 distinct() {
        return g(this.a.distinct());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 e() {
        return g(this.a.map(null));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        LongStream longStream = this.a;
        if (obj instanceof k1) {
            obj = ((k1) obj).a;
        }
        return longStream.equals(obj);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ j$.util.a0 findAny() {
        return j$.time.a.H(this.a.findAny());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ j$.util.a0 findFirst() {
        return j$.time.a.H(this.a.findFirst());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.a.forEach(longConsumer);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.a.forEachOrdered(longConsumer);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ d0 h() {
        return b0.g(this.a.mapToDouble(null));
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.PrimitiveIterator$OfLong] */
    @Override // j$.util.stream.m1, j$.util.stream.g
    public final /* synthetic */ j$.util.m0 iterator() {
        ?? it = this.a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.l0 ? ((j$.util.l0) it).a : new j$.util.k0(it);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ boolean j() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 limit(long j) {
        return g(this.a.limit(j));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ Stream mapToObj(LongFunction longFunction) {
        return w6.g(this.a.mapToObj(longFunction));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ j$.util.a0 max() {
        return j$.time.a.H(this.a.max());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ j$.util.a0 min() {
        return j$.time.a.H(this.a.min());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ boolean n() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g onClose(Runnable runnable) {
        return e.g(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g parallel() {
        return e.g(this.a.parallel());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 peek(LongConsumer longConsumer) {
        return g(this.a.peek(longConsumer));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ j$.util.a0 reduce(LongBinaryOperator longBinaryOperator) {
        return j$.time.a.H(this.a.reduce(longBinaryOperator));
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g sequential() {
        return e.g(this.a.sequential());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 skip(long j) {
        return g(this.a.skip(j));
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ m1 sorted() {
        return g(this.a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Spliterator$OfLong] */
    @Override // j$.util.stream.m1, j$.util.stream.g
    public final /* synthetic */ j$.util.x0 spliterator() {
        return j$.util.v0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ long sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.m1
    public final j$.util.x summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.LongSummaryStatistics");
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ long[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ boolean u() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g unordered() {
        return e.g(this.a.unordered());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ IntStream x() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.m1, j$.util.stream.g
    public final /* synthetic */ m1 parallel() {
        return g(this.a.parallel());
    }

    @Override // j$.util.stream.m1
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.a.reduce(j, longBinaryOperator);
    }

    @Override // j$.util.stream.m1, j$.util.stream.g
    public final /* synthetic */ m1 sequential() {
        return g(this.a.sequential());
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.b1.a(this.a.spliterator());
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }
}
