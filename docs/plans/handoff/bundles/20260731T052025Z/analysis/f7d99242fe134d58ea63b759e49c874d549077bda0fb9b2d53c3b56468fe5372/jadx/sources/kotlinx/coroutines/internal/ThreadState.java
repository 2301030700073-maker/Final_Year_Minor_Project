package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
