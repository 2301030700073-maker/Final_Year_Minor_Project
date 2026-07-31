package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.TypeIntrinsics;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DeferredCoroutine extends AbstractCoroutine implements Deferred {
    @Override // kotlinx.coroutines.Deferred
    public final Object await(Continuation continuation) {
        return awaitInternal(continuation);
    }

    @Override // kotlinx.coroutines.Deferred
    public final Dispatcher getOnAwait() {
        JobSupport$onAwaitInternal$1 jobSupport$onAwaitInternal$1 = JobSupport$onAwaitInternal$1.INSTANCE;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, jobSupport$onAwaitInternal$1);
        JobSupport$onAwaitInternal$2 jobSupport$onAwaitInternal$2 = JobSupport$onAwaitInternal$2.INSTANCE;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, jobSupport$onAwaitInternal$2);
        return new Dispatcher(this, jobSupport$onAwaitInternal$1, jobSupport$onAwaitInternal$2, null, 24);
    }
}
