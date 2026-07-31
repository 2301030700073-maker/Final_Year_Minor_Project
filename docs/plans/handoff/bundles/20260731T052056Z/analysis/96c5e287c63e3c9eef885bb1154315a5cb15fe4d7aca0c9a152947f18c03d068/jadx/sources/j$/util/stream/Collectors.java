package j$.util.stream;

import j$.util.stream.Collector;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class Collectors {
    public static final Set a;
    public static final Set b;

    static {
        Collector.Characteristics characteristics = Collector.Characteristics.CONCURRENT;
        Collector.Characteristics characteristics2 = Collector.Characteristics.UNORDERED;
        Collector.Characteristics characteristics3 = Collector.Characteristics.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2, characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2));
        a = Collections.unmodifiableSet(EnumSet.of(characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics2, characteristics3));
        b = Collections.EMPTY_SET;
        Collections.unmodifiableSet(EnumSet.of(characteristics2));
    }

    public static void a(double[] dArr, double d) {
        double d2 = d - dArr[1];
        double d3 = dArr[0];
        double d4 = d3 + d2;
        dArr[1] = (d4 - d3) - d2;
        dArr[0] = d4;
    }

    public static <T, A, R, RR> Collector<T, A, RR> collectingAndThen(Collector<T, A, R> collector, Function<R, RR> function) {
        Set characteristics = collector.characteristics();
        Collector.Characteristics characteristics2 = Collector.Characteristics.IDENTITY_FINISH;
        if (characteristics.contains(characteristics2)) {
            if (characteristics.size() == 1) {
                characteristics = b;
            } else {
                EnumSet copyOf = EnumSet.copyOf((Collection) characteristics);
                copyOf.remove(characteristics2);
                characteristics = Collections.unmodifiableSet(copyOf);
            }
        }
        return new j(collector.supplier(), collector.accumulator(), collector.combiner(), collector.finisher().mo800andThen(function), characteristics);
    }

    public static Collector<CharSequence, ?, String> joining(CharSequence charSequence) {
        return new j(new j$.util.n(4, charSequence), new j$.time.f(22), new j$.time.f(23), new j$.time.f(24), b);
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new j(supplier, new j$.time.f(14), new j$.time.f(15), a);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new j(new j$.time.f(16), new j$.time.f(17), new j$.time.f(20), a);
    }
}
