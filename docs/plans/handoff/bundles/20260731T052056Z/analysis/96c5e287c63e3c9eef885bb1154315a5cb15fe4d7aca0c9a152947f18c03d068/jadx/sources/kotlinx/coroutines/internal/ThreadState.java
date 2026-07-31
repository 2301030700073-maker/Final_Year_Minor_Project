package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThreadState {
    public final CoroutineContext context;
    public final ThreadLocalElement[] elements;
    public int i;
    public final Object[] values;

    public ThreadState(int i, CoroutineContext coroutineContext) {
        this.context = coroutineContext;
        this.values = new Object[i];
        this.elements = new ThreadLocalElement[i];
    }
}
