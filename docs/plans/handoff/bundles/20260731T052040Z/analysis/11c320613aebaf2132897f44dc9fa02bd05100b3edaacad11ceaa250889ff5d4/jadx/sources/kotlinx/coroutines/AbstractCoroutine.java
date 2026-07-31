package kotlinx.coroutines;

import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.InlineList;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractCoroutine extends JobSupport implements Continuation, CoroutineScope {
    public final CoroutineContext context;

    public AbstractCoroutine(CoroutineContext coroutineContext, boolean z, boolean z2) {
        super(z2);
        if (z) {
            initParentJob((Job) coroutineContext.get(Job.Key.$$INSTANCE));
        }
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
        JobKt.handleCoroutineException(serializationException, this.context);
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
        Throwable m656exceptionOrNullimpl = Result.m656exceptionOrNullimpl(obj);
        if (m656exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m656exceptionOrNullimpl, false);
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
                InlineList.resumeCancellableWithInternal(unit, UStringsKt.intercepted(UStringsKt.createCoroutineUnintercepted(abstractCoroutine, this, function2)));
                return;
            } finally {
                th = th;
                if (th instanceof DispatchException) {
                    th = ((DispatchException) th).getCause();
                }
                resumeWith(ResultKt.createFailure(th));
            }
        }
        if (ordinal != 1) {
            if (ordinal == 2) {
                function2.getClass();
                UStringsKt.intercepted(UStringsKt.createCoroutineUnintercepted(abstractCoroutine, this, function2)).resumeWith(unit);
                return;
            }
            if (ordinal != 3) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
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
                        invoke = UStringsKt.wrapWithContinuationImpl(function2, abstractCoroutine, this);
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
