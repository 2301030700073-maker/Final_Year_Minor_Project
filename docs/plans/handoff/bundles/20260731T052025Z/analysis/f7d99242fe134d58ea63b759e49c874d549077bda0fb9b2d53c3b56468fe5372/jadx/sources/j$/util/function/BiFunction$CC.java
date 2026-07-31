package j$.util.function;

import j$.nio.file.x;
import j$.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Function;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: j$.util.function.BiFunction$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class BiFunction$CC {
    public static BiFunction $default$andThen(BiFunction biFunction, Function function) {
        Objects.requireNonNull(function);
        return new x(4, biFunction, function);
    }
}
