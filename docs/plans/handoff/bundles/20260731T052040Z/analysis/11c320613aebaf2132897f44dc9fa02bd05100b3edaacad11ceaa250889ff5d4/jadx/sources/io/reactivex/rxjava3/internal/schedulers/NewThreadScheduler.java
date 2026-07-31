package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.ThreadFactory;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NewThreadScheduler extends Scheduler {
    public static final RxThreadFactory THREAD_FACTORY = new RxThreadFactory(Math.max(1, Math.min(10, Integer.getInteger("rx3.newthread-priority", 5).intValue())), "RxNewThreadScheduler", false);
    public final ThreadFactory threadFactory = THREAD_FACTORY;

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker createWorker() {
        return new NewThreadWorker(this.threadFactory);
    }
}
