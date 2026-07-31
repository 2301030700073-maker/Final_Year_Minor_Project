package kotlinx.coroutines;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.InlineList;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractCoroutine extends JobSupport implements Continuation, CoroutineScope {
    public final CoroutineContext context;

    public AbstractCoroutine(CoroutineContext coroutineContext, boolean z) {
        super(z);
        initParentJob((Job) coroutineContext.get(Job.Key.$$INSTANCE));
        this.context = coroutineContext.plus(this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String cancellationExceptionMessage() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.context;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void handleOnCompletionException$kotlinx_coroutines_core(SerializationException serializationException) {
        JobKt.handleCoroutineException(this.context, serializationException);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onCompletionInternal(Object obj) {
        if (!(obj instanceof CompletedExceptionally)) {
            onCompleted(obj);
        } else {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            onCancelled(completedExceptionally.cause, CompletedExceptionally._handled$volatile$FU.get(completedExceptionally) == 1);
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m979exceptionOrNullimpl = Result.m979exceptionOrNullimpl(obj);
        if (m979exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m979exceptionOrNullimpl, false);
        }
        Object makeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(obj);
        if (makeCompletingOnce$kotlinx_coroutines_core == JobKt.COMPLETING_WAITING_CHILDREN) {
            return;
        }
        afterResume(makeCompletingOnce$kotlinx_coroutines_core);
    }

    public final void start(CoroutineStart coroutineStart, AbstractCoroutine abstractCoroutine, Function2 function2) {
        Object invoke;
        int ordinal = coroutineStart.ordinal();
        Unit unit = Unit.INSTANCE;
        if (ordinal == 0) {
            try {
                InlineList.resumeCancellableWithInternal(unit, AtomicFU.intercepted(AtomicFU.createCoroutineUnintercepted(abstractCoroutine, this, function2)));
                return;
            } finally {
                th = th;
                if (th instanceof DispatchException) {
                    th = ((DispatchException) th).cause;
                }
                resumeWith(ResultKt.createFailure(th));
            }
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                function2.getClass();
                AtomicFU.intercepted(AtomicFU.createCoroutineUnintercepted(abstractCoroutine, this, function2)).resumeWith(unit);
                return;
            }
            if (ordinal != 3) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            try {
                CoroutineContext coroutineContext = this.context;
                Object updateThreadContext = InlineList.updateThreadContext(coroutineContext, null);
                try {
                    if (function2 instanceof BaseContinuationImpl) {
                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
                        invoke = function2.invoke(abstractCoroutine, this);
                    } else {
                        invoke = AtomicFU.wrapWithContinuationImpl(function2, abstractCoroutine, this);
                    }
                    InlineList.restoreThreadContext(coroutineContext, updateThreadContext);
                    if (invoke != CoroutineSingletons.COROUTINE_SUSPENDED) {
                        resumeWith(invoke);
                    }
                } catch (Throwable th) {
                    InlineList.restoreThreadContext(coroutineContext, updateThreadContext);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    public void onCompleted(Object obj) {
    }

    public void onCancelled(Throwable th, boolean z) {
    }
}
