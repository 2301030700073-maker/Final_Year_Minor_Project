package androidx.lifecycle;

import android.app.Application;
import androidx.preference.PreferenceGroup;
import java.util.logging.Level;
import java.util.logging.Logger;
import leakcanary.AndroidLeakFixes;
import okhttp3.Cache;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LiveData$1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public LiveData$1(AndroidLeakFixes.TEXT_LINE_POOL text_line_pool, Application application) {
        this.$r8$classId = 23;
        this.this$0 = application;
    }

    private final void run$androidx$preference$PreferenceGroup$1() {
        synchronized (this) {
            ((PreferenceGroup) this.this$0).mIdRecycleCache.clear();
        }
    }

    private final void run$okhttp3$internal$concurrent$TaskRunner$runnable$1() {
        Task awaitTaskToRun;
        long j;
        Task awaitTaskToRun2;
        TaskRunner taskRunner = (TaskRunner) this.this$0;
        synchronized (taskRunner) {
            taskRunner.runCallCount++;
            awaitTaskToRun = taskRunner.awaitTaskToRun();
        }
        if (awaitTaskToRun == null) {
            return;
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        while (true) {
            try {
                currentThread.setName(awaitTaskToRun.name);
                Logger logger = ((TaskRunner) this.this$0).logger$1;
                TaskQueue taskQueue = awaitTaskToRun.queue;
                taskQueue.getClass();
                boolean isLoggable = logger.isLoggable(Level.FINE);
                if (isLoggable) {
                    j = System.nanoTime();
                    Cache.Companion.log(logger, awaitTaskToRun, taskQueue, "starting");
                } else {
                    j = -1;
                }
                try {
                    long runOnce = awaitTaskToRun.runOnce();
                    if (isLoggable) {
                        Cache.Companion.log(logger, awaitTaskToRun, taskQueue, "finished run in " + Cache.Companion.formatDuration(System.nanoTime() - j));
                    }
                    TaskRunner taskRunner2 = (TaskRunner) this.this$0;
                    synchronized (taskRunner2) {
                        taskRunner2.afterRun(awaitTaskToRun, runOnce, true);
                        awaitTaskToRun2 = taskRunner2.awaitTaskToRun();
                    }
                    if (awaitTaskToRun2 == null) {
                        return;
                    } else {
                        awaitTaskToRun = awaitTaskToRun2;
                    }
                } catch (Throwable th) {
                    if (isLoggable) {
                        Cache.Companion.log(logger, awaitTaskToRun, taskQueue, "failed a run in " + Cache.Companion.formatDuration(System.nanoTime() - j));
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                try {
                    TaskRunner taskRunner3 = (TaskRunner) this.this$0;
                    synchronized (taskRunner3) {
                        taskRunner3.afterRun(awaitTaskToRun, -1L, false);
                        if (!(th2 instanceof InterruptedException)) {
                            throw th2;
                        }
                        Thread.currentThread().interrupt();
                        return;
                    }
                } finally {
                    currentThread.setName(name);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:224:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.LiveData$1.run():void");
    }

    public /* synthetic */ LiveData$1(int i, Object obj) {
        this.$r8$classId = i;
        this.this$0 = obj;
    }
}
