package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.functions.Function0;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TaskQueue {
    public Task activeTask;
    public boolean cancelActiveTask;
    public final ArrayList futureTasks = new ArrayList();
    public final String name;
    public boolean shutdown;
    public final TaskRunner taskRunner;

    public TaskQueue(TaskRunner taskRunner, String str) {
        this.taskRunner = taskRunner;
        this.name = str;
    }

    public static void execute$default(TaskQueue taskQueue, String str, Function0 function0) {
        taskQueue.getClass();
        str.getClass();
        function0.getClass();
        taskQueue.schedule(new TaskQueue$execute$1(str, function0), 0L);
    }

    public final void cancelAll() {
        TaskRunner taskRunner = this.taskRunner;
        TimeZone timeZone = _UtilJvmKt.UTC;
        synchronized (taskRunner) {
            if (cancelAllAndDecide$okhttp()) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
        }
    }

    public final boolean cancelAllAndDecide$okhttp() {
        Task task = this.activeTask;
        if (task != null && task.cancelable) {
            this.cancelActiveTask = true;
        }
        ArrayList arrayList = this.futureTasks;
        boolean z = false;
        for (int size = arrayList.size() - 1; -1 < size; size--) {
            if (((Task) arrayList.get(size)).cancelable) {
                Logger logger = this.taskRunner.logger$1;
                Task task2 = (Task) arrayList.get(size);
                if (logger.isLoggable(Level.FINE)) {
                    Cache.Companion.log(logger, task2, this, "canceled");
                }
                arrayList.remove(size);
                z = true;
            }
        }
        return z;
    }

    public final void schedule(Task task, long j) {
        task.getClass();
        synchronized (this.taskRunner) {
            if (!this.shutdown) {
                if (scheduleAndDecide$okhttp(task, j, false)) {
                    this.taskRunner.kickCoordinator$okhttp(this);
                }
                return;
            }
            boolean z = task.cancelable;
            Logger logger = this.taskRunner.logger$1;
            if (z) {
                if (logger.isLoggable(Level.FINE)) {
                    Cache.Companion.log(logger, task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (logger.isLoggable(Level.FINE)) {
                    Cache.Companion.log(logger, task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean scheduleAndDecide$okhttp(Task task, long j, boolean z) {
        Logger logger = this.taskRunner.logger$1;
        task.getClass();
        TaskQueue taskQueue = task.queue;
        if (taskQueue != this) {
            if (taskQueue != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("task is in multiple queues");
                return false;
            }
            task.queue = this;
        }
        long nanoTime = System.nanoTime();
        long j2 = nanoTime + j;
        ArrayList arrayList = this.futureTasks;
        int indexOf = arrayList.indexOf(task);
        if (indexOf != -1) {
            if (task.nextExecuteNanoTime <= j2) {
                if (logger.isLoggable(Level.FINE)) {
                    Cache.Companion.log(logger, task, this, "already scheduled");
                    return false;
                }
            }
            arrayList.remove(indexOf);
        }
        task.nextExecuteNanoTime = j2;
        if (logger.isLoggable(Level.FINE)) {
            Cache.Companion.log(logger, task, this, z ? "run again after ".concat(Cache.Companion.formatDuration(j2 - nanoTime)) : "scheduled after ".concat(Cache.Companion.formatDuration(j2 - nanoTime)));
        }
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (((Task) it.next()).nextExecuteNanoTime - nanoTime > j) {
                break;
            }
            i++;
        }
        if (i == -1) {
            i = arrayList.size();
        }
        arrayList.add(i, task);
        return i == 0;
    }

    public final void shutdown() {
        TaskRunner taskRunner = this.taskRunner;
        TimeZone timeZone = _UtilJvmKt.UTC;
        synchronized (taskRunner) {
            this.shutdown = true;
            if (cancelAllAndDecide$okhttp()) {
                this.taskRunner.kickCoordinator$okhttp(this);
            }
        }
    }

    public final String toString() {
        return this.name;
    }
}
