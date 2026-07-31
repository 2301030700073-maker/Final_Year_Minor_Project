package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface d0 extends g {
    d0 a();

    j$.util.y average();

    d0 b(j$.util.n nVar);

    Stream boxed();

    d0 c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    d0 d();

    d0 distinct();

    j$.util.y findAny();

    j$.util.y findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    @Override // j$.util.stream.g
    j$.util.e0 iterator();

    boolean k();

    d0 limit(long j);

    d0 map(DoubleUnaryOperator doubleUnaryOperator);

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.y max();

    j$.util.y min();

    @Override // j$.util.stream.g
    d0 parallel();

    d0 peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.y reduce(DoubleBinaryOperator doubleBinaryOperator);

    boolean s();

    @Override // j$.util.stream.g
    d0 sequential();

    d0 skip(long j);

    d0 sorted();

    @Override // j$.util.stream.g
    j$.util.r0 spliterator();

    double sum();

    j$.util.u summaryStatistics();

    m1 t();

    double[] toArray();

    IntStream w();

    boolean y();
}
