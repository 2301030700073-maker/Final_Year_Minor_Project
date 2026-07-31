package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThreadLocalKey implements CoroutineContext.Key {
    public final ThreadLocal threadLocal;

    public ThreadLocalKey(ThreadLocal threadLocal) {
        this.threadLocal = threadLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ThreadLocalKey) && Intrinsics.areEqual(this.threadLocal, ((ThreadLocalKey) obj).threadLocal);
    }

    public final int hashCode() {
        return this.threadLocal.hashCode();
    }

    public final String toString() {
        return "ThreadLocalKey(threadLocal=" + this.threadLocal + ')';
    }
}
