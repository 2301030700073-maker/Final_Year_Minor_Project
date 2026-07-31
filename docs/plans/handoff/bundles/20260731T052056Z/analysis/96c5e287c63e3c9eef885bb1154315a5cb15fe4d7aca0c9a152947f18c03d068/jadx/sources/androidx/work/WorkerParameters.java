package androidx.work;

import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkerParameters {
    public ExecutorService mBackgroundExecutor;
    public UUID mId;
    public Data mInputData;
    public int mRunAttemptCount;
    public WorkManagerTaskExecutor mWorkTaskExecutor;
    public CoroutineContext mWorkerContext;
    public SystemClock mWorkerFactory;
}
