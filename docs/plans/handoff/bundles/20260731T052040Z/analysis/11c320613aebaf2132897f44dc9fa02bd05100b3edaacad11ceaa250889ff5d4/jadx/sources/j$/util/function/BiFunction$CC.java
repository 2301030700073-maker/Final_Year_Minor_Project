package j$.util.function;

import j$.nio.file.b0;
import j$.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* renamed from: j$.util.function.BiFunction$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class BiFunction$CC {
    public static BiFunction $default$andThen(BiFunction biFunction, Function function) {
        Objects.requireNonNull(function);
        return new b0(3, biFunction, function);
    }
}
