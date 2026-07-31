package androidx.camera.core.impl.utils.executor;

import android.os.Handler;
import android.os.SystemClock;
import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import androidx.camera.core.impl.utils.futures.ImmediateFuture$ImmediateFailedScheduledFuture;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$SafeFuture;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import androidx.core.view.MenuHostHelper;
import androidx.loader.content.ModernAsyncTask$2;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.random.FallbackThreadLocalRandom$implStorage$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HandlerScheduledExecutorService extends AbstractExecutorService implements ScheduledExecutorService, AutoCloseable {
    public final Handler mHandler;

    static {
        new FallbackThreadLocalRandom$implStorage$1(1);
    }

    public HandlerScheduledExecutorService(Handler handler) {
        this.mHandler = handler;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("HandlerScheduledExecutorService cannot be shut down. Use Looper.quitSafely().");
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(this);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Handler handler = this.mHandler;
        if (handler.post(runnable)) {
            return;
        }
        DifferentialMotionFlingController$$ExternalSyntheticLambda0.m794m((Object) handler);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        long convert = TimeUnit.MILLISECONDS.convert(j, timeUnit) + SystemClock.uptimeMillis();
        Handler handler = this.mHandler;
        HandlerScheduledFuture handlerScheduledFuture = new HandlerScheduledFuture(handler, convert, callable);
        if (handler.postAtTime(handlerScheduledFuture, convert)) {
            return handlerScheduledFuture;
        }
        return new ImmediateFuture$ImmediateFailedScheduledFuture(0, new RejectedExecutionException(handler + " is shutting down"));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("HandlerScheduledExecutorService does not yet support fixed-rate scheduling.");
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("HandlerScheduledExecutorService does not yet support fixed-delay scheduling.");
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException("HandlerScheduledExecutorService cannot be shut down. Use Looper.quitSafely().");
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        throw new UnsupportedOperationException("HandlerScheduledExecutorService cannot be shut down. Use Looper.quitSafely().");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class HandlerScheduledFuture implements RunnableScheduledFuture {
        public final AtomicReference mCompleter = new AtomicReference(null);
        public final CallbackToFutureAdapter$SafeFuture mDelegate;
        public final long mRunAtMillis;
        public final Callable mTask;

        public HandlerScheduledFuture(Handler handler, long j, Callable callable) {
            this.mRunAtMillis = j;
            this.mTask = callable;
            this.mDelegate = OAuthBearer.getFuture(new MenuHostHelper(this, handler, callable, false, 8));
        }

        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return this.mDelegate.cancel(z);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Delayed delayed) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            return Long.compare(getDelay(timeUnit), delayed.getDelay(timeUnit));
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.mDelegate.delegate.get();
        }

        @Override // java.util.concurrent.Delayed
        public final long getDelay(TimeUnit timeUnit) {
            return timeUnit.convert(this.mRunAtMillis - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.mDelegate.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return this.mDelegate.delegate.isDone();
        }

        @Override // java.util.concurrent.RunnableScheduledFuture
        public final boolean isPeriodic() {
            return false;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public final void run() {
            CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.mCompleter.getAndSet(null);
            if (callbackToFutureAdapter$Completer != null) {
                try {
                    callbackToFutureAdapter$Completer.set(this.mTask.call());
                } catch (Exception e) {
                    callbackToFutureAdapter$Completer.setException(e);
                }
            }
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            return this.mDelegate.delegate.get(j, timeUnit);
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return schedule(new ModernAsyncTask$2(1, runnable), j, timeUnit);
    }
}
