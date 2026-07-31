package androidx.work;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.sqlite.SQLite;
import androidx.work.ListenableWorker;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public abstract ListenableWorker.Result doWork();

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync() {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return SQLite.getFuture(new RxConvertKt$$ExternalSyntheticLambda0(executorService, new UtilsKt$$ExternalSyntheticLambda0(this, 15), 3));
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return SQLite.getFuture(new RxConvertKt$$ExternalSyntheticLambda0(executorService, new Worker$$ExternalSyntheticLambda0(this, 0), 3));
    }
}
