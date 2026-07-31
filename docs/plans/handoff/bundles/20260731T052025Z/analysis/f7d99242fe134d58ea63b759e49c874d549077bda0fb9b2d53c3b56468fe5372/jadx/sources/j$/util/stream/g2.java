package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface g2 {
    g2 a(int i);

    long count();

    void forEach(Consumer consumer);

    g2 k(long j, long j2, IntFunction intFunction);

    void m(Object[] objArr, int i);

    Object[] p(IntFunction intFunction);

    int s();

    Spliterator spliterator();
}
