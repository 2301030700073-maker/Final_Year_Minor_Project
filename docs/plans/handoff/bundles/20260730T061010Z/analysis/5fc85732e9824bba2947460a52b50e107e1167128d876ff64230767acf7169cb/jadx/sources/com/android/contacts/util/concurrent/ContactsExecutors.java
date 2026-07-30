package com.android.contacts.util.concurrent;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.google.common.util.concurrent.ForwardingFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class ContactsExecutors {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final ListeningExecutorService DEFAULT_THREAD_POOL_EXECUTOR;
    private static ListeningExecutorService sSimExecutor;

    static {
        ListeningExecutorService listeningDecorator;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        CORE_POOL_SIZE = availableProcessors + 1;
        Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
        if (executor instanceof ExecutorService) {
            listeningDecorator = MoreExecutors.listeningDecorator((ExecutorService) executor);
        } else {
            listeningDecorator = MoreExecutors.listeningDecorator(Executors.newFixedThreadPool(CORE_POOL_SIZE));
        }
        DEFAULT_THREAD_POOL_EXECUTOR = listeningDecorator;
    }

    public static ListeningExecutorService getDefaultThreadPoolExecutor() {
        return DEFAULT_THREAD_POOL_EXECUTOR;
    }

    public static ScheduledExecutorService newUiThreadExecutor() {
        return newHandlerExecutor(new Handler(Looper.getMainLooper()));
    }

    public static ScheduledExecutorService newHandlerExecutor(Handler handler) {
        return new HandlerExecutorService(handler);
    }

    public static synchronized ListeningExecutorService getSimReadExecutor() {
        ListeningExecutorService listeningExecutorService;
        synchronized (ContactsExecutors.class) {
            if (sSimExecutor == null) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                threadPoolExecutor.allowCoreThreadTimeOut(true);
                sSimExecutor = MoreExecutors.listeningDecorator(threadPoolExecutor);
            }
            listeningExecutorService = sSimExecutor;
        }
        return listeningExecutorService;
    }

    private static class HandlerExecutorService extends AbstractExecutorService implements ScheduledExecutorService {
        private final Handler mHandler;

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return false;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return false;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            return null;
        }

        private HandlerExecutorService(Handler handler) {
            this.mHandler = handler;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            HandlerFuture<Void> fromRunnable = HandlerFuture.fromRunnable(this.mHandler, j, timeUnit, runnable);
            this.mHandler.postDelayed(fromRunnable, timeUnit.toMillis(j));
            return fromRunnable;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            HandlerFuture handlerFuture = new HandlerFuture(this.mHandler, j, timeUnit, callable);
            this.mHandler.postDelayed(handlerFuture, timeUnit.toMillis(j));
            return handlerFuture;
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.mHandler.post(runnable);
        }
    }

    private static class HandlerFuture<T> extends ForwardingFuture<T> implements RunnableScheduledFuture<T> {
        private final long mDelayMillis;
        private final SettableFuture<T> mDelegate;
        private final Handler mHandler;
        private final AtomicLong mStart;
        private final Callable<T> mTask;

        @Override // java.util.concurrent.RunnableScheduledFuture
        public boolean isPeriodic() {
            return false;
        }

        private HandlerFuture(Handler handler, long j, TimeUnit timeUnit, Callable<T> callable) {
            this.mDelegate = SettableFuture.create();
            this.mStart = new AtomicLong(-1L);
            this.mHandler = handler;
            this.mDelayMillis = timeUnit.toMillis(j);
            this.mTask = callable;
        }

        @Override // java.util.concurrent.Delayed
        public long getDelay(TimeUnit timeUnit) {
            long j = this.mStart.get();
            if (j < 0) {
                return this.mDelayMillis;
            }
            return TimeUnit.MILLISECONDS.convert(this.mDelayMillis - (System.currentTimeMillis() - j), timeUnit);
        }

        @Override // java.lang.Comparable
        public int compareTo(Delayed delayed) {
            return Long.compare(getDelay(TimeUnit.MILLISECONDS), delayed.getDelay(TimeUnit.MILLISECONDS));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public Future<T> delegate() {
            return this.mDelegate;
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            this.mHandler.removeCallbacks(this);
            return super.cancel(z);
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public void run() {
            if (this.mStart.compareAndSet(-1L, System.currentTimeMillis())) {
                try {
                    this.mDelegate.set(this.mTask.call());
                } catch (Exception e) {
                    this.mDelegate.setException(e);
                }
            }
        }

        public static HandlerFuture<Void> fromRunnable(Handler handler, long j, TimeUnit timeUnit, final Runnable runnable) {
            return new HandlerFuture<>(handler, j, timeUnit, new Callable<Void>() { // from class: com.android.contacts.util.concurrent.ContactsExecutors.HandlerFuture.1
                @Override // java.util.concurrent.Callable
                public Void call() throws Exception {
                    runnable.run();
                    return null;
                }
            });
        }
    }
}
