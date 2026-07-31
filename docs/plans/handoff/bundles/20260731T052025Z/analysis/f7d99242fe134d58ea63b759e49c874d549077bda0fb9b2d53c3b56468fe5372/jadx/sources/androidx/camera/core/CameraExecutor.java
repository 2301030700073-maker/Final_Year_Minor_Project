package androidx.camera.core;

import androidx.compose.ui.node.NodeChain;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraExecutor implements Executor, ScheduledExecutorService, AutoCloseable {
    public static final AnonymousClass1 THREAD_FACTORY = new AnonymousClass1(0);
    public final Object mExecutorLock = new Object();
    public ScheduledThreadPoolExecutor mThreadPoolExecutor;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: androidx.camera.core.CameraExecutor$1, reason: invalid class name */
    public final class AnonymousClass1 implements ThreadFactory {
        public final /* synthetic */ int $r8$classId;
        public final AtomicInteger mThreadId;

        public AnonymousClass1(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 1:
                    this.mThreadId = new AtomicInteger(0);
                    break;
                case 2:
                    this.mThreadId = new AtomicInteger(0);
                    break;
                case 3:
                    this.mThreadId = new AtomicInteger(1);
                    break;
                default:
                    this.mThreadId = new AtomicInteger(0);
                    break;
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            int i = this.$r8$classId;
            AtomicInteger atomicInteger = this.mThreadId;
            switch (i) {
                case 0:
                    Thread thread = new Thread(new Preview$$ExternalSyntheticLambda0(9, runnable));
                    thread.setPriority(7);
                    Locale locale = Locale.US;
                    thread.setName("CameraX-core_camera_" + atomicInteger.getAndIncrement());
                    return thread;
                case 1:
                    Thread thread2 = new Thread(runnable);
                    thread2.setName("arch_disk_io_" + atomicInteger.getAndIncrement());
                    return thread2;
                case 2:
                    Thread thread3 = new Thread(runnable);
                    Locale locale2 = Locale.US;
                    thread3.setName("CameraX-camerax_io_" + atomicInteger.getAndIncrement());
                    return thread3;
                default:
                    return new Thread(runnable, "ModernAsyncTask #" + atomicInteger.getAndIncrement());
            }
        }
    }

    public CameraExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, THREAD_FACTORY);
        scheduledThreadPoolExecutor.setKeepAliveTime(0L, TimeUnit.MILLISECONDS);
        scheduledThreadPoolExecutor.setRejectedExecutionHandler(new CameraExecutor$$ExternalSyntheticLambda1());
        this.mThreadPoolExecutor = scheduledThreadPoolExecutor;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        boolean awaitTermination;
        synchronized (this.mExecutorLock) {
            awaitTermination = this.mThreadPoolExecutor.awaitTermination(j, timeUnit);
        }
        return awaitTermination;
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        CameraExecutor$$ExternalSyntheticAutoCloseableForwarder0.m(this);
    }

    public final void deinit() {
        synchronized (this.mExecutorLock) {
            try {
                if (!this.mThreadPoolExecutor.isShutdown()) {
                    this.mThreadPoolExecutor.shutdown();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.mExecutorLock) {
            this.mThreadPoolExecutor.execute(runnable);
        }
    }

    public final void init(NodeChain nodeChain) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        nodeChain.getClass();
        synchronized (this.mExecutorLock) {
            try {
                if (this.mThreadPoolExecutor.isShutdown()) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, THREAD_FACTORY);
                    scheduledThreadPoolExecutor2.setKeepAliveTime(0L, TimeUnit.MILLISECONDS);
                    scheduledThreadPoolExecutor2.setRejectedExecutionHandler(new CameraExecutor$$ExternalSyntheticLambda1());
                    this.mThreadPoolExecutor = scheduledThreadPoolExecutor2;
                }
                scheduledThreadPoolExecutor = this.mThreadPoolExecutor;
            } catch (Throwable th) {
                throw th;
            }
        }
        scheduledThreadPoolExecutor.setCorePoolSize(Math.max(1, nodeChain.getAvailableCameraIds().size()));
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection) {
        List invokeAll;
        synchronized (this.mExecutorLock) {
            invokeAll = this.mThreadPoolExecutor.invokeAll(collection);
        }
        return invokeAll;
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection) {
        Object invokeAny;
        synchronized (this.mExecutorLock) {
            invokeAny = this.mThreadPoolExecutor.invokeAny(collection);
        }
        return invokeAny;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        boolean isShutdown;
        synchronized (this.mExecutorLock) {
            isShutdown = this.mThreadPoolExecutor.isShutdown();
        }
        return isShutdown;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        boolean isTerminated;
        synchronized (this.mExecutorLock) {
            isTerminated = this.mThreadPoolExecutor.isTerminated();
        }
        return isTerminated;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledFuture<?> schedule;
        synchronized (this.mExecutorLock) {
            schedule = this.mThreadPoolExecutor.schedule(runnable, j, timeUnit);
        }
        return schedule;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduleAtFixedRate;
        synchronized (this.mExecutorLock) {
            scheduleAtFixedRate = this.mThreadPoolExecutor.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }
        return scheduleAtFixedRate;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        ScheduledFuture<?> scheduleWithFixedDelay;
        synchronized (this.mExecutorLock) {
            scheduleWithFixedDelay = this.mThreadPoolExecutor.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }
        return scheduleWithFixedDelay;
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        synchronized (this.mExecutorLock) {
            this.mThreadPoolExecutor.shutdown();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        List<Runnable> shutdownNow;
        synchronized (this.mExecutorLock) {
            shutdownNow = this.mThreadPoolExecutor.shutdownNow();
        }
        return shutdownNow;
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Callable callable) {
        Future submit;
        synchronized (this.mExecutorLock) {
            submit = this.mThreadPoolExecutor.submit(callable);
        }
        return submit;
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        List invokeAll;
        synchronized (this.mExecutorLock) {
            invokeAll = this.mThreadPoolExecutor.invokeAll(collection, j, timeUnit);
        }
        return invokeAll;
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        Object invokeAny;
        synchronized (this.mExecutorLock) {
            invokeAny = this.mThreadPoolExecutor.invokeAny(collection, j, timeUnit);
        }
        return invokeAny;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        ScheduledFuture schedule;
        synchronized (this.mExecutorLock) {
            schedule = this.mThreadPoolExecutor.schedule(callable, j, timeUnit);
        }
        return schedule;
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable, Object obj) {
        Future submit;
        synchronized (this.mExecutorLock) {
            submit = this.mThreadPoolExecutor.submit(runnable, obj);
        }
        return submit;
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        Future<?> submit;
        synchronized (this.mExecutorLock) {
            submit = this.mThreadPoolExecutor.submit(runnable);
        }
        return submit;
    }
}
