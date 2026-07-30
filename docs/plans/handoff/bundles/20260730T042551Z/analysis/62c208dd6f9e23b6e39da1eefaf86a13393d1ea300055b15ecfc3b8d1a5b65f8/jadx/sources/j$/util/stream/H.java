package j$.util.stream;

import j$.util.C3124w;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface H extends InterfaceC3032i {
    H a();

    j$.util.A average();

    H b(C2992a c2992a);

    Stream boxed();

    H c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    H distinct();

    j$.util.A findAny();

    j$.util.A findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    boolean h();

    j$.util.H iterator();

    H limit(long j);

    boolean m();

    Stream mapToObj(DoubleFunction doubleFunction);

    j$.util.A max();

    j$.util.A min();

    InterfaceC3073q0 n();

    H parallel();

    H peek(DoubleConsumer doubleConsumer);

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    j$.util.A reduce(DoubleBinaryOperator doubleBinaryOperator);

    H sequential();

    H skip(long j);

    H sorted();

    @Override // j$.util.stream.InterfaceC3032i
    j$.util.V spliterator();

    double sum();

    C3124w summaryStatistics();

    double[] toArray();

    IntStream u();

    boolean w();
}
