package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class c0 implements e0 {
    public final /* synthetic */ DoubleStream a;

    public /* synthetic */ c0(DoubleStream doubleStream) {
        this.a = doubleStream;
    }

    public static /* synthetic */ e0 f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof d0 ? ((d0) doubleStream).a : new c0(doubleStream);
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ boolean B() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 a() {
        return f(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ j$.util.b0 average() {
        return j$.util.a0.j(this.a.average());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 b() {
        return f(this.a.filter(null));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ Stream boxed() {
        return a7.f(this.a.boxed());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 c() {
        return f(this.a.dropWhile(null));
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.e0
    public final e0 d(j$.desugar.sun.nio.fs.g gVar) {
        DoubleStream doubleStream = this.a;
        j$.desugar.sun.nio.fs.g gVar2 = new j$.desugar.sun.nio.fs.g(12);
        gVar2.b = gVar;
        return f(doubleStream.flatMap(gVar2));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 distinct() {
        return f(this.a.distinct());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.a;
        if (obj instanceof c0) {
            obj = ((c0) obj).a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ j$.util.b0 findAny() {
        return j$.util.a0.j(this.a.findAny());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ j$.util.b0 findFirst() {
        return j$.util.a0.j(this.a.findFirst());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ boolean i() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.e0, j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ j$.util.g0 iterator2() {
        ?? it = this.a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.f0 ? ((j$.util.f0) it).a : new j$.util.e0(it);
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 limit(long j) {
        return f(this.a.limit(j));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 map(DoubleUnaryOperator doubleUnaryOperator) {
        return f(this.a.map(doubleUnaryOperator));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return a7.f(this.a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ j$.util.b0 max() {
        return j$.util.a0.j(this.a.max());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ j$.util.b0 min() {
        return j$.util.a0.j(this.a.min());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return e.f(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return e.f(this.a.parallel());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 peek(DoubleConsumer doubleConsumer) {
        return f(this.a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ j$.util.b0 reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.util.a0.j(this.a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ boolean s() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return e.f(this.a.sequential());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 skip(long j) {
        return f(this.a.skip(j));
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ e0 sorted() {
        return f(this.a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.e0, j$.util.stream.BaseStream
    public final /* synthetic */ j$.util.t0 spliterator() {
        return j$.util.r0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ double sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.e0
    public final j$.util.w summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ double[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ LongStream u() {
        return l1.f(this.a.mapToLong(null));
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return e.f(this.a.unordered());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ IntStream y() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.e0, j$.util.stream.BaseStream
    public final /* synthetic */ e0 parallel() {
        return f(this.a.parallel());
    }

    @Override // j$.util.stream.e0
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.e0, j$.util.stream.BaseStream
    public final /* synthetic */ e0 sequential() {
        return f(this.a.sequential());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.c1.a(this.a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    public final /* synthetic */ Iterator iterator2() {
        return this.a.iterator();
    }
}
