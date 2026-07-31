package j$.util;

import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* renamed from: j$.util.Iterator$-EL, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Iterator$EL {
    public static void forEachRemaining(Iterator it, Consumer consumer) {
        if (it instanceof y) {
            ((y) it).forEachRemaining(consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }
}
