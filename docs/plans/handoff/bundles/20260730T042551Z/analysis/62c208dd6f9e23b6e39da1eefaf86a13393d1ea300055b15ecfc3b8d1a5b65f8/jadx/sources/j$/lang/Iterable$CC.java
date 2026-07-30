package j$.lang;

import j$.util.Objects;
import java.util.Iterator;
import java.util.function.Consumer;

/* renamed from: j$.lang.Iterable$-CC, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Iterable$CC<T> {
    public static void $default$forEach(Iterable iterable, Consumer consumer) {
        Objects.requireNonNull(consumer);
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            consumer.accept(it.next());
        }
    }
}
