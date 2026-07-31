package kotlinx.coroutines.scheduling;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultScheduler extends ExecutorCoroutineDispatcher {
    public static final DefaultScheduler INSTANCE;
    public CoroutineScheduler coroutineScheduler;

    static {
        int i = TasksKt.CORE_POOL_SIZE;
        int i2 = TasksKt.MAX_POOL_SIZE;
        long j = TasksKt.IDLE_WORKER_KEEP_ALIVE_NS;
        String str = TasksKt.DEFAULT_SCHEDULER_NAME;
        DefaultScheduler defaultScheduler = new DefaultScheduler();
        defaultScheduler.coroutineScheduler = new CoroutineScheduler(i, i2, j, str);
        INSTANCE = defaultScheduler;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.dispatch$default(this.coroutineScheduler, runnable, 6);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        CoroutineScheduler.dispatch$default(this.coroutineScheduler, runnable, 2);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i) {
        InlineList.checkParallelism(i);
        return i >= TasksKt.CORE_POOL_SIZE ? this : super.limitedParallelism(i);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.Default";
    }
}
