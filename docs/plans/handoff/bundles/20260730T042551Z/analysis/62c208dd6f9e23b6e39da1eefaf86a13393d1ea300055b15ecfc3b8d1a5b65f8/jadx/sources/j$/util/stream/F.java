package j$.util.stream;

import j$.util.AbstractC3127z;
import j$.util.C3124w;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* loaded from: classes2.dex */
public final /* synthetic */ class F implements H {
    public final /* synthetic */ DoubleStream a;

    private /* synthetic */ F(DoubleStream doubleStream) {
        this.a = doubleStream;
    }

    public static /* synthetic */ H k(DoubleStream doubleStream) {
        if (doubleStream == null) {
            return null;
        }
        return doubleStream instanceof G ? ((G) doubleStream).a : new F(doubleStream);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H a() {
        return k(this.a.filter(null));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.A average() {
        return AbstractC3127z.b(this.a.average());
    }

    @Override // j$.util.stream.H
    public final H b(C2992a c2992a) {
        return k(this.a.flatMap(new C2992a(7, c2992a)));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ Stream boxed() {
        return C3006c3.k(this.a.boxed());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H c() {
        return k(this.a.map(null));
    }

    @Override // j$.util.stream.InterfaceC3032i, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ long count() {
        return this.a.count();
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H distinct() {
        return k(this.a.distinct());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        if (obj instanceof F) {
            obj = ((F) obj).a;
        }
        return this.a.equals(obj);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.A findAny() {
        return AbstractC3127z.b(this.a.findAny());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.A findFirst() {
        return AbstractC3127z.b(this.a.findFirst());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.a.forEach(doubleConsumer);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.a.forEachOrdered(doubleConsumer);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ boolean h() {
        return this.a.anyMatch(null);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfDouble] */
    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.H iterator() {
        return j$.util.F.a(this.a.iterator());
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H limit(long j) {
        return k(this.a.limit(j));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ boolean m() {
        return this.a.allMatch(null);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ Stream mapToObj(DoubleFunction doubleFunction) {
        return C3006c3.k(this.a.mapToObj(doubleFunction));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.A max() {
        return AbstractC3127z.b(this.a.max());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.A min() {
        return AbstractC3127z.b(this.a.min());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ InterfaceC3073q0 n() {
        return C3063o0.k(this.a.mapToLong(null));
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i onClose(Runnable runnable) {
        return C3022g.k(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H parallel() {
        return k(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i parallel() {
        return C3022g.k(this.a.parallel());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H peek(DoubleConsumer doubleConsumer) {
        return k(this.a.peek(doubleConsumer));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.a.reduce(d, doubleBinaryOperator);
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ j$.util.A reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC3127z.b(this.a.reduce(doubleBinaryOperator));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H sequential() {
        return k(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    public final /* synthetic */ InterfaceC3032i sequential() {
        return C3022g.k(this.a.sequential());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H skip(long j) {
        return k(this.a.skip(j));
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ H sorted() {
        return k(this.a.sorted());
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.f0.a(this.a.spliterator());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfDouble] */
    @Override // j$.util.stream.H, j$.util.stream.InterfaceC3032i
    public final /* synthetic */ j$.util.V spliterator() {
        return j$.util.T.a(this.a.spliterator());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ double sum() {
        return this.a.sum();
    }

    @Override // j$.util.stream.H
    public final C3124w summaryStatistics() {
        this.a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.DoubleSummaryStatistics");
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ double[] toArray() {
        return this.a.toArray();
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ IntStream u() {
        return IntStream.VivifiedWrapper.convert(this.a.mapToInt(null));
    }

    @Override // j$.util.stream.InterfaceC3032i
    public final /* synthetic */ InterfaceC3032i unordered() {
        return C3022g.k(this.a.unordered());
    }

    @Override // j$.util.stream.H
    public final /* synthetic */ boolean w() {
        return this.a.noneMatch(null);
    }
}
