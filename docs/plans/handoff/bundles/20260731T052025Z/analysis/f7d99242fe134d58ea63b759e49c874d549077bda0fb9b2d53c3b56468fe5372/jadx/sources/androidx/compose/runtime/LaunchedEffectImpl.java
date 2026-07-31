package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.work.Data;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LaunchedEffectImpl implements RememberObserver, CoroutineExceptionHandler {
    public StandaloneCoroutine job;
    public final CoroutineContext parentCoroutineContext;
    public final ContextScope scope;
    public final Function2 task;

    public LaunchedEffectImpl(CoroutineContext coroutineContext, Function2 function2) {
        this.parentCoroutineContext = coroutineContext;
        this.task = function2;
        this.scope = JobKt.CoroutineScope(coroutineContext.plus(this));
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return UuidKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return CoroutineExceptionHandler.Key.$$INSTANCE;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(CoroutineContext coroutineContext, Throwable th) {
        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) coroutineContext.get(CompositionErrorContextImpl.Key);
        if (compositionErrorContextImpl != null) {
            Data.Companion.tryAttachComposeStackTrace(th, new Recomposer$$ExternalSyntheticLambda6(26, compositionErrorContextImpl, this));
        }
        CoroutineExceptionHandler coroutineExceptionHandler = (CoroutineExceptionHandler) this.parentCoroutineContext.get(CoroutineExceptionHandler.Key.$$INSTANCE);
        if (coroutineExceptionHandler == null) {
            throw th;
        }
        coroutineExceptionHandler.handleException(coroutineContext, th);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return UuidKt.minusKey(this, key);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        StandaloneCoroutine standaloneCoroutine = this.job;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancelInternal(new ForgottenCoroutineScopeException(1));
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        StandaloneCoroutine standaloneCoroutine = this.job;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancelInternal(new ForgottenCoroutineScopeException(1));
        }
        this.job = null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
        StandaloneCoroutine standaloneCoroutine = this.job;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(JobKt.CancellationException("Old job was still running!", null));
        }
        this.job = JobKt.launch$default(this.scope, null, null, this.task, 3);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return UuidKt.plus(this, coroutineContext);
    }
}
