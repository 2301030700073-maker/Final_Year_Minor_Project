package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface g2 {
    g2 a(int i);

    long count();

    void forEach(Consumer consumer);

    g2 j(long j, long j2, IntFunction intFunction);

    void k(Object[] objArr, int i);

    Object[] m(IntFunction intFunction);

    int o();

    Spliterator spliterator();
}
