package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface e0 extends BaseStream {
    boolean B();

    e0 a();

    j$.util.b0 average();

    e0 b();

    Stream boxed();

    e0 c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    e0 d(j$.desugar.sun.nio.fs.g gVar);

    e0 distinct();

    j$.util.b0 findAny();

    j$.util.b0 findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    boolean i();

    @Override // j$.util.stream.BaseStream
    /* renamed from: iterator */
    j$.util.g0 iterator2();

    e0 limit(long j);

    e0 map(DoubleUnaryOperator doubleUnaryOperator);

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.b0 max();

    j$.util.b0 min();

    @Override // j$.util.stream.BaseStream
    e0 parallel();

    e0 peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.b0 reduce(DoubleBinaryOperator doubleBinaryOperator);

    boolean s();

    @Override // j$.util.stream.BaseStream
    e0 sequential();

    e0 skip(long j);

    e0 sorted();

    @Override // j$.util.stream.BaseStream
    j$.util.t0 spliterator();

    double sum();

    j$.util.w summaryStatistics();

    double[] toArray();

    LongStream u();

    IntStream y();
}
