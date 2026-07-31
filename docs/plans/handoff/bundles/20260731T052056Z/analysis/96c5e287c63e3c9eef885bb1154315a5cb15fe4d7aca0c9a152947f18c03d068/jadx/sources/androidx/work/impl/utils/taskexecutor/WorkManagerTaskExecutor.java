package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.room.TransactionExecutor;
import java.util.concurrent.ExecutorService;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineDispatcher;
import retrofit2.AndroidMainExecutor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkManagerTaskExecutor {
    public final TransactionExecutor mBackgroundExecutor;
    public final CoroutineDispatcher mTaskDispatcher;
    public final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    public final AndroidMainExecutor mMainThreadExecutor = new AndroidMainExecutor(2, this);

    public WorkManagerTaskExecutor(ExecutorService executorService) {
        TransactionExecutor transactionExecutor = new TransactionExecutor(executorService);
        this.mBackgroundExecutor = transactionExecutor;
        this.mTaskDispatcher = AwaitKt.from(transactionExecutor);
    }
}
