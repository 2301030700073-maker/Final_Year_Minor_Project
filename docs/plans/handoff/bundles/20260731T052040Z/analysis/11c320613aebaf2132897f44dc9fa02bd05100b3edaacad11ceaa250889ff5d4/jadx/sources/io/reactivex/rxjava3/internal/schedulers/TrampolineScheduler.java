package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TrampolineScheduler extends Scheduler {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SleepingRunnable implements Runnable {
        public final long execTime;
        public final Runnable run;
        public final TrampolineWorker worker;

        public SleepingRunnable(Runnable runnable, TrampolineWorker trampolineWorker, long j) {
            this.run = runnable;
            this.worker = trampolineWorker;
            this.execTime = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.worker.disposed) {
                return;
            }
            long now = Scheduler.Worker.now(TimeUnit.MILLISECONDS);
            long j = this.execTime;
            if (j > now) {
                try {
                    Thread.sleep(j - now);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    MathKt.onError(e);
                    return;
                }
            }
            if (this.worker.disposed) {
                return;
            }
            this.run.run();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TimedRunnable implements Comparable {
        public final int count;
        public volatile boolean disposed;
        public final long execTime;
        public final Runnable run;

        public TimedRunnable(Runnable runnable, Long l, int i) {
            this.run = runnable;
            this.execTime = l.longValue();
            this.count = i;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            TimedRunnable timedRunnable = (TimedRunnable) obj;
            int compare = Long.compare(this.execTime, timedRunnable.execTime);
            return compare == 0 ? Integer.compare(this.count, timedRunnable.count) : compare;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TrampolineWorker extends Scheduler.Worker {
        public volatile boolean disposed;
        public final PriorityBlockingQueue queue = new PriorityBlockingQueue();
        public final AtomicInteger wip = new AtomicInteger();
        public final AtomicInteger counter = new AtomicInteger();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.disposed = true;
        }

        public final Disposable enqueue(Runnable runnable, long j) {
            EmptyDisposable emptyDisposable = EmptyDisposable.INSTANCE;
            if (!this.disposed) {
                TimedRunnable timedRunnable = new TimedRunnable(runnable, Long.valueOf(j), this.counter.incrementAndGet());
                this.queue.add(timedRunnable);
                int i = 1;
                if (this.wip.getAndIncrement() != 0) {
                    return new RunnableDisposable(new ExecutorScheduler.DelayedDispose(this, timedRunnable, i));
                }
                while (true) {
                    boolean z = this.disposed;
                    PriorityBlockingQueue priorityBlockingQueue = this.queue;
                    if (z) {
                        priorityBlockingQueue.clear();
                        return emptyDisposable;
                    }
                    TimedRunnable timedRunnable2 = (TimedRunnable) priorityBlockingQueue.poll();
                    if (timedRunnable2 == null) {
                        i = this.wip.addAndGet(-i);
                        if (i == 0) {
                            break;
                        }
                    } else if (!timedRunnable2.disposed) {
                        timedRunnable2.run.run();
                    }
                }
            }
            return emptyDisposable;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            long millis = timeUnit.toMillis(j) + Scheduler.Worker.now(TimeUnit.MILLISECONDS);
            return enqueue(new SleepingRunnable(runnable, this, millis), millis);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable) {
            return enqueue(runnable, Scheduler.Worker.now(TimeUnit.MILLISECONDS));
        }
    }
}
