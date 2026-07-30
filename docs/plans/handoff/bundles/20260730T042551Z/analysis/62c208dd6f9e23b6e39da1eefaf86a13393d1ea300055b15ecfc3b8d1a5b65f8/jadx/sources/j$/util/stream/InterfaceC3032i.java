package j$.util.stream;

import j$.util.Spliterator;
import java.util.Iterator;

/* renamed from: j$.util.stream.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public interface InterfaceC3032i extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    boolean isParallel();

    Iterator iterator();

    InterfaceC3032i onClose(Runnable runnable);

    InterfaceC3032i parallel();

    InterfaceC3032i sequential();

    Spliterator spliterator();

    InterfaceC3032i unordered();
}
