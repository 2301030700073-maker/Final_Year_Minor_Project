package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RememberedCoroutineScope implements CoroutineScope, RememberObserver {
    public static final CancelledCoroutineContext CancelledCoroutineContext = new CancelledCoroutineContext();
    public volatile CoroutineContext _coroutineContext;
    public final RememberedCoroutineScope lock = this;
    public final CoroutineContext parentContext;

    public RememberedCoroutineScope(CoroutineContext coroutineContext) {
        this.parentContext = coroutineContext;
    }

    public final void cancelIfCreated() {
        synchronized (this.lock) {
            try {
                CoroutineContext coroutineContext = this._coroutineContext;
                if (coroutineContext == null) {
                    this._coroutineContext = CancelledCoroutineContext;
                } else {
                    AwaitKt.cancel(coroutineContext, new ForgottenCoroutineScopeException(0));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        CoroutineContext coroutineContext;
        CoroutineContext coroutineContext2 = this._coroutineContext;
        if (coroutineContext2 == null || coroutineContext2 == CancelledCoroutineContext) {
            CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.parentContext.get(CompositionErrorContextImpl.Key);
            CoroutineContext rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1 = compositionErrorContextImpl != null ? new RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1(compositionErrorContextImpl, this) : EmptyCoroutineContext.INSTANCE;
            synchronized (this.lock) {
                try {
                    CoroutineContext coroutineContext3 = this._coroutineContext;
                    if (coroutineContext3 == null) {
                        CoroutineContext coroutineContext4 = this.parentContext;
                        coroutineContext = coroutineContext4.plus(new JobImpl((Job) coroutineContext4.get(Job.Key.$$INSTANCE))).plus(EmptyCoroutineContext.INSTANCE).plus(rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1);
                    } else if (coroutineContext3 == CancelledCoroutineContext) {
                        CoroutineContext coroutineContext5 = this.parentContext;
                        JobImpl jobImpl = new JobImpl((Job) coroutineContext5.get(Job.Key.$$INSTANCE));
                        jobImpl.cancelImpl$kotlinx_coroutines_core(new ForgottenCoroutineScopeException(0));
                        coroutineContext = coroutineContext5.plus(jobImpl).plus(EmptyCoroutineContext.INSTANCE).plus(rememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1);
                    } else {
                        coroutineContext = coroutineContext3;
                    }
                    this._coroutineContext = coroutineContext;
                } catch (Throwable th) {
                    throw th;
                }
            }
            coroutineContext2 = coroutineContext;
        }
        coroutineContext2.getClass();
        return coroutineContext2;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onAbandoned() {
        cancelIfCreated();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onForgotten() {
        cancelIfCreated();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void onRemembered() {
    }
}
