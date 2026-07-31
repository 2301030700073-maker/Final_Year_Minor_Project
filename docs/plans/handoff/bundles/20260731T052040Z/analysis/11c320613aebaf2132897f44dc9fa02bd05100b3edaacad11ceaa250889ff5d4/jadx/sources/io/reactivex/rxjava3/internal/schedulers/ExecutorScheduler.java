package io.reactivex.rxjava3.internal.schedulers;

import com.grack.nanojson.JsonBuilder;
import com.livefront.bridge.BridgeDelegate;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInterval;
import io.reactivex.rxjava3.internal.schedulers.TrampolineScheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ExecutorScheduler extends Scheduler {
    public final Executor executor;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DelayedDispose implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final Object dr;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ DelayedDispose(Object obj, Object obj2, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.dr = obj2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.$r8$classId) {
                case 0:
                    DelayedRunnable delayedRunnable = (DelayedRunnable) this.dr;
                    SequentialDisposable sequentialDisposable = delayedRunnable.direct;
                    Disposable scheduleDirect = ((ExecutorScheduler) this.this$0).scheduleDirect(delayedRunnable);
                    sequentialDisposable.getClass();
                    DisposableHelper.replace(sequentialDisposable, scheduleDirect);
                    break;
                default:
                    ((TrampolineScheduler.TimedRunnable) this.dr).disposed = true;
                    ((TrampolineScheduler.TrampolineWorker) this.this$0).queue.remove((TrampolineScheduler.TimedRunnable) this.dr);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DelayedRunnable extends AtomicReference implements Runnable, Disposable {
        private static final long serialVersionUID = -4101336210206799084L;
        final SequentialDisposable direct;
        final SequentialDisposable timed;

        public DelayedRunnable(Runnable runnable) {
            super(runnable);
            this.timed = new SequentialDisposable();
            this.direct = new SequentialDisposable();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (getAndSet(null) != null) {
                SequentialDisposable sequentialDisposable = this.timed;
                sequentialDisposable.getClass();
                DisposableHelper.dispose(sequentialDisposable);
                SequentialDisposable sequentialDisposable2 = this.direct;
                sequentialDisposable2.getClass();
                DisposableHelper.dispose(sequentialDisposable2);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() == null;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            Runnable runnable = (Runnable) get();
            if (runnable != null) {
                try {
                    try {
                        runnable.run();
                    } finally {
                        lazySet(null);
                        this.timed.lazySet(disposableHelper);
                        this.direct.lazySet(disposableHelper);
                    }
                } catch (Throwable th) {
                    MathKt.onError(th);
                    throw th;
                }
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SingleHolder {
        public static final SingleScheduler HELPER = Schedulers.SINGLE;
    }

    public ExecutorScheduler(Executor executor) {
        this.executor = executor;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker createWorker() {
        return new ExecutorWorker(this.executor);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        Executor executor = this.executor;
        boolean z = executor instanceof ScheduledExecutorService;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (z) {
            try {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnable);
                scheduledDirectTask.setFuture(((ScheduledExecutorService) executor).schedule(scheduledDirectTask, 0L, timeUnit2));
                return scheduledDirectTask;
            } catch (RejectedExecutionException e) {
                MathKt.onError(e);
                return EmptyDisposable.INSTANCE;
            }
        }
        DelayedRunnable delayedRunnable = new DelayedRunnable(runnable);
        Disposable scheduleDirect = SingleHolder.HELPER.scheduleDirect(new DelayedDispose(this, delayedRunnable, 0), 0L, timeUnit2);
        SequentialDisposable sequentialDisposable = delayedRunnable.timed;
        sequentialDisposable.getClass();
        DisposableHelper.replace(sequentialDisposable, scheduleDirect);
        return delayedRunnable;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable schedulePeriodicallyDirect(ObservableInterval.IntervalObserver intervalObserver, long j, long j2) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Executor executor = this.executor;
        if (!(executor instanceof ScheduledExecutorService)) {
            return super.schedulePeriodicallyDirect(intervalObserver, j, j2);
        }
        try {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(intervalObserver);
            scheduledDirectPeriodicTask.setFuture(((ScheduledExecutorService) executor).scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e) {
            MathKt.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable scheduleDirect(Runnable runnable) {
        Executor executor = this.executor;
        try {
            if (executor instanceof ExecutorService) {
                ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnable);
                scheduledDirectTask.setFuture(((ExecutorService) executor).submit(scheduledDirectTask));
                return scheduledDirectTask;
            }
            ExecutorWorker.InterruptibleRunnable interruptibleRunnable = new ExecutorWorker.InterruptibleRunnable(runnable, null);
            executor.execute(interruptibleRunnable);
            return interruptibleRunnable;
        } catch (RejectedExecutionException e) {
            MathKt.onError(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ExecutorWorker extends Scheduler.Worker implements Runnable {
        public volatile boolean disposed;
        public final Executor executor;
        public final AtomicInteger wip = new AtomicInteger();
        public final CompositeDisposable tasks = new CompositeDisposable();
        public final JsonBuilder queue = new JsonBuilder(24);
        public final boolean interruptibleWorker = true;
        public final boolean fair = true;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class BooleanRunnable extends AtomicBoolean implements Runnable, Disposable {
            private static final long serialVersionUID = -2421395018820541164L;
            final Runnable actual;

            public BooleanRunnable(Runnable runnable) {
                this.actual = runnable;
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final void dispose() {
                lazySet(true);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final boolean isDisposed() {
                return get();
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (get()) {
                    return;
                }
                try {
                    this.actual.run();
                } finally {
                }
            }
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class InterruptibleRunnable extends AtomicInteger implements Runnable, Disposable {
            private static final long serialVersionUID = -3603436687413320876L;
            final Runnable run;
            final DisposableContainer tasks;
            volatile Thread thread;

            public InterruptibleRunnable(Runnable runnable, DisposableContainer disposableContainer) {
                this.run = runnable;
                this.tasks = disposableContainer;
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final void dispose() {
                while (true) {
                    int i = get();
                    if (i >= 2) {
                        return;
                    }
                    if (i == 0) {
                        if (compareAndSet(0, 4)) {
                            DisposableContainer disposableContainer = this.tasks;
                            if (disposableContainer != null) {
                                disposableContainer.delete(this);
                                return;
                            }
                            return;
                        }
                    } else if (compareAndSet(1, 3)) {
                        Thread thread = this.thread;
                        if (thread != null) {
                            thread.interrupt();
                            this.thread = null;
                        }
                        set(4);
                        DisposableContainer disposableContainer2 = this.tasks;
                        if (disposableContainer2 != null) {
                            disposableContainer2.delete(this);
                            return;
                        }
                        return;
                    }
                }
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final boolean isDisposed() {
                return get() >= 2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (get() == 0) {
                    this.thread = Thread.currentThread();
                    if (!compareAndSet(0, 1)) {
                        this.thread = null;
                        return;
                    }
                    try {
                        this.run.run();
                        this.thread = null;
                        if (!compareAndSet(1, 2)) {
                            while (get() == 3) {
                                Thread.yield();
                            }
                            Thread.interrupted();
                        } else {
                            DisposableContainer disposableContainer = this.tasks;
                            if (disposableContainer != null) {
                                disposableContainer.delete(this);
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            MathKt.onError(th);
                            throw th;
                        } catch (Throwable th2) {
                            this.thread = null;
                            if (compareAndSet(1, 2)) {
                                DisposableContainer disposableContainer2 = this.tasks;
                                if (disposableContainer2 != null) {
                                    disposableContainer2.delete(this);
                                }
                            } else {
                                while (get() == 3) {
                                    Thread.yield();
                                }
                                Thread.interrupted();
                            }
                            throw th2;
                        }
                    }
                }
            }
        }

        public ExecutorWorker(Executor executor) {
            this.executor = executor;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.disposed) {
                return;
            }
            this.disposed = true;
            this.tasks.dispose();
            if (this.wip.getAndIncrement() == 0) {
                this.queue.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z = this.fair;
            JsonBuilder jsonBuilder = this.queue;
            if (z) {
                if (this.disposed) {
                    jsonBuilder.clear();
                    return;
                }
                ((Runnable) jsonBuilder.poll()).run();
                if (this.disposed) {
                    jsonBuilder.clear();
                    return;
                } else {
                    if (this.wip.decrementAndGet() != 0) {
                        this.executor.execute(this);
                        return;
                    }
                    return;
                }
            }
            int i = 1;
            while (!this.disposed) {
                do {
                    Runnable runnable = (Runnable) jsonBuilder.poll();
                    if (runnable != null) {
                        runnable.run();
                    } else if (this.disposed) {
                        jsonBuilder.clear();
                        return;
                    } else {
                        i = this.wip.addAndGet(-i);
                        if (i == 0) {
                            return;
                        }
                    }
                } while (!this.disposed);
                jsonBuilder.clear();
                return;
            }
            jsonBuilder.clear();
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            EmptyDisposable emptyDisposable = EmptyDisposable.INSTANCE;
            if (j <= 0) {
                return schedule(runnable);
            }
            if (this.disposed) {
                return emptyDisposable;
            }
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(new BridgeDelegate.AnonymousClass3(4, this, sequentialDisposable2, runnable), this.tasks, this.interruptibleWorker);
            this.tasks.add(scheduledRunnable);
            Executor executor = this.executor;
            if (executor instanceof ScheduledExecutorService) {
                try {
                    scheduledRunnable.setFuture(((ScheduledExecutorService) executor).schedule((Callable) scheduledRunnable, j, timeUnit));
                } catch (RejectedExecutionException e) {
                    this.disposed = true;
                    MathKt.onError(e);
                    return emptyDisposable;
                }
            } else {
                scheduledRunnable.setFuture(new DisposeOnCancel(SingleHolder.HELPER.scheduleDirect(scheduledRunnable, j, timeUnit)));
            }
            DisposableHelper.replace(sequentialDisposable, scheduledRunnable);
            return sequentialDisposable2;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable) {
            Disposable booleanRunnable;
            EmptyDisposable emptyDisposable = EmptyDisposable.INSTANCE;
            if (this.disposed) {
                return emptyDisposable;
            }
            if (this.interruptibleWorker) {
                booleanRunnable = new InterruptibleRunnable(runnable, this.tasks);
                this.tasks.add(booleanRunnable);
            } else {
                booleanRunnable = new BooleanRunnable(runnable);
            }
            this.queue.offer(booleanRunnable);
            if (this.wip.getAndIncrement() != 0) {
                return booleanRunnable;
            }
            try {
                this.executor.execute(this);
                return booleanRunnable;
            } catch (RejectedExecutionException e) {
                this.disposed = true;
                this.queue.clear();
                MathKt.onError(e);
                return emptyDisposable;
            }
        }
    }
}
