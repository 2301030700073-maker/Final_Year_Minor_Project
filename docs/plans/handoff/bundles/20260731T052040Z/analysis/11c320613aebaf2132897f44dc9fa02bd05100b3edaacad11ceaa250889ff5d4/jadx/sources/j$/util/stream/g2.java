package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface g2 {
    g2 a(int i);

    long count();

    void forEach(Consumer consumer);

    g2 k(long j, long j2, IntFunction intFunction);

    void n(Object[] objArr, int i);

    Object[] q(IntFunction intFunction);

    Spliterator spliterator();

    int u();
}
