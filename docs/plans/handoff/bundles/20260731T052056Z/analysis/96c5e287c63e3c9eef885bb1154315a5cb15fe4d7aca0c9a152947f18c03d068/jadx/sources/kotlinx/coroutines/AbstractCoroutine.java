package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import coil3.network.HttpException;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final void handleOnCompletionException$kotlinx_coroutines_core(HttpException httpException) {
        AwaitKt.handleCoroutineException(httpException, this.context);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onCompletionInternal(Object obj) {
        if (!(obj instanceof CompletedExceptionally)) {
            onCompleted(obj);
        } else {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            onCancelled(completedExceptionally.cause, ArtificialStackFramesUnsafe.unsafe.getIntVolatile(completedExceptionally, CompletedExceptionally._handled$volatile$FU$offset) == 1);
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        Throwable m815exceptionOrNullimpl = Result.m815exceptionOrNullimpl(obj);
        if (m815exceptionOrNullimpl != null) {
            obj = new CompletedExceptionally(m815exceptionOrNullimpl, false);
        }
        Object makeCompletingOnce$kotlinx_coroutines_core = makeCompletingOnce$kotlinx_coroutines_core(obj);
        if (makeCompletingOnce$kotlinx_coroutines_core == AwaitKt.COMPLETING_WAITING_CHILDREN) {
            return;
        }
        afterResume(makeCompletingOnce$kotlinx_coroutines_core);
    }

    public final void start(CoroutineStart coroutineStart, AbstractCoroutine abstractCoroutine, Function2 function2) {
        Object invoke;
        coroutineStart.getClass();
        int i = CoroutineStart.WhenMappings.$EnumSwitchMapping$0[coroutineStart.ordinal()];
        Unit unit = Unit.INSTANCE;
        if (i == 1) {
            try {
                InlineList.resumeCancellableWith(unit, ExceptionsKt.intercepted(ExceptionsKt.createCoroutineUnintercepted(abstractCoroutine, this, function2)));
                return;
            } finally {
                th = th;
                if (th instanceof DispatchException) {
                    th = ((DispatchException) th).cause;
                }
                resumeWith(new Result.Failure(th));
            }
        }
        if (i == 2) {
            function2.getClass();
            ExceptionsKt.intercepted(ExceptionsKt.createCoroutineUnintercepted(abstractCoroutine, this, function2)).resumeWith(unit);
            return;
        }
        if (i != 3) {
            if (i == 4) {
                return;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m();
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
                    invoke = ExceptionsKt.wrapWithContinuationImpl(function2, abstractCoroutine, this);
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

    public void onCompleted(Object obj) {
    }

    public void onCancelled(Throwable th, boolean z) {
    }
}
