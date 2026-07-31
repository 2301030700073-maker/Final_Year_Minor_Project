package androidx.work.impl.utils;

import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkerWrapper;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StopWorkRunnable implements Runnable {
    public final Processor processor;
    public final int reason;
    public final boolean stopInForeground;
    public final StartStopToken token;

    public StopWorkRunnable(Processor processor, StartStopToken startStopToken, boolean z, int i) {
        processor.getClass();
        startStopToken.getClass();
        this.processor = processor;
        this.token = startStopToken;
        this.stopInForeground = z;
        this.reason = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean stopWork;
        WorkerWrapper cleanUpWorkerUnsafe;
        boolean z = this.stopInForeground;
        Processor processor = this.processor;
        StartStopToken startStopToken = this.token;
        if (z) {
            int i = this.reason;
            processor.getClass();
            String str = startStopToken.id.workSpecId;
            synchronized (processor.mLock) {
                cleanUpWorkerUnsafe = processor.cleanUpWorkerUnsafe(str);
            }
            stopWork = Processor.interrupt(str, cleanUpWorkerUnsafe, i);
        } else {
            stopWork = processor.stopWork(startStopToken, this.reason);
        }
        Logger$LogcatLogger.get().debug(Logger$LogcatLogger.tagWithPrefix("StopWorkRunnable"), "StopWorkRunnable for " + this.token.id.workSpecId + "; Processor.stopWork = " + stopWork);
    }
}
