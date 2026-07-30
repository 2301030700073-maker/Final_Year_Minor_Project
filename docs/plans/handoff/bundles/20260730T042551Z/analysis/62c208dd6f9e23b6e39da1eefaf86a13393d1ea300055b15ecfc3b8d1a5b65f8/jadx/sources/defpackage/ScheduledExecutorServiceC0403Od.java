package defpackage;

import defpackage.ScheduledFutureC0425Pd;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* renamed from: Od, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ScheduledExecutorServiceC0403Od implements ScheduledExecutorService {

    /* renamed from: do, reason: not valid java name */
    public final ExecutorService f2656do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f2657do;

    public ScheduledExecutorServiceC0403Od(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.f2656do = executorService;
        this.f2657do = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f2656do.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f2656do.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.f2656do.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) this.f2656do.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f2656do.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f2656do.isTerminated();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return new ScheduledFutureC0425Pd(new C0272Id(this, runnable, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleAtFixedRate(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new ScheduledFutureC0425Pd(new ScheduledFutureC0425Pd.Cfor() { // from class: Kd
            @Override // defpackage.ScheduledFutureC0425Pd.Cfor
            /* renamed from: do */
            public final ScheduledFuture mo855do(final ScheduledFutureC0425Pd.Cdo cdo) {
                long j3 = j;
                long j4 = j2;
                TimeUnit timeUnit2 = timeUnit;
                final ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od = ScheduledExecutorServiceC0403Od.this;
                ScheduledExecutorService scheduledExecutorService = scheduledExecutorServiceC0403Od.f2657do;
                final Runnable runnable2 = runnable;
                return scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: Ld
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od2 = ScheduledExecutorServiceC0403Od.this;
                        scheduledExecutorServiceC0403Od2.getClass();
                        scheduledExecutorServiceC0403Od2.f2656do.execute(new RunnableC2668e2(2, runnable2, cdo));
                    }
                }, j3, j4, timeUnit2);
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture<?> scheduleWithFixedDelay(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new ScheduledFutureC0425Pd(new ScheduledFutureC0425Pd.Cfor() { // from class: Jd
            @Override // defpackage.ScheduledFutureC0425Pd.Cfor
            /* renamed from: do */
            public final ScheduledFuture mo855do(ScheduledFutureC0425Pd.Cdo cdo) {
                long j3 = j;
                long j4 = j2;
                TimeUnit timeUnit2 = timeUnit;
                ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od = ScheduledExecutorServiceC0403Od.this;
                return scheduledExecutorServiceC0403Od.f2657do.scheduleWithFixedDelay(new RunnableC0359Md(scheduledExecutorServiceC0403Od, runnable, cdo, 0), j3, j4, timeUnit2);
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f2656do.submit(callable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return this.f2656do.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) this.f2656do.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final <V> ScheduledFuture<V> schedule(final Callable<V> callable, final long j, final TimeUnit timeUnit) {
        return new ScheduledFutureC0425Pd(new ScheduledFutureC0425Pd.Cfor() { // from class: Hd
            @Override // defpackage.ScheduledFutureC0425Pd.Cfor
            /* renamed from: do, reason: not valid java name */
            public final ScheduledFuture mo855do(final ScheduledFutureC0425Pd.Cdo cdo) {
                final ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od = ScheduledExecutorServiceC0403Od.this;
                scheduledExecutorServiceC0403Od.getClass();
                final Callable callable2 = callable;
                return scheduledExecutorServiceC0403Od.f2657do.schedule(new Callable() { // from class: Nd
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od2 = ScheduledExecutorServiceC0403Od.this;
                        scheduledExecutorServiceC0403Od2.getClass();
                        return scheduledExecutorServiceC0403Od2.f2656do.submit(new RunnableC3998xn(2, callable2, cdo));
                    }
                }, j, timeUnit);
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, T t) {
        return this.f2656do.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f2656do.submit(runnable);
    }
}
