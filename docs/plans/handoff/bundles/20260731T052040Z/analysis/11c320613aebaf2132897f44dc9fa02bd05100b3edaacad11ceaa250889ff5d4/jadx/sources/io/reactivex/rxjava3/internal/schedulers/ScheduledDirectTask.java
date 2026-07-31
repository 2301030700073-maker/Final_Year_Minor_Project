package io.reactivex.rxjava3.internal.schedulers;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScheduledDirectTask extends AbstractDirectTask implements Callable {
    private static final long serialVersionUID = 1811839108042568751L;

    @Override // java.util.concurrent.Callable
    public final Object call() {
        FutureTask futureTask = AbstractDirectTask.FINISHED;
        this.runner = Thread.currentThread();
        try {
            try {
                this.runnable.run();
                return null;
            } finally {
                lazySet(futureTask);
                this.runner = null;
            }
        } catch (Throwable th) {
            MathKt.onError(th);
            throw th;
        }
    }
}
