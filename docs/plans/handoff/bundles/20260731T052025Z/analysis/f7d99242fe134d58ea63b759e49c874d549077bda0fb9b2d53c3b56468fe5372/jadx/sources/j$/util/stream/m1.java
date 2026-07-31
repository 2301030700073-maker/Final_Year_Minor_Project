package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface m1 extends g {
    IntStream C();

    m1 a();

    d0 asDoubleStream();

    j$.util.z average();

    m1 b();

    Stream boxed();

    m1 c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    m1 d(j$.desugar.sun.nio.fs.g gVar);

    m1 distinct();

    j$.util.b0 findAny();

    j$.util.b0 findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    d0 g();

    boolean i();

    @Override // j$.util.stream.g
    j$.util.n0 iterator();

    m1 limit(long j);

    Stream mapToObj(LongFunction longFunction);

    j$.util.b0 max();

    j$.util.b0 min();

    boolean p();

    @Override // j$.util.stream.g
    m1 parallel();

    m1 peek(LongConsumer longConsumer);

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    j$.util.b0 reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.g
    m1 sequential();

    m1 skip(long j);

    m1 sorted();

    @Override // j$.util.stream.g
    j$.util.y0 spliterator();

    long sum();

    j$.util.y summaryStatistics();

    long[] toArray();

    m1 x();

    boolean y();
}
