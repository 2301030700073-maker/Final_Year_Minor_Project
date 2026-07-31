package androidx.work;

import androidx.work.impl.utils.WorkForegroundUpdater;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.CoroutineContext;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class WorkerParameters {
    public ExecutorService mBackgroundExecutor;
    public WorkForegroundUpdater mForegroundUpdater;
    public UUID mId;
    public Data mInputData;
    public Dispatcher mWorkTaskExecutor;
    public CoroutineContext mWorkerContext;
    public SystemClock mWorkerFactory;
}
