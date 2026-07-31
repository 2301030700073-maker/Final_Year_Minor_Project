package androidx.work;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    public final DeprecatedDispatcher coroutineContext;
    public final WorkerParameters params;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class DeprecatedDispatcher extends CoroutineDispatcher {
        public static final DeprecatedDispatcher INSTANCE = new DeprecatedDispatcher();
        public static final DefaultScheduler dispatcher = Dispatchers.Default;

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
            coroutineContext.getClass();
            runnable.getClass();
            dispatcher.dispatch(coroutineContext, runnable);
        }

        @Override // kotlinx.coroutines.CoroutineDispatcher
        public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
            coroutineContext.getClass();
            dispatcher.getClass();
            return !false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.params = workerParameters;
        this.coroutineContext = DeprecatedDispatcher.INSTANCE;
    }

    public abstract Object doWork(Continuation continuation);

    public CoroutineDispatcher getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync() {
        return MathKt.launchFuture$default(getCoroutineContext().plus(JobKt.Job$default()), new CoroutineWorker$startWork$1(this, null, 1));
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        CoroutineContext coroutineContext = !Intrinsics.areEqual(getCoroutineContext(), DeprecatedDispatcher.INSTANCE) ? getCoroutineContext() : this.params.mWorkerContext;
        coroutineContext.getClass();
        return MathKt.launchFuture$default(coroutineContext.plus(JobKt.Job$default()), new CoroutineWorker$startWork$1(this, null, 0));
    }
}
