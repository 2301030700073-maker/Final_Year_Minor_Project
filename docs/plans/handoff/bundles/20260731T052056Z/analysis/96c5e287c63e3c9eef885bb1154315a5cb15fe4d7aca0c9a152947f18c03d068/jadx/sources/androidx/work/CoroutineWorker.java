package androidx.work;

import android.content.Context;
import androidx.compose.ui.unit.DpKt;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/ListenableWorker;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "DeprecatedDispatcher", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    public final DeprecatedDispatcher coroutineContext;
    public final WorkerParameters params;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        CoroutineDispatcher coroutineContext = getCoroutineContext();
        JobImpl Job$default = AwaitKt.Job$default();
        coroutineContext.getClass();
        return DpKt.launchFuture$default(OperationKt.plus(coroutineContext, Job$default), new CoroutineWorker$startWork$1(this, null, 1));
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        CoroutineContext coroutineContext = !Intrinsics.areEqual(getCoroutineContext(), DeprecatedDispatcher.INSTANCE) ? getCoroutineContext() : this.params.mWorkerContext;
        coroutineContext.getClass();
        return DpKt.launchFuture$default(coroutineContext.plus(AwaitKt.Job$default()), new CoroutineWorker$startWork$1(this, null, 0));
    }
}
