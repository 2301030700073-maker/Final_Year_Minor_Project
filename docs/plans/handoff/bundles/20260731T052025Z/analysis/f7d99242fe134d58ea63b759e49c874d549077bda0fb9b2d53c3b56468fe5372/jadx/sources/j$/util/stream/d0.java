package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface d0 extends g {
    IntStream A();

    boolean E();

    d0 a();

    j$.util.z average();

    d0 b();

    Stream boxed();

    d0 c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    d0 d(j$.desugar.sun.nio.fs.g gVar);

    d0 distinct();

    j$.util.z findAny();

    j$.util.z findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    @Override // j$.util.stream.g
    j$.util.f0 iterator();

    boolean k();

    d0 limit(long j);

    d0 map(DoubleUnaryOperator doubleUnaryOperator);

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.z max();

    j$.util.z min();

    @Override // j$.util.stream.g
    d0 parallel();

    d0 peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.z reduce(DoubleBinaryOperator doubleBinaryOperator);

    @Override // j$.util.stream.g
    d0 sequential();

    d0 skip(long j);

    d0 sorted();

    @Override // j$.util.stream.g
    j$.util.s0 spliterator();

    double sum();

    j$.util.v summaryStatistics();

    double[] toArray();

    boolean u();

    m1 w();
}
