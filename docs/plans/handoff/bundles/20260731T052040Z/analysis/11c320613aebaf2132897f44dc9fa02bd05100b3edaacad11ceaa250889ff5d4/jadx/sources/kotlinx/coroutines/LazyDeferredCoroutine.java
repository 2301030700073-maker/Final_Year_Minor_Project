package kotlinx.coroutines;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyDeferredCoroutine extends DeferredCoroutine {
    public final Continuation continuation;

    public LazyDeferredCoroutine(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, true, false);
        this.continuation = UStringsKt.createCoroutineUnintercepted(this, this, function2);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        try {
            InlineList.resumeCancellableWithInternal(Unit.INSTANCE, UStringsKt.intercepted(this.continuation));
        } catch (Throwable th) {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).getCause();
            }
            resumeWith(ResultKt.createFailure(th));
            throw th;
        }
    }
}
