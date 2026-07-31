package j$.util.stream;

import j$.util.stream.Collector;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        return new j(collector.supplier(), collector.accumulator(), collector.combiner(), collector.finisher().mo970andThen(function), characteristics);
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new j(supplier, new j$.desugar.sun.nio.fs.m(16), new j$.desugar.sun.nio.fs.m(17), a);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new j(new j$.desugar.sun.nio.fs.m(18), new j$.desugar.sun.nio.fs.m(19), new j$.desugar.sun.nio.fs.m(24), a);
    }
}
