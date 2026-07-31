package androidx.camera.camera2.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.camera.core.impl.utils.executor.SequentialExecutor;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseThreads {
    public final ThreadLocal isSequentialThread;
    public final ContextScope scope;
    public final UseCaseThreads$$ExternalSyntheticLambda0 sequentialExecutor;
    public final SequentialExecutor sequentialExecutorDelegate;
    public final ContextScope sequentialScope;

    public UseCaseThreads(ContextScope contextScope, Executor executor, CoroutineDispatcher coroutineDispatcher) {
        executor.getClass();
        this.scope = contextScope;
        new Handler(Looper.getMainLooper());
        this.sequentialExecutorDelegate = new SequentialExecutor(executor);
        this.isSequentialThread = new ThreadLocal();
        UseCaseThreads$$ExternalSyntheticLambda0 useCaseThreads$$ExternalSyntheticLambda0 = new UseCaseThreads$$ExternalSyntheticLambda0(0, this);
        this.sequentialExecutor = useCaseThreads$$ExternalSyntheticLambda0;
        this.sequentialScope = JobKt.CoroutineScope(contextScope.coroutineContext.plus(JobKt.SupervisorJob$default()).plus(JobKt.from(useCaseThreads$$ExternalSyntheticLambda0)));
    }
}
