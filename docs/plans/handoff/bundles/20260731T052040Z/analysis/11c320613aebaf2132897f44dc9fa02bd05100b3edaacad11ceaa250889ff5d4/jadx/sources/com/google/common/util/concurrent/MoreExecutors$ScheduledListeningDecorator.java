package com.google.common.util.concurrent;

import androidx.activity.OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;
import com.google.common.collect.ForwardingObject;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MoreExecutors$ScheduledListeningDecorator extends MoreExecutors$ListeningDecorator implements ScheduledExecutorService {
    public final ScheduledExecutorService delegate;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class NeverSuccessfulListenableFutureTask extends AbstractFuture.TrustedFuture implements Runnable {
        public final Runnable delegate;

        public NeverSuccessfulListenableFutureTask(Runnable runnable) {
            runnable.getClass();
            this.delegate = runnable;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public final String pendingToString() {
            return "task=[" + this.delegate + "]";
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.delegate.run();
            } catch (Error | RuntimeException e) {
                setException(e);
                throw e;
            }
        }
    }

    public MoreExecutors$ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.delegate = scheduledExecutorService;
    }

    @Override // com.google.common.util.concurrent.MoreExecutors$ListeningDecorator, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0.m(this);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        TrustedListenableFutureTask trustedListenableFutureTask = new TrustedListenableFutureTask(Executors.callable(runnable, null));
        return new ListenableScheduledTask(trustedListenableFutureTask, this.delegate.schedule(trustedListenableFutureTask, j, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
        return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.delegate.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
        return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.delegate.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ListenableScheduledTask extends ForwardingObject implements ScheduledFuture, ListenableFuture, Future {
        public final AbstractFuture delegate;
        public final ScheduledFuture scheduledDelegate;

        public ListenableScheduledTask(AbstractFuture abstractFuture, ScheduledFuture scheduledFuture) {
            this.delegate = abstractFuture;
            this.scheduledDelegate = scheduledFuture;
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            this.delegate.addListener(runnable, executor);
        }

        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            boolean cancel$com$google$common$util$concurrent$ForwardingFuture = cancel$com$google$common$util$concurrent$ForwardingFuture(z);
            if (cancel$com$google$common$util$concurrent$ForwardingFuture) {
                this.scheduledDelegate.cancel(z);
            }
            return cancel$com$google$common$util$concurrent$ForwardingFuture;
        }

        public final boolean cancel$com$google$common$util$concurrent$ForwardingFuture(boolean z) {
            return this.delegate.cancel(z);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Delayed delayed) {
            return this.scheduledDelegate.compareTo(delayed);
        }

        @Override // com.google.common.collect.ForwardingObject
        public final Object delegate() {
            return this.delegate;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            return this.delegate.get();
        }

        @Override // java.util.concurrent.Delayed
        public final long getDelay(TimeUnit timeUnit) {
            return this.scheduledDelegate.getDelay(timeUnit);
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return this.delegate.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return this.delegate.isDone();
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            return this.delegate.get(j, timeUnit);
        }
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(Callable callable, long j, TimeUnit timeUnit) {
        TrustedListenableFutureTask trustedListenableFutureTask = new TrustedListenableFutureTask(callable);
        return new ListenableScheduledTask(trustedListenableFutureTask, this.delegate.schedule(trustedListenableFutureTask, j, timeUnit));
    }
}
