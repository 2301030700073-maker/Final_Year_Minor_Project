package j$.util.stream;

import j$.util.C3126y;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.q0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC3073q0 extends InterfaceC3032i {
    InterfaceC3073q0 a();

    H asDoubleStream();

    j$.util.A average();

    InterfaceC3073q0 b(C2992a c2992a);

    Stream boxed();

    InterfaceC3073q0 c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    InterfaceC3073q0 distinct();

    H e();

    j$.util.C findAny();

    j$.util.C findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    boolean g();

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    j$.util.P iterator();

    boolean j();

    InterfaceC3073q0 limit(long j);

    Stream mapToObj(LongFunction longFunction);

    j$.util.C max();

    j$.util.C min();

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    InterfaceC3073q0 parallel();

    InterfaceC3073q0 peek(LongConsumer longConsumer);

    boolean r();

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    j$.util.C reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.InterfaceC3032i, j$.util.stream.H
    InterfaceC3073q0 sequential();

    InterfaceC3073q0 skip(long j);

    InterfaceC3073q0 sorted();

    @Override // j$.util.stream.InterfaceC3032i
    j$.util.b0 spliterator();

    long sum();

    C3126y summaryStatistics();

    long[] toArray();

    IntStream v();
}
