package j$.util.function;

import j$.nio.file.b0;
import j$.util.Objects;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* renamed from: j$.util.function.Consumer$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Consumer$CC {
    public static Consumer $default$andThen(Consumer consumer, Consumer consumer2) {
        Objects.requireNonNull(consumer2);
        return new b0(4, consumer, consumer2);
    }
}
