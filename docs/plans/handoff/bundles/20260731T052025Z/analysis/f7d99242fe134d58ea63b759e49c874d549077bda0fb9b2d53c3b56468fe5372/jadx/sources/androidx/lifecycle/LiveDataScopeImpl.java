package androidx.lifecycle;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LiveDataScopeImpl {
    public final CoroutineContext coroutineContext;
    public final CoroutineLiveData target;

    public LiveDataScopeImpl(CoroutineLiveData coroutineLiveData, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        this.target = coroutineLiveData;
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        this.coroutineContext = coroutineContext.plus(MainDispatcherLoader.dispatcher.immediate);
    }

    public final Object emit(Object obj, Continuation continuation) {
        Object withContext = JobKt.withContext(this.coroutineContext, new BlockRunner$maybeRun$1(this, obj, (Continuation) null), continuation);
        return withContext == CoroutineSingletons.COROUTINE_SUSPENDED ? withContext : Unit.INSTANCE;
    }
}
