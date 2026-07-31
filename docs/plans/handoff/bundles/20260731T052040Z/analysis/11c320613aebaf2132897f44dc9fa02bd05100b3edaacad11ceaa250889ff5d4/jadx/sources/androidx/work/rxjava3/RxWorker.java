package androidx.work.rxjava3;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.sqlite.SQLite;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.utils.SynchronousExecutor;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RxWorker extends ListenableWorker {
    public static final SynchronousExecutor INSTANT_EXECUTOR = new SynchronousExecutor(0);

    public RxWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    public abstract Single createWork();

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture getForegroundInfoAsync() {
        return SQLite.getFuture(new RxConvertKt$$ExternalSyntheticLambda0(this, new SingleAmb(new Functions.JustValue(new IllegalStateException("Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`")), 2), 4));
    }

    @Override // androidx.work.ListenableWorker
    public final CallbackToFutureAdapter$SafeFuture startWork() {
        return SQLite.getFuture(new RxConvertKt$$ExternalSyntheticLambda0(this, createWork(), 4));
    }
}
