package androidx.work;

import android.content.Context;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.work.ListenableWorker;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public abstract ListenableWorker.Result doWork();

    public ForegroundInfo getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync() {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return OAuthBearer.getFuture(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(8, executorService, new Worker$$ExternalSyntheticLambda0(this, 1)));
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return OAuthBearer.getFuture(new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(8, executorService, new Worker$$ExternalSyntheticLambda0(this, 0)));
    }
}
