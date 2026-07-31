package kotlinx.coroutines.scheduling;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;
    public final int corePoolSize;
    public final GlobalQueue globalBlockingQueue;
    public final GlobalQueue globalCpuQueue;
    public final long idleWorkerKeepAliveNs;
    public final int maxPoolSize;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;
    public final String schedulerName;
    public final ResizableAtomicArray workers;
    public static final /* synthetic */ AtomicLongFieldUpdater parkedWorkersStack$volatile$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater controlState$volatile$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater _isTerminated$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");
    public static final LocalStore.AnonymousClass8 NOT_IN_STACK = new LocalStore.AnonymousClass8(4, "NOT_IN_STACK", false);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Worker extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater workerCtl$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;
        public final WorkQueue localQueue;
        public boolean mayHaveLocalTasks;
        public long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        public int rngState;
        public WorkerState state;
        public final Ref$ObjectRef stolenTask;
        public long terminationDeadline;
        private volatile /* synthetic */ int workerCtl$volatile;

        public Worker(int i) {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.class.getClassLoader());
            this.localQueue = new WorkQueue();
            this.stolenTask = new Ref$ObjectRef();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            int nanoTime = (int) System.nanoTime();
            this.rngState = nanoTime == 0 ? 42 : nanoTime;
            setIndexInArray(i);
        }

        public final Task findTask(boolean z) {
            Task pollGlobalQueues;
            Task pollGlobalQueues2;
            long j;
            WorkerState workerState = this.state;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            WorkQueue workQueue = this.localQueue;
            WorkerState workerState2 = WorkerState.CPU_ACQUIRED;
            if (workerState != workerState2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.controlState$volatile$FU;
                do {
                    j = atomicLongFieldUpdater.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        Task pollWithExclusiveMode = workQueue.pollWithExclusiveMode();
                        return (pollWithExclusiveMode == null && (pollWithExclusiveMode = (Task) coroutineScheduler.globalBlockingQueue.removeFirstOrNull()) == null) ? trySteal(1) : pollWithExclusiveMode;
                    }
                } while (!CoroutineScheduler.controlState$volatile$FU.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
                this.state = workerState2;
            }
            if (z) {
                boolean z2 = nextInt(coroutineScheduler.corePoolSize * 2) == 0;
                if (z2 && (pollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return pollGlobalQueues2;
                }
                workQueue.getClass();
                WorkQueue.lastScheduledTask$volatile$FU.getClass();
                Task task = (Task) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.getAndSet(AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe, workQueue, WorkQueue.lastScheduledTask$volatile$FU$offset, null);
                if (task == null) {
                    task = workQueue.pollBuffer();
                }
                if (task != null) {
                    return task;
                }
                if (!z2 && (pollGlobalQueues = pollGlobalQueues()) != null) {
                    return pollGlobalQueues;
                }
            } else {
                Task pollGlobalQueues3 = pollGlobalQueues();
                if (pollGlobalQueues3 != null) {
                    return pollGlobalQueues3;
                }
            }
            return trySteal(3);
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final int nextInt(int i) {
            int i2 = this.rngState;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.rngState = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i6 & i5 : (Integer.MAX_VALUE & i5) % i;
        }

        public final Task pollGlobalQueues() {
            int nextInt = nextInt(2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            GlobalQueue globalQueue = coroutineScheduler.globalBlockingQueue;
            GlobalQueue globalQueue2 = coroutineScheduler.globalCpuQueue;
            if (nextInt == 0) {
                Task task = (Task) globalQueue2.removeFirstOrNull();
                return task != null ? task : (Task) globalQueue.removeFirstOrNull();
            }
            Task task2 = (Task) globalQueue.removeFirstOrNull();
            return task2 != null ? task2 : (Task) globalQueue2.removeFirstOrNull();
        }

        /* JADX WARN: Code restructure failed: missing block: B:76:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0004, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0004, code lost:
        
            continue;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 415
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.run():void");
        }

        public final void setIndexInArray(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.schedulerName);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(WorkerState workerState) {
            WorkerState workerState2 = this.state;
            boolean z = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.controlState$volatile$FU.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.state = workerState;
            }
            return z;
        }

        public final Task trySteal(int i) {
            Task task;
            long tryStealLastScheduled;
            AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.controlState$volatile$FU;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            int i2 = (int) (atomicLongFieldUpdater.get(coroutineScheduler) & 2097151);
            if (i2 < 2) {
                return null;
            }
            int nextInt = nextInt(i2);
            long j = Long.MAX_VALUE;
            for (int i3 = 0; i3 < i2; i3++) {
                nextInt++;
                if (nextInt > i2) {
                    nextInt = 1;
                }
                Worker worker = (Worker) coroutineScheduler.workers.get(nextInt);
                if (worker != null && worker != this) {
                    WorkQueue workQueue = worker.localQueue;
                    workQueue.getClass();
                    if (i == 3) {
                        task = workQueue.pollBuffer();
                    } else {
                        boolean z = i == 1;
                        int i4 = WorkQueue.consumerIndex$volatile$FU.get(workQueue);
                        int i5 = WorkQueue.producerIndex$volatile$FU.get(workQueue);
                        while (i4 != i5 && (!z || WorkQueue.blockingTasksInBuffer$volatile$FU.get(workQueue) != 0)) {
                            int i6 = i4 + 1;
                            task = workQueue.tryExtractFromTheMiddle(i4, z);
                            if (task != null) {
                                break;
                            }
                            i4 = i6;
                        }
                        task = null;
                    }
                    Ref$ObjectRef ref$ObjectRef = this.stolenTask;
                    if (task != null) {
                        ref$ObjectRef.element = task;
                        tryStealLastScheduled = -1;
                    } else {
                        tryStealLastScheduled = workQueue.tryStealLastScheduled(i, ref$ObjectRef);
                    }
                    if (tryStealLastScheduled == -1) {
                        Task task2 = (Task) ref$ObjectRef.element;
                        ref$ObjectRef.element = null;
                        return task2;
                    }
                    if (tryStealLastScheduled > 0) {
                        j = Math.min(j, tryStealLastScheduled);
                    }
                }
            }
            if (j == Long.MAX_VALUE) {
                j = 0;
            }
            this.minDelayUntilStealableTaskNs = j;
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class WorkerState {
        public static final /* synthetic */ WorkerState[] $VALUES;
        public static final WorkerState BLOCKING;
        public static final WorkerState CPU_ACQUIRED;
        public static final WorkerState DORMANT;
        public static final WorkerState PARKING;
        public static final WorkerState TERMINATED;

        static {
            WorkerState workerState = new WorkerState("CPU_ACQUIRED", 0);
            CPU_ACQUIRED = workerState;
            WorkerState workerState2 = new WorkerState("BLOCKING", 1);
            BLOCKING = workerState2;
            WorkerState workerState3 = new WorkerState("PARKING", 2);
            PARKING = workerState3;
            WorkerState workerState4 = new WorkerState("DORMANT", 3);
            DORMANT = workerState4;
            WorkerState workerState5 = new WorkerState("TERMINATED", 4);
            TERMINATED = workerState5;
            $VALUES = new WorkerState[]{workerState, workerState2, workerState3, workerState4, workerState5};
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) $VALUES.clone();
        }
    }

    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (i < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Core pool size ", " should be at least 1"));
            throw null;
        }
        if (i2 < i) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Modifier.CC.m(i2, i, "Max pool size ", " should be greater than or equals to core pool size "));
            throw null;
        }
        if (i2 > 2097150) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Idle worker keep alive time ", j, " must be positive");
            throw null;
        }
        this.globalCpuQueue = new GlobalQueue();
        this.globalBlockingQueue = new GlobalQueue();
        this.workers = new ResizableAtomicArray((i + 1) * 2);
        this.controlState$volatile = i << 42;
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, int i) {
        coroutineScheduler.dispatch(runnable, false, (i & 4) == 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x008a, code lost:
    
        if (r1 == null) goto L38;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r10 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler._isTerminated$volatile$FU
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r10, r1, r2)
            if (r0 != 0) goto Lb
            return
        Lb:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof kotlinx.coroutines.scheduling.CoroutineScheduler.Worker
            r3 = 0
            if (r1 == 0) goto L17
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r0 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r0
            goto L18
        L17:
            r0 = r3
        L18:
            if (r0 == 0) goto L1e
            kotlinx.coroutines.scheduling.CoroutineScheduler r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
            if (r1 == r10) goto L1f
        L1e:
            r0 = r3
        L1f:
            kotlinx.coroutines.internal.ResizableAtomicArray r1 = r10.workers
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = kotlinx.coroutines.scheduling.CoroutineScheduler.controlState$volatile$FU     // Catch: java.lang.Throwable -> Lc5
            long r4 = r4.get(r10)     // Catch: java.lang.Throwable -> Lc5
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r4 = (int) r4
            monitor-exit(r1)
            if (r2 > r4) goto L7a
            r1 = r2
        L31:
            kotlinx.coroutines.internal.ResizableAtomicArray r5 = r10.workers
            java.lang.Object r5 = r5.get(r1)
            r5.getClass()
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r5 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r5
            if (r5 == r0) goto L75
        L3e:
            java.lang.Thread$State r6 = r5.getState()
            java.lang.Thread$State r7 = java.lang.Thread.State.TERMINATED
            if (r6 == r7) goto L4f
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r6 = 10000(0x2710, double:4.9407E-320)
            r5.join(r6)
            goto L3e
        L4f:
            kotlinx.coroutines.scheduling.WorkQueue r5 = r5.localQueue
            kotlinx.coroutines.scheduling.GlobalQueue r6 = r10.globalBlockingQueue
            r5.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = kotlinx.coroutines.scheduling.WorkQueue.lastScheduledTask$volatile$FU
            r7.getClass()
            sun.misc.Unsafe r7 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r8 = kotlinx.coroutines.scheduling.WorkQueue.lastScheduledTask$volatile$FU$offset
            java.lang.Object r7 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.getAndSet(r7, r5, r8, r3)
            kotlinx.coroutines.scheduling.Task r7 = (kotlinx.coroutines.scheduling.Task) r7
            if (r7 == 0) goto L6a
            r6.addLast(r7)
        L6a:
            kotlinx.coroutines.scheduling.Task r7 = r5.pollBuffer()
            if (r7 != 0) goto L71
            goto L75
        L71:
            r6.addLast(r7)
            goto L6a
        L75:
            if (r1 == r4) goto L7a
            int r1 = r1 + 1
            goto L31
        L7a:
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r10.globalBlockingQueue
            r1.close()
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r10.globalCpuQueue
            r1.close()
        L84:
            if (r0 == 0) goto L8c
            kotlinx.coroutines.scheduling.Task r1 = r0.findTask(r2)
            if (r1 != 0) goto Lb4
        L8c:
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r10.globalCpuQueue
            java.lang.Object r1 = r1.removeFirstOrNull()
            kotlinx.coroutines.scheduling.Task r1 = (kotlinx.coroutines.scheduling.Task) r1
            if (r1 != 0) goto Lb4
            kotlinx.coroutines.scheduling.GlobalQueue r1 = r10.globalBlockingQueue
            java.lang.Object r1 = r1.removeFirstOrNull()
            kotlinx.coroutines.scheduling.Task r1 = (kotlinx.coroutines.scheduling.Task) r1
            if (r1 != 0) goto Lb4
            if (r0 == 0) goto La7
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.TERMINATED
            r0.tryReleaseCpu(r1)
        La7:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.parkedWorkersStack$volatile$FU
            r1 = 0
            r0.set(r10, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.controlState$volatile$FU
            r0.set(r10, r1)
            return
        Lb4:
            r1.run()     // Catch: java.lang.Throwable -> Lb8
            goto L84
        Lb8:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()
            r4.uncaughtException(r3, r1)
            goto L84
        Lc5:
            r10 = move-exception
            monitor-exit(r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.close():void");
    }

    public final int createNewWorker() {
        synchronized (this.workers) {
            try {
                if (_isTerminated$volatile$FU.get(this) == 1) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = controlState$volatile$FU;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int i2 = i - ((int) ((j & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.corePoolSize) {
                    return 0;
                }
                if (i >= this.maxPoolSize) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.workers.get(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(i3);
                this.workers.setSynchronized(i3, worker);
                if (i3 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = i2 + 1;
                worker.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void dispatch(Runnable runnable, boolean z, boolean z2) {
        Task taskImpl;
        WorkerState workerState;
        TasksKt.schedulerTimeSource.getClass();
        long nanoTime = System.nanoTime();
        if (runnable instanceof Task) {
            taskImpl = (Task) runnable;
            taskImpl.submissionTime = nanoTime;
            taskImpl.taskContext = z;
        } else {
            taskImpl = new TaskImpl(runnable, nanoTime, z);
        }
        boolean z3 = taskImpl.taskContext;
        AtomicLongFieldUpdater atomicLongFieldUpdater = controlState$volatile$FU;
        long addAndGet = z3 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread currentThread = Thread.currentThread();
        Worker worker = currentThread instanceof Worker ? (Worker) currentThread : null;
        if (worker == null || CoroutineScheduler.this != this) {
            worker = null;
        }
        if (worker != null && (workerState = worker.state) != WorkerState.TERMINATED && (taskImpl.taskContext || workerState != WorkerState.BLOCKING)) {
            worker.mayHaveLocalTasks = true;
            WorkQueue workQueue = worker.localQueue;
            if (z2) {
                taskImpl = workQueue.addLast(taskImpl);
            } else {
                workQueue.getClass();
                WorkQueue.lastScheduledTask$volatile$FU.getClass();
                Task task = (Task) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.getAndSet(AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe, workQueue, WorkQueue.lastScheduledTask$volatile$FU$offset, taskImpl);
                taskImpl = task == null ? null : workQueue.addLast(task);
            }
        }
        if (taskImpl != null) {
            if (!(taskImpl.taskContext ? this.globalBlockingQueue.addLast(taskImpl) : this.globalCpuQueue.addLast(taskImpl))) {
                throw new RejectedExecutionException(CameraDevices$CC.m(new StringBuilder(), this.schedulerName, " was terminated"));
            }
        }
        if (z3) {
            if (tryUnpark() || tryCreateWorker(addAndGet)) {
                return;
            }
            tryUnpark();
            return;
        }
        if (tryUnpark() || tryCreateWorker(atomicLongFieldUpdater.get(this))) {
            return;
        }
        tryUnpark();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch$default(this, runnable, 6);
    }

    public final void parkedWorkersStackTopUpdate(Worker worker, int i, int i2) {
        while (true) {
            long j = parkedWorkersStack$volatile$FU.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object nextParkedWorker = worker.getNextParkedWorker();
                    while (true) {
                        if (nextParkedWorker == NOT_IN_STACK) {
                            i3 = -1;
                            break;
                        }
                        if (nextParkedWorker == null) {
                            i3 = 0;
                            break;
                        }
                        Worker worker2 = (Worker) nextParkedWorker;
                        int indexInArray = worker2.getIndexInArray();
                        if (indexInArray != 0) {
                            i3 = indexInArray;
                            break;
                        }
                        nextParkedWorker = worker2.getNextParkedWorker();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                CoroutineScheduler coroutineScheduler = this;
                if (parkedWorkersStack$volatile$FU.compareAndSet(coroutineScheduler, j, i3 | j2)) {
                    return;
                } else {
                    this = coroutineScheduler;
                }
            }
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        ResizableAtomicArray resizableAtomicArray = this.workers;
        int currentLength = resizableAtomicArray.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < currentLength; i6++) {
            Worker worker = (Worker) resizableAtomicArray.get(i6);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int ordinal = worker.state.ordinal();
                if (ordinal == 0) {
                    i++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(size$kotlinx_coroutines_core);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (ordinal == 1) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(size$kotlinx_coroutines_core);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (ordinal == 2) {
                    i3++;
                } else if (ordinal == 3) {
                    i4++;
                    if (size$kotlinx_coroutines_core > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(size$kotlinx_coroutines_core);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (ordinal != 4) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    i5++;
                }
            }
        }
        long j = controlState$volatile$FU.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.schedulerName);
        sb4.append('@');
        sb4.append(JobKt.getHexAddress(this));
        sb4.append("[Pool Size {core = ");
        int i7 = this.corePoolSize;
        sb4.append(i7);
        sb4.append(", max = ");
        Modifier.CC.m(sb4, this.maxPoolSize, "}, Worker States {CPU = ", i, ", blocking = ");
        Modifier.CC.m(sb4, i2, ", parked = ", i3, ", dormant = ");
        Modifier.CC.m(sb4, i4, ", terminated = ", i5, "}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.globalCpuQueue.getSize());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.globalBlockingQueue.getSize());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i7 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }

    public final boolean tryCreateWorker(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.corePoolSize;
        if (i < i2) {
            int createNewWorker = createNewWorker();
            if (createNewWorker == 1 && i2 > 1) {
                createNewWorker();
            }
            if (createNewWorker > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean tryUnpark() {
        CoroutineScheduler coroutineScheduler;
        LocalStore.AnonymousClass8 anonymousClass8;
        int i;
        while (true) {
            long j = parkedWorkersStack$volatile$FU.get(this);
            Worker worker = (Worker) this.workers.get((int) (2097151 & j));
            if (worker == null) {
                worker = null;
                coroutineScheduler = this;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object nextParkedWorker = worker.getNextParkedWorker();
                while (true) {
                    anonymousClass8 = NOT_IN_STACK;
                    if (nextParkedWorker == anonymousClass8) {
                        i = -1;
                        break;
                    }
                    if (nextParkedWorker == null) {
                        i = 0;
                        break;
                    }
                    Worker worker2 = (Worker) nextParkedWorker;
                    i = worker2.getIndexInArray();
                    if (i != 0) {
                        break;
                    }
                    nextParkedWorker = worker2.getNextParkedWorker();
                    j = j;
                }
                if (i >= 0) {
                    CoroutineScheduler coroutineScheduler2 = this;
                    boolean compareAndSet = parkedWorkersStack$volatile$FU.compareAndSet(coroutineScheduler2, j, i | j2);
                    coroutineScheduler = coroutineScheduler2;
                    if (compareAndSet) {
                        worker.setNextParkedWorker(anonymousClass8);
                    }
                    this = coroutineScheduler;
                } else {
                    continue;
                }
            }
            if (worker == null) {
                return false;
            }
            if (Worker.workerCtl$volatile$FU.compareAndSet(worker, -1, 0)) {
                LockSupport.unpark(worker);
                return true;
            }
            this = coroutineScheduler;
        }
    }
}
