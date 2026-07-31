package okhttp3.internal.concurrent;

import androidx.compose.ui.Modifier;
import androidx.lifecycle.LiveData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.logging.Logger;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TaskRunner {
    public static final TaskRunner INSTANCE;
    public static final Logger logger;
    public final ConnectionPool backend;
    public final ArrayList busyQueues;
    public boolean coordinatorWaiting;
    public long coordinatorWakeUpAt;
    public int executeCallCount;
    public final Logger logger$1;
    public int nextQueueName;
    public final ArrayList readyQueues;
    public int runCallCount;
    public final LiveData.AnonymousClass1 runnable;

    static {
        Logger logger2 = Logger.getLogger(TaskRunner.class.getName());
        logger2.getClass();
        logger = logger2;
        INSTANCE = new TaskRunner(new ConnectionPool(new _UtilJvmKt$$ExternalSyntheticLambda2(Modifier.CC.m(new StringBuilder(), _UtilJvmKt.okHttpName, " TaskRunner"), true)));
    }

    public TaskRunner(ConnectionPool connectionPool) {
        Logger logger2 = logger;
        logger2.getClass();
        this.backend = connectionPool;
        this.logger$1 = logger2;
        this.nextQueueName = 10000;
        this.busyQueues = new ArrayList();
        this.readyQueues = new ArrayList();
        this.runnable = new LiveData.AnonymousClass1(this, 20);
    }

    public static final void access$afterRun(TaskRunner taskRunner, Task task, long j, boolean z) {
        TimeZone timeZone = _UtilJvmKt.UTC;
        TaskQueue taskQueue = task.queue;
        taskQueue.getClass();
        if (taskQueue.activeTask != task) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Check failed.");
            return;
        }
        boolean z2 = taskQueue.cancelActiveTask;
        taskQueue.cancelActiveTask = false;
        taskQueue.activeTask = null;
        taskRunner.busyQueues.remove(taskQueue);
        if (j != -1 && !z2 && !taskQueue.shutdown) {
            taskQueue.scheduleAndDecide$okhttp(task, j, true);
        }
        if (taskQueue.futureTasks.isEmpty()) {
            return;
        }
        taskRunner.readyQueues.add(taskQueue);
        if (z) {
            return;
        }
        taskRunner.startAnotherThread();
    }

    public final Task awaitTaskToRun() {
        boolean z;
        TimeZone timeZone = _UtilJvmKt.UTC;
        while (true) {
            ArrayList arrayList = this.readyQueues;
            if (arrayList.isEmpty()) {
                break;
            }
            long nanoTime = System.nanoTime();
            Iterator it = arrayList.iterator();
            long j = Long.MAX_VALUE;
            Task task = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Task task2 = (Task) ((TaskQueue) it.next()).futureTasks.get(0);
                long max = Math.max(0L, task2.nextExecuteNanoTime - nanoTime);
                if (max > 0) {
                    j = Math.min(max, j);
                } else {
                    if (task != null) {
                        z = true;
                        break;
                    }
                    task = task2;
                }
            }
            ArrayList arrayList2 = this.busyQueues;
            if (task != null) {
                TimeZone timeZone2 = _UtilJvmKt.UTC;
                task.nextExecuteNanoTime = -1L;
                TaskQueue taskQueue = task.queue;
                taskQueue.getClass();
                taskQueue.futureTasks.remove(task);
                arrayList.remove(taskQueue);
                taskQueue.activeTask = task;
                arrayList2.add(taskQueue);
                if (z || (!this.coordinatorWaiting && !arrayList.isEmpty())) {
                    startAnotherThread();
                }
                return task;
            }
            if (!this.coordinatorWaiting) {
                this.coordinatorWaiting = true;
                this.coordinatorWakeUpAt = nanoTime + j;
                try {
                    try {
                        TimeZone timeZone3 = _UtilJvmKt.UTC;
                        if (j > 0) {
                            long j2 = j / 1000000;
                            Long.signum(j2);
                            long j3 = j - (1000000 * j2);
                            if (j2 > 0 || j > 0) {
                                wait(j2, (int) j3);
                            }
                        }
                    } catch (InterruptedException unused) {
                        TimeZone timeZone4 = _UtilJvmKt.UTC;
                        for (int size = arrayList2.size() - 1; -1 < size; size--) {
                            ((TaskQueue) arrayList2.get(size)).cancelAllAndDecide$okhttp();
                        }
                        for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
                            TaskQueue taskQueue2 = (TaskQueue) arrayList.get(size2);
                            taskQueue2.cancelAllAndDecide$okhttp();
                            if (taskQueue2.futureTasks.isEmpty()) {
                                arrayList.remove(size2);
                            }
                        }
                    }
                } finally {
                    this.coordinatorWaiting = false;
                }
            } else if (j < this.coordinatorWakeUpAt - nanoTime) {
                notify();
            }
        }
        return null;
    }

    public final void kickCoordinator$okhttp(TaskQueue taskQueue) {
        taskQueue.getClass();
        TimeZone timeZone = _UtilJvmKt.UTC;
        if (taskQueue.activeTask == null) {
            boolean isEmpty = taskQueue.futureTasks.isEmpty();
            ArrayList arrayList = this.readyQueues;
            if (isEmpty) {
                arrayList.remove(taskQueue);
            } else {
                byte[] bArr = _UtilCommonKt.EMPTY_BYTE_ARRAY;
                arrayList.getClass();
                if (!arrayList.contains(taskQueue)) {
                    arrayList.add(taskQueue);
                }
            }
        }
        if (this.coordinatorWaiting) {
            notify();
        } else {
            startAnotherThread();
        }
    }

    public final TaskQueue newQueue() {
        int i;
        synchronized (this) {
            i = this.nextQueueName;
            this.nextQueueName = i + 1;
        }
        return new TaskQueue(this, Modifier.CC.m(i, "Q"));
    }

    public final void startAnotherThread() {
        TimeZone timeZone = _UtilJvmKt.UTC;
        int i = this.executeCallCount;
        if (i > this.runCallCount) {
            return;
        }
        this.executeCallCount = i + 1;
        LiveData.AnonymousClass1 anonymousClass1 = this.runnable;
        anonymousClass1.getClass();
        ((ThreadPoolExecutor) this.backend.delegate).execute(anonymousClass1);
    }
}
