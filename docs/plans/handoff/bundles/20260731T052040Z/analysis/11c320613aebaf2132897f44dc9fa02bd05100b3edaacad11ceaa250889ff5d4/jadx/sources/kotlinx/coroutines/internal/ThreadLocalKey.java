package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
