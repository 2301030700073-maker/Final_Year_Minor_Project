package androidx.work;

import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.CoroutineContext;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkerParameters {
    public ExecutorService mBackgroundExecutor;
    public UUID mId;
    public Data mInputData;
    public Dispatcher mWorkTaskExecutor;
    public CoroutineContext mWorkerContext;
    public WorkerFactory mWorkerFactory;
}
