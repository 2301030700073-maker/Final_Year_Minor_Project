package j$.util.function;

import j$.util.Objects;
import j$.util.concurrent.u;
import java.util.function.BiConsumer;

/* renamed from: j$.util.function.BiConsumer$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class BiConsumer$CC<T, U> {
    public static BiConsumer $default$andThen(BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(biConsumer2);
        return new u(1, biConsumer, biConsumer2);
    }
}
