package j$.util.function;

import j$.util.Objects;
import j$.util.concurrent.t;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: j$.util.function.BiFunction$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class BiFunction$CC {
    public static BiFunction $default$andThen(BiFunction biFunction, Function function) {
        Objects.requireNonNull(function);
        return new t(biFunction, function);
    }
}
