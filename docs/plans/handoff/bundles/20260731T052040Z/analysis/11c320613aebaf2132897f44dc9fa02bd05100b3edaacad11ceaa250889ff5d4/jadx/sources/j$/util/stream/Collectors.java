package j$.util.stream;

import j$.util.Map;
import j$.util.function.BiConsumer$CC;
import j$.util.stream.Collector;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class Collectors {
    public static final Set a;
    public static final Set b;
    public static final Set c;

    static {
        Collector.Characteristics characteristics = Collector.Characteristics.CONCURRENT;
        Collector.Characteristics characteristics2 = Collector.Characteristics.UNORDERED;
        Collector.Characteristics characteristics3 = Collector.Characteristics.IDENTITY_FINISH;
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2, characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics, characteristics2));
        a = Collections.unmodifiableSet(EnumSet.of(characteristics3));
        Collections.unmodifiableSet(EnumSet.of(characteristics2, characteristics3));
        b = Collections.EMPTY_SET;
        c = Collections.unmodifiableSet(EnumSet.of(characteristics2));
    }

    public static double a(double[] dArr) {
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    public static <T> Collector<T, ?, Double> averagingDouble(ToDoubleFunction<? super T> toDoubleFunction) {
        return new k(new j$.desugar.sun.nio.fs.m(29), new j$.desugar.sun.nio.fs.g(8, toDoubleFunction), new j(0), new j(1), b);
    }

    public static void b(double[] dArr, double d) {
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
        return new k(collector.supplier(), collector.accumulator(), collector.combiner(), collector.finisher().mo646andThen(function), characteristics);
    }

    public static Collector<CharSequence, ?, String> joining(CharSequence charSequence) {
        return new k(new j$.desugar.sun.nio.fs.g(9, charSequence), new j(9), new j(10), new j(11), b);
    }

    public static <T> Collector<T, ?, Integer> summingInt(ToIntFunction<? super T> toIntFunction) {
        return new k(new j$.desugar.sun.nio.fs.m(18), new j$.desugar.sun.nio.fs.g(7, toIntFunction), new j$.desugar.sun.nio.fs.m(19), new j$.desugar.sun.nio.fs.m(20), b);
    }

    public static <T> Collector<T, ?, Long> summingLong(ToLongFunction<? super T> toLongFunction) {
        return new k(new j(13), new j$.desugar.sun.nio.fs.g(10, toLongFunction), new j(14), new j(15), b);
    }

    public static <T, C extends Collection<T>> Collector<T, ?, C> toCollection(Supplier<C> supplier) {
        return new k(supplier, new j$.desugar.sun.nio.fs.m(22), new j$.desugar.sun.nio.fs.m(23), a);
    }

    public static <T> Collector<T, ?, List<T>> toList() {
        return new k(new j$.desugar.sun.nio.fs.m(24), new j$.desugar.sun.nio.fs.m(25), new j(7), a);
    }

    public static <T, K, U> Collector<T, ?, Map<K, U>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends U> function2) {
        return new k(new j(12), new j$.util.function.d(function, function2, 2), new j$.desugar.sun.nio.fs.m(17), a);
    }

    public static <T> Collector<T, ?, List<T>> toUnmodifiableList() {
        return new k(new j$.desugar.sun.nio.fs.m(24), new j$.desugar.sun.nio.fs.m(25), new j$.desugar.sun.nio.fs.m(26), new j$.desugar.sun.nio.fs.m(27), b);
    }

    public static <T> Collector<T, ?, Set<T>> toUnmodifiableSet() {
        return new k(new j(2), new j(3), new j(4), new j(5), c);
    }

    public static <T, K, U> Collector<T, ?, Map<K, U>> toMap(final Function<? super T, ? extends K> function, final Function<? super T, ? extends U> function2, final BinaryOperator<U> binaryOperator) {
        return new k(new j(12), new BiConsumer() { // from class: j$.util.stream.i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                Set set = Collectors.a;
                Map.EL.merge((java.util.Map) obj, Function.this.apply(obj2), function2.apply(obj2), binaryOperator);
            }

            public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new j$.desugar.sun.nio.fs.g(11, binaryOperator), a);
    }
}
