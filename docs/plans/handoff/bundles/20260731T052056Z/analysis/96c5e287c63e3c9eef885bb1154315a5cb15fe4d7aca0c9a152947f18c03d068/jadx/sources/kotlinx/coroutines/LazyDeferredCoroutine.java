package kotlinx.coroutines;

import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyDeferredCoroutine extends DeferredCoroutine {
    public final Continuation continuation;

    public LazyDeferredCoroutine(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, false);
        this.continuation = ExceptionsKt.createCoroutineUnintercepted(this, this, function2);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        try {
            InlineList.resumeCancellableWith(Unit.INSTANCE, ExceptionsKt.intercepted(this.continuation));
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).cause;
            }
            resumeWith(new Result.Failure(th));
            throw th;
        }
    }
}
