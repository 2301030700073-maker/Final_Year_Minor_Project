package j$.util.function;

import j$.nio.file.b0;
import j$.util.Objects;
import java.util.function.BiConsumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* renamed from: j$.util.function.BiConsumer$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class BiConsumer$CC {
    public static BiConsumer $default$andThen(BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(biConsumer2);
        return new b0(2, biConsumer, biConsumer2);
    }
}
