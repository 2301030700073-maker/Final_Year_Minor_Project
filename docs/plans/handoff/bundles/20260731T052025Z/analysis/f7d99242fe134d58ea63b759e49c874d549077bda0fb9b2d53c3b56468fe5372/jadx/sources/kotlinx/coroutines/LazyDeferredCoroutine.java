package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LazyDeferredCoroutine extends DeferredCoroutine {
    public final Continuation continuation;

    public LazyDeferredCoroutine(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.continuation = AtomicFU.createCoroutineUnintercepted(this, this, function2);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        try {
            InlineList.resumeCancellableWithInternal(Unit.INSTANCE, AtomicFU.intercepted(this.continuation));
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).cause;
            }
            resumeWith(ResultKt.createFailure(th));
            throw th;
        }
    }
}
