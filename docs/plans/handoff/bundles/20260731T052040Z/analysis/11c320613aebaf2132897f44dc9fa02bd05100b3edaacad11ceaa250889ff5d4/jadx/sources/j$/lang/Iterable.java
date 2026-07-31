package j$.lang;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface Iterable<T> {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: j$.lang.Iterable$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$forEach(java.lang.Iterable iterable, Consumer consumer) {
            Objects.requireNonNull(consumer);
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: j$.lang.Iterable$-EL, reason: invalid class name */
    public final /* synthetic */ class EL {
        /* JADX WARN: Multi-variable type inference failed */
        public static void forEach(java.lang.Iterable iterable, Consumer consumer) {
            if (iterable instanceof Iterable) {
                ((Iterable) iterable).forEach(consumer);
                return;
            }
            if (!(iterable instanceof Collection)) {
                CC.$default$forEach(iterable, consumer);
                return;
            }
            Objects.requireNonNull(consumer);
            Iterator it = ((Collection) iterable).iterator();
            while (it.hasNext()) {
                consumer.accept(it.next());
            }
        }
    }

    void forEach(Consumer<? super T> consumer);

    Spliterator<T> spliterator();
}
