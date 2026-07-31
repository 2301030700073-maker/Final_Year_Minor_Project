package j$.util.function;

import j$.desugar.sun.nio.fs.m;
import j$.util.Objects;
import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* renamed from: j$.util.function.Function$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Function$CC {
    public static Function $default$andThen(Function function, Function function2) {
        Objects.requireNonNull(function2);
        return new d(function, function2, 0);
    }

    public static Function $default$compose(Function function, Function function2) {
        Objects.requireNonNull(function2);
        return new d(function, function2, 1);
    }

    public static <T> Function<T, T> identity() {
        return new m(15);
    }
}
