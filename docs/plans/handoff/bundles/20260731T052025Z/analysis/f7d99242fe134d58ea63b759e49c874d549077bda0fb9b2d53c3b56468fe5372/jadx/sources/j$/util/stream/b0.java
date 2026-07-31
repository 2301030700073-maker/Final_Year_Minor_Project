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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class b0 implements d0 {
    public final /* synthetic */ DoubleStream a;

    public /* synthetic */ b0(DoubleStream doubleStream) {
        this.a = doubleStream;
    }

    public static /* synthetic */ d0 f(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof c0 ? ((c0) doubleStream).a : new b0(doubleStream);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ IntStream A() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ boolean E() {
        return this.a.noneMatch(null);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 a() {
        return f(this.a.takeWhile(null));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ j$.util.z average() {
        return j$.util.c.n(this.a.average());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 b() {
        return f(this.a.filter(null));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ Stream boxed() {
        return w6.f(this.a.boxed());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 c() {
        return f(this.a.dropWhile(null));
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.d0
    public final d0 d(j$.desugar.sun.nio.fs.g gVar) {
        DoubleStream doubleStream = this.a;
        j$.desugar.sun.nio.fs.g gVar2 = new j$.desugar.sun.nio.fs.g(7);
        gVar2.b = gVar;
        return f(doubleStream.flatMap(gVar2));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 distinct() {
        return f(this.a.distinct());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        DoubleStream doubleStream = this.a;
        if (obj instanceof b0) {
            obj = ((b0) obj).a;
        }
        return doubleStream.equals(obj);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ j$.util.z findAny() {
        return j$.util.c.n(this.a.findAny());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ j$.util.z findFirst() {
        return j$.util.c.n(this.a.findFirst());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.d0, j$.util.stream.g
    public final /* synthetic */ j$.util.f0 iterator() {
        ?? it = this.a.iterator();
        if (it == 0) {
            return null;
        }
        return it instanceof j$.util.e0 ? ((j$.util.e0) it).a : new j$.util.d0(it);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ boolean k() {
        return this.a.anyMatch(null);
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 limit(long j) {
        return f(this.a.limit(j));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 map(DoubleUnaryOperator doubleUnaryOperator) {
        return f(this.a.map(doubleUnaryOperator));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return w6.f(this.a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ j$.util.z max() {
        return j$.util.c.n(this.a.max());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ j$.util.z min() {
        return j$.util.c.n(this.a.min());
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g onClose(Runnable runnable) {
        return e.f(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g parallel() {
        return e.f(this.a.parallel());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 peek(DoubleConsumer doubleConsumer) {
        return f(this.a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ j$.util.z reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return j$.util.c.n(this.a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g sequential() {
        return e.f(this.a.sequential());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 skip(long j) {
        return f(this.a.skip(j));
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ d0 sorted() {
        return f(this.a.sorted());
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.d0, j$.util.stream.g
    public final /* synthetic */ j$.util.s0 spliterator() {
        return j$.util.q0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ double sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.d0
    public final j$.util.v summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ double[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ boolean u() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ g unordered() {
        return e.f(this.a.unordered());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ m1 w() {
        return k1.f(this.a.mapToLong(null));
    }

    @Override // j$.util.stream.d0, j$.util.stream.g
    public final /* synthetic */ d0 parallel() {
        return f(this.a.parallel());
    }

    @Override // j$.util.stream.d0
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.d0, j$.util.stream.g
    public final /* synthetic */ d0 sequential() {
        return f(this.a.sequential());
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.c1.a(this.a.spliterator());
    }

    @Override // j$.util.stream.g
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }
}
