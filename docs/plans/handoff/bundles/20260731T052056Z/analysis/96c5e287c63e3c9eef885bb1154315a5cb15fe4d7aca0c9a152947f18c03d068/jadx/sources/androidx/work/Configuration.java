package androidx.work;

import android.os.Build;
import coil3.memory.MemoryCacheService;
import java.util.concurrent.ExecutorService;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Configuration {
    public final int maxSchedulerLimit;
    public final SystemClock tracer;
    public final ExecutorService executor = UStringsKt.createDefaultExecutor(false);
    public final DefaultScheduler workerCoroutineContext = Dispatchers.Default;
    public final ExecutorService taskExecutor = UStringsKt.createDefaultExecutor(true);
    public final SystemClock clock = new SystemClock();
    public final MemoryCacheService runnableScheduler = new MemoryCacheService(11, (byte) 0);

    public Configuration(SystemClock systemClock) {
        this.maxSchedulerLimit = Build.VERSION.SDK_INT == 23 ? 10 : 20;
        this.tracer = new SystemClock();
    }
}
