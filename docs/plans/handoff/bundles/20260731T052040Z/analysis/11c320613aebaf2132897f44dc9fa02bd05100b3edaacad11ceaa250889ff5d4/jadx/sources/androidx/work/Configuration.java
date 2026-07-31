package androidx.work;

import android.os.Build;
import coil3.memory.MemoryCacheService;
import com.google.android.exoplayer2.util.Log;
import java.util.concurrent.ExecutorService;
import kotlin.io.CloseableKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Configuration {
    public final int contentUriTriggerWorkersLimit;
    public final boolean isMarkingJobsAsImportantWhileForeground;
    public final int maxSchedulerLimit;
    public final SystemClock tracer;
    public final ExecutorService executor = CloseableKt.access$createDefaultExecutor(false);
    public final DefaultScheduler workerCoroutineContext = Dispatchers.Default;
    public final ExecutorService taskExecutor = CloseableKt.access$createDefaultExecutor(true);
    public final SystemClock clock = new SystemClock();
    public final SystemClock workerFactory = SystemClock.INSTANCE;
    public final SystemClock inputMergerFactory = SystemClock.INSTANCE$1;
    public final MemoryCacheService runnableScheduler = new MemoryCacheService(28);
    public final int minimumLoggingLevel = 4;
    public final int maxJobSchedulerId = Log.LOG_LEVEL_OFF;

    public Configuration(SystemClock systemClock) {
        this.maxSchedulerLimit = Build.VERSION.SDK_INT == 23 ? 10 : 20;
        this.contentUriTriggerWorkersLimit = 8;
        this.isMarkingJobsAsImportantWhileForeground = true;
        this.tracer = new SystemClock();
    }
}
