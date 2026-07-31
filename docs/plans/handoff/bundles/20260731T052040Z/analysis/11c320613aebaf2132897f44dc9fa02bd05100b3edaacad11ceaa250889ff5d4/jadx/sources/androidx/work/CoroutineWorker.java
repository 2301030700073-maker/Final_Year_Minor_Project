package androidx.work;

import android.content.Context;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.room.TransactionExecutor;
import androidx.sqlite.SQLite;
import androidx.work.impl.utils.WorkForegroundUpdater;
import java.util.UUID;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.text.CharsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    public final DeprecatedDispatcher coroutineContext;
    public final WorkerParameters params;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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

    public Object getForegroundInfo() {
        throw new IllegalStateException("Not implemented");
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync() {
        JobImpl Job$default = JobKt.Job$default();
        DeprecatedDispatcher deprecatedDispatcher = this.coroutineContext;
        deprecatedDispatcher.getClass();
        return MathKt.launchFuture$default(AppKt.plus(deprecatedDispatcher, Job$default), new CoroutineWorker$getForegroundInfoAsync$1(this, null));
    }

    public final Object setForeground(ForegroundInfo foregroundInfo, ContinuationImpl continuationImpl) {
        WorkerParameters workerParameters = this.mWorkerParams;
        WorkForegroundUpdater workForegroundUpdater = workerParameters.mForegroundUpdater;
        UUID uuid = workerParameters.mId;
        TransactionExecutor transactionExecutor = (TransactionExecutor) workForegroundUpdater.mTaskExecutor.executorServiceOrNull;
        GapComposer$$ExternalSyntheticLambda0 gapComposer$$ExternalSyntheticLambda0 = new GapComposer$$ExternalSyntheticLambda0(workForegroundUpdater, uuid, foregroundInfo, this.mAppContext, 2);
        transactionExecutor.getClass();
        Object await = CharsKt.await(SQLite.getFuture(new RxConvertKt$$ExternalSyntheticLambda0(transactionExecutor, gapComposer$$ExternalSyntheticLambda0, 2)), continuationImpl);
        return await == CoroutineSingletons.COROUTINE_SUSPENDED ? await : Unit.INSTANCE;
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        DeprecatedDispatcher deprecatedDispatcher = DeprecatedDispatcher.INSTANCE;
        CoroutineContext coroutineContext = this.coroutineContext;
        if (Intrinsics.areEqual(coroutineContext, deprecatedDispatcher)) {
            coroutineContext = this.params.mWorkerContext;
        }
        coroutineContext.getClass();
        return MathKt.launchFuture$default(coroutineContext.plus(JobKt.Job$default()), new CoroutineWorker$startWork$1(this, null));
    }
}
