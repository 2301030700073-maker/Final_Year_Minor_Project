package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class StreamSupport {
    public static y0 a(Spliterator.OfInt ofInt) {
        return new y0(ofInt, d7.o(ofInt), false);
    }

    public static <T> Stream<T> stream(Spliterator<T> spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new d5(spliterator, d7.o(spliterator), z);
    }
}
