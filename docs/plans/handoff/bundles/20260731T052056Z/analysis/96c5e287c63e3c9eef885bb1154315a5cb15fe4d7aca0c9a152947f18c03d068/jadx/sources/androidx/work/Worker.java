package androidx.work;

import android.content.Context;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.room.Room;
import androidx.work.ListenableWorker;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/Worker;", "Landroidx/work/ListenableWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "workerParams", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
    }

    public abstract ListenableWorker.Result.Success doWork();

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync() {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return Room.getFuture(new TextLinkScope$$ExternalSyntheticLambda3(2, executorService, new Worker$$ExternalSyntheticLambda1(0, this)));
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        ExecutorService executorService = this.mWorkerParams.mBackgroundExecutor;
        executorService.getClass();
        return Room.getFuture(new TextLinkScope$$ExternalSyntheticLambda3(2, executorService, new Worker$$ExternalSyntheticLambda0(0, this)));
    }
}
