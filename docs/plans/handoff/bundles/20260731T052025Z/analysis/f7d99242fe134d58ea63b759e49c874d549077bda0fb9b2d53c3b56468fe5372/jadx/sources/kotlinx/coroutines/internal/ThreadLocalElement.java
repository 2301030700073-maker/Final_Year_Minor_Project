package kotlinx.coroutines.internal;

import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThreadLocalElement implements CoroutineContext.Element {
    public final ThreadLocalKey key;
    public final ThreadLocal threadLocal;
    public final Object value;

    public ThreadLocalElement(PooledConnectionImpl pooledConnectionImpl, ThreadLocal threadLocal) {
        this.value = pooledConnectionImpl;
        this.threadLocal = threadLocal;
        this.key = new ThreadLocalKey(threadLocal);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        if (this.key.equals(key)) {
            return this;
        }
        return null;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return this.key;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return this.key.equals(key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return UuidKt.plus(this, coroutineContext);
    }

    public final void restoreThreadContext(Object obj) {
        this.threadLocal.set(obj);
    }

    public final String toString() {
        return "ThreadLocal(value=" + this.value + ", threadLocal = " + this.threadLocal + ')';
    }

    public final Object updateThreadContext() {
        ThreadLocal threadLocal = this.threadLocal;
        Object obj = threadLocal.get();
        threadLocal.set(this.value);
        return obj;
    }
}
