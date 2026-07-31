package j$.util.function;

import j$.nio.file.x;
import j$.util.Objects;
import java.util.function.BiConsumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: j$.util.function.BiConsumer$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class BiConsumer$CC {
    public static BiConsumer $default$andThen(BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(biConsumer2);
        return new x(3, biConsumer, biConsumer2);
    }
}
