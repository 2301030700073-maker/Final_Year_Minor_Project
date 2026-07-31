package io.reactivex.rxjava3.core;

import android.os.Handler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInterval;
import io.reactivex.rxjava3.internal.schedulers.NewThreadWorker;
import java.util.concurrent.TimeUnit;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Scheduler {
    public static final long CLOCK_DRIFT_TOLERANCE_NANOSECONDS;
    public static final boolean IS_DRIFT_USE_NANOTIME = Boolean.getBoolean("rx3.scheduler.use-nanotime");

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DisposeTask implements Disposable, Runnable {
        public final Runnable decoratedRun;
        public Thread runner;
        public final Worker w;

        public DisposeTask(Runnable runnable, Worker worker) {
            this.decoratedRun = runnable;
            this.w = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.runner == Thread.currentThread()) {
                Worker worker = this.w;
                if (worker instanceof NewThreadWorker) {
                    NewThreadWorker newThreadWorker = (NewThreadWorker) worker;
                    if (newThreadWorker.disposed) {
                        return;
                    }
                    newThreadWorker.disposed = true;
                    newThreadWorker.executor.shutdown();
                    return;
                }
            }
            this.w.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.w.isDisposed();
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.runner = Thread.currentThread();
            try {
                this.decoratedRun.run();
            } finally {
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PeriodicDirectTask implements Runnable, Disposable {
        public final /* synthetic */ int $r8$classId;
        public volatile boolean disposed;
        public final Object run;
        public final Object worker;

        public /* synthetic */ PeriodicDirectTask(Object obj, Object obj2, int i) {
            this.$r8$classId = i;
            this.run = obj;
            this.worker = obj2;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            switch (this.$r8$classId) {
                case 0:
                    this.disposed = true;
                    ((Worker) this.worker).dispose();
                    break;
                default:
                    ((Handler) this.run).removeCallbacks(this);
                    this.disposed = true;
                    break;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            switch (this.$r8$classId) {
            }
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.$r8$classId) {
                case 0:
                    if (this.disposed) {
                        return;
                    }
                    try {
                        ((ObservableInterval.IntervalObserver) this.run).run();
                        return;
                    } catch (Throwable th) {
                        dispose();
                        MathKt.onError(th);
                        throw th;
                    }
                default:
                    try {
                        ((Runnable) this.worker).run();
                        return;
                    } catch (Throwable th2) {
                        MathKt.onError(th2);
                        return;
                    }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Worker implements Disposable {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class PeriodicTask implements Runnable {
            public long count;
            public final Runnable decoratedRun;
            public long lastNowNanoseconds;
            public final long periodInNanoseconds;
            public final SequentialDisposable sd;
            public long startInNanoseconds;

            public PeriodicTask(long j, Runnable runnable, long j2, SequentialDisposable sequentialDisposable, long j3) {
                this.decoratedRun = runnable;
                this.sd = sequentialDisposable;
                this.periodInNanoseconds = j3;
                this.lastNowNanoseconds = j2;
                this.startInNanoseconds = j;
            }

            @Override // java.lang.Runnable
            public final void run() {
                long j;
                this.decoratedRun.run();
                SequentialDisposable sequentialDisposable = this.sd;
                if (sequentialDisposable.isDisposed()) {
                    return;
                }
                Worker worker = Worker.this;
                worker.getClass();
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long now = Worker.now(timeUnit);
                long j2 = Scheduler.CLOCK_DRIFT_TOLERANCE_NANOSECONDS;
                long j3 = now + j2;
                long j4 = this.lastNowNanoseconds;
                long j5 = this.periodInNanoseconds;
                if (j3 < j4 || now >= j4 + j5 + j2) {
                    j = now + j5;
                    long j6 = this.count + 1;
                    this.count = j6;
                    this.startInNanoseconds = j - (j5 * j6);
                } else {
                    long j7 = this.startInNanoseconds;
                    long j8 = this.count + 1;
                    this.count = j8;
                    j = (j8 * j5) + j7;
                }
                this.lastNowNanoseconds = now;
                DisposableHelper.replace(sequentialDisposable, worker.schedule(this, j - now, timeUnit));
            }
        }

        public static long now(TimeUnit timeUnit) {
            return !Scheduler.IS_DRIFT_USE_NANOTIME ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
        }

        public Disposable schedule(Runnable runnable) {
            return schedule(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract Disposable schedule(Runnable runnable, long j, TimeUnit timeUnit);

        public final Disposable schedulePeriodically(Runnable runnable, long j, long j2) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long nanos = timeUnit.toNanos(j2);
            long now = now(TimeUnit.NANOSECONDS);
            Disposable schedule = schedule(new PeriodicTask(timeUnit.toNanos(j) + now, runnable, now, sequentialDisposable2, nanos), j, timeUnit);
            if (schedule == EmptyDisposable.INSTANCE) {
                return schedule;
            }
            DisposableHelper.replace(sequentialDisposable, schedule);
            return sequentialDisposable2;
        }
    }

    static {
        long longValue = Long.getLong("rx3.scheduler.drift-tolerance", 15L).longValue();
        String property = System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes");
        CLOCK_DRIFT_TOLERANCE_NANOSECONDS = "seconds".equalsIgnoreCase(property) ? TimeUnit.SECONDS.toNanos(longValue) : "milliseconds".equalsIgnoreCase(property) ? TimeUnit.MILLISECONDS.toNanos(longValue) : TimeUnit.MINUTES.toNanos(longValue);
    }

    public abstract Worker createWorker();

    public Disposable scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        Worker createWorker = createWorker();
        DisposeTask disposeTask = new DisposeTask(runnable, createWorker);
        createWorker.schedule(disposeTask, 0L, TimeUnit.NANOSECONDS);
        return disposeTask;
    }

    public Disposable schedulePeriodicallyDirect(ObservableInterval.IntervalObserver intervalObserver, long j, long j2) {
        Worker createWorker = createWorker();
        PeriodicDirectTask periodicDirectTask = new PeriodicDirectTask(intervalObserver, createWorker, 0);
        Disposable schedulePeriodically = createWorker.schedulePeriodically(periodicDirectTask, j, j2);
        return schedulePeriodically == EmptyDisposable.INSTANCE ? schedulePeriodically : periodicDirectTask;
    }

    public Disposable scheduleDirect(Runnable runnable) {
        return scheduleDirect(runnable, 0L, TimeUnit.NANOSECONDS);
    }
}
