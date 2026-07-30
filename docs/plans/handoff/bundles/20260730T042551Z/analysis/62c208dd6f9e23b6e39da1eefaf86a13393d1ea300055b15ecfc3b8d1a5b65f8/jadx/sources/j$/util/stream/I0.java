package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
interface I0 {
    I0 a(int i);

    long count();

    void forEach(Consumer consumer);

    I0 i(long j, long j2, IntFunction intFunction);

    void j(Object[] objArr, int i);

    Object[] k(IntFunction intFunction);

    int n();

    Spliterator spliterator();
}
