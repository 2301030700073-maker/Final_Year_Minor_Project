package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface m1 extends g {
    m1 a();

    d0 asDoubleStream();

    j$.util.y average();

    m1 b(j$.util.n nVar);

    Stream boxed();

    m1 c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    m1 d();

    m1 distinct();

    m1 e();

    j$.util.a0 findAny();

    j$.util.a0 findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    d0 h();

    @Override // j$.util.stream.g
    j$.util.m0 iterator();

    boolean j();

    m1 limit(long j);

    Stream mapToObj(LongFunction longFunction);

    j$.util.a0 max();

    j$.util.a0 min();

    boolean n();

    @Override // j$.util.stream.g
    m1 parallel();

    m1 peek(LongConsumer longConsumer);

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    j$.util.a0 reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.g
    m1 sequential();

    m1 skip(long j);

    m1 sorted();

    @Override // j$.util.stream.g
    j$.util.x0 spliterator();

    long sum();

    j$.util.x summaryStatistics();

    long[] toArray();

    boolean u();

    IntStream x();
}
