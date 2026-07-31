package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Message;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HandlerScheduler extends Scheduler {
    public final Handler handler;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class HandlerWorker extends Scheduler.Worker {
        public volatile boolean disposed;
        public final Handler handler;

        public HandlerWorker(Handler handler) {
            this.handler = handler;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.disposed = true;
            this.handler.removeCallbacksAndMessages(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.disposed;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            EmptyDisposable emptyDisposable = EmptyDisposable.INSTANCE;
            if (timeUnit == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("unit == null");
                return null;
            }
            if (this.disposed) {
                return emptyDisposable;
            }
            Handler handler = this.handler;
            Scheduler.PeriodicDirectTask periodicDirectTask = new Scheduler.PeriodicDirectTask(handler, runnable, 1);
            Message obtain = Message.obtain(handler, periodicDirectTask);
            obtain.obj = this;
            obtain.setAsynchronous(true);
            this.handler.sendMessageDelayed(obtain, timeUnit.toMillis(j));
            if (!this.disposed) {
                return periodicDirectTask;
            }
            this.handler.removeCallbacks(periodicDirectTask);
            return emptyDisposable;
        }
    }

    public HandlerScheduler(Handler handler) {
        this.handler = handler;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker createWorker() {
        return new HandlerWorker(this.handler);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable scheduleDirect(Runnable runnable, long j, TimeUnit timeUnit) {
        if (TimeUnit.NANOSECONDS == null) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("unit == null");
            return null;
        }
        Handler handler = this.handler;
        Scheduler.PeriodicDirectTask periodicDirectTask = new Scheduler.PeriodicDirectTask(handler, runnable, 1);
        Message obtain = Message.obtain(handler, periodicDirectTask);
        obtain.setAsynchronous(true);
        handler.sendMessageDelayed(obtain, 0L);
        return periodicDirectTask;
    }
}
