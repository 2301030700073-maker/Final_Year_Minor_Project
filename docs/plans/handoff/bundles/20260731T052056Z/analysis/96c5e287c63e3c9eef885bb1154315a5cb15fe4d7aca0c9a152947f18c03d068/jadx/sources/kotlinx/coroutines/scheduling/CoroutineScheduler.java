package kotlinx.coroutines.scheduling;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    public static final Symbol NOT_IN_STACK;
    public static final /* synthetic */ long _isTerminated$volatile$FU$offset;
    public static final /* synthetic */ AtomicLongFieldUpdater controlState$volatile$FU;
    public static final /* synthetic */ long controlState$volatile$FU$offset;
    public static final /* synthetic */ long parkedWorkersStack$volatile$FU$offset;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Worker extends Thread {
        public static final /* synthetic */ AtomicIntegerFieldUpdater workerCtl$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        public static final /* synthetic */ long workerCtl$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(Worker.class.getDeclaredField("workerCtl$volatile"));
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
            Unsafe unsafe;
            Unsafe unsafe2;
            WorkerState workerState = this.state;
            WorkerState workerState2 = WorkerState.CPU_ACQUIRED;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            Task task = null;
            WorkQueue workQueue = this.localQueue;
            if (workerState != workerState2) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.controlState$volatile$FU;
                do {
                    j = atomicLongFieldUpdater.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        workQueue.getClass();
                        long j2 = WorkQueue.lastScheduledTask$volatile$FU$offset;
                        loop1: while (true) {
                            unsafe = ArtificialStackFramesUnsafe.unsafe;
                            Task task2 = (Task) unsafe.getObjectVolatile(workQueue, j2);
                            if (task2 != null && task2.taskContext) {
                                do {
                                    unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                                    if (unsafe2.compareAndSwapObject(workQueue, WorkQueue.lastScheduledTask$volatile$FU$offset, task2, (Object) null)) {
                                        task = task2;
                                        break loop1;
                                    }
                                } while (unsafe2.getObjectVolatile(workQueue, j2) == task2);
                            }
                        }
                        int intVolatile = unsafe.getIntVolatile(workQueue, WorkQueue.consumerIndex$volatile$FU$offset);
                        int intVolatile2 = unsafe.getIntVolatile(workQueue, WorkQueue.producerIndex$volatile$FU$offset);
                        while (true) {
                            if (intVolatile == intVolatile2 || ArtificialStackFramesUnsafe.unsafe.getIntVolatile(workQueue, WorkQueue.blockingTasksInBuffer$volatile$FU$offset) == 0) {
                                break;
                            }
                            intVolatile2--;
                            Task tryExtractFromTheMiddle = workQueue.tryExtractFromTheMiddle(intVolatile2, true);
                            if (tryExtractFromTheMiddle != null) {
                                task = tryExtractFromTheMiddle;
                                break;
                            }
                        }
                        if (task != null) {
                            return task;
                        }
                        Task task3 = (Task) coroutineScheduler.globalBlockingQueue.removeFirstOrNull();
                        return task3 == null ? trySteal(1) : task3;
                    }
                } while (!CoroutineScheduler.controlState$volatile$FU.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
                this.state = WorkerState.CPU_ACQUIRED;
            }
            if (z) {
                boolean z2 = nextInt(coroutineScheduler.corePoolSize * 2) == 0;
                if (z2 && (pollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return pollGlobalQueues2;
                }
                workQueue.getClass();
                Task task4 = (Task) ArtificialStackFramesUnsafe.getAndSet(workQueue, WorkQueue.lastScheduledTask$volatile$FU$offset, null);
                if (task4 == null) {
                    task4 = workQueue.pollBuffer();
                }
                if (task4 != null) {
                    return task4;
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

        /* JADX WARN: Code restructure failed: missing block: B:69:0x0004, code lost:
        
            continue;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 414
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

        /* JADX WARN: Code restructure failed: missing block: B:52:0x00aa, code lost:
        
            r1 = -2;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlinx.coroutines.scheduling.Task trySteal(int r29) {
            /*
                Method dump skipped, instructions count: 281
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.Worker.trySteal(int):kotlinx.coroutines.scheduling.Task");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WorkerState {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ WorkerState[] $VALUES;
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
            WorkerState[] workerStateArr = {workerState, workerState2, workerState3, workerState4, workerState5};
            $VALUES = workerStateArr;
            $ENTRIES = new EnumEntriesList(workerStateArr);
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) $VALUES.clone();
        }
    }

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        parkedWorkersStack$volatile$FU$offset = unsafe.objectFieldOffset(CoroutineScheduler.class.getDeclaredField("parkedWorkersStack$volatile"));
        controlState$volatile$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
        controlState$volatile$FU$offset = unsafe.objectFieldOffset(CoroutineScheduler.class.getDeclaredField("controlState$volatile"));
        _isTerminated$volatile$FU$offset = unsafe.objectFieldOffset(CoroutineScheduler.class.getDeclaredField("_isTerminated$volatile"));
        NOT_IN_STACK = new Symbol(0, "NOT_IN_STACK");
    }

    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (i < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Core pool size ", " should be at least 1"));
            throw null;
        }
        if (i2 < i) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Modifier.CC.m(i2, i, "Max pool size ", " should be greater than or equals to core pool size "));
            throw null;
        }
        if (i2 > 2097150) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j <= 0) {
            Gson$$ExternalSyntheticBUOutline0.m("Idle worker keep alive time ", j, " must be positive");
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

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0088, code lost:
    
        if (r0 == null) goto L39;
     */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            r9 = this;
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.scheduling.CoroutineScheduler._isTerminated$volatile$FU$offset
            r4 = 0
            r5 = 1
            r1 = r9
            boolean r9 = r0.compareAndSwapInt(r1, r2, r4, r5)
            r2 = r1
            if (r9 != 0) goto Lf
            return
        Lf:
            java.lang.Thread r9 = java.lang.Thread.currentThread()
            boolean r1 = r9 instanceof kotlinx.coroutines.scheduling.CoroutineScheduler.Worker
            r3 = 0
            if (r1 == 0) goto L1b
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r9 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r9
            goto L1c
        L1b:
            r9 = r3
        L1c:
            if (r9 == 0) goto L22
            kotlinx.coroutines.scheduling.CoroutineScheduler r1 = kotlinx.coroutines.scheduling.CoroutineScheduler.this
            if (r1 == r2) goto L23
        L22:
            r9 = r3
        L23:
            kotlinx.coroutines.internal.ResizableAtomicArray r1 = r2.workers
            monitor-enter(r1)
            long r4 = kotlinx.coroutines.scheduling.CoroutineScheduler.controlState$volatile$FU$offset     // Catch: java.lang.Throwable -> Lc5
            long r4 = r0.getLongVolatile(r2, r4)     // Catch: java.lang.Throwable -> Lc5
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r0 = (int) r4
            monitor-exit(r1)
            r4 = 1
            if (r4 > r0) goto L78
            r1 = r4
        L36:
            kotlinx.coroutines.internal.ResizableAtomicArray r5 = r2.workers
            java.lang.Object r5 = r5.get(r1)
            r5.getClass()
            kotlinx.coroutines.scheduling.CoroutineScheduler$Worker r5 = (kotlinx.coroutines.scheduling.CoroutineScheduler.Worker) r5
            if (r5 == r9) goto L73
        L43:
            java.lang.Thread$State r6 = r5.getState()
            java.lang.Thread$State r7 = java.lang.Thread.State.TERMINATED
            if (r6 == r7) goto L54
            java.util.concurrent.locks.LockSupport.unpark(r5)
            r6 = 10000(0x2710, double:4.9407E-320)
            r5.join(r6)
            goto L43
        L54:
            kotlinx.coroutines.scheduling.WorkQueue r5 = r5.localQueue
            kotlinx.coroutines.scheduling.GlobalQueue r6 = r2.globalBlockingQueue
            r5.getClass()
            long r7 = kotlinx.coroutines.scheduling.WorkQueue.lastScheduledTask$volatile$FU$offset
            java.lang.Object r7 = _COROUTINE.ArtificialStackFramesUnsafe.getAndSet(r5, r7, r3)
            kotlinx.coroutines.scheduling.Task r7 = (kotlinx.coroutines.scheduling.Task) r7
            if (r7 == 0) goto L68
            r6.addLast(r7)
        L68:
            kotlinx.coroutines.scheduling.Task r7 = r5.pollBuffer()
            if (r7 != 0) goto L6f
            goto L73
        L6f:
            r6.addLast(r7)
            goto L68
        L73:
            if (r1 == r0) goto L78
            int r1 = r1 + 1
            goto L36
        L78:
            kotlinx.coroutines.scheduling.GlobalQueue r0 = r2.globalBlockingQueue
            r0.close()
            kotlinx.coroutines.scheduling.GlobalQueue r0 = r2.globalCpuQueue
            r0.close()
        L82:
            if (r9 == 0) goto L8a
            kotlinx.coroutines.scheduling.Task r0 = r9.findTask(r4)
            if (r0 != 0) goto Lb4
        L8a:
            kotlinx.coroutines.scheduling.GlobalQueue r0 = r2.globalCpuQueue
            java.lang.Object r0 = r0.removeFirstOrNull()
            kotlinx.coroutines.scheduling.Task r0 = (kotlinx.coroutines.scheduling.Task) r0
            if (r0 != 0) goto Lb4
            kotlinx.coroutines.scheduling.GlobalQueue r0 = r2.globalBlockingQueue
            java.lang.Object r0 = r0.removeFirstOrNull()
            kotlinx.coroutines.scheduling.Task r0 = (kotlinx.coroutines.scheduling.Task) r0
            if (r0 != 0) goto Lb4
            if (r9 == 0) goto La5
            kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState r0 = kotlinx.coroutines.scheduling.CoroutineScheduler.WorkerState.TERMINATED
            r9.tryReleaseCpu(r0)
        La5:
            sun.misc.Unsafe r1 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r3 = kotlinx.coroutines.scheduling.CoroutineScheduler.parkedWorkersStack$volatile$FU$offset
            r5 = 0
            r1.putLongVolatile(r2, r3, r5)
            long r3 = kotlinx.coroutines.scheduling.CoroutineScheduler.controlState$volatile$FU$offset
            r1.putLongVolatile(r2, r3, r5)
            return
        Lb4:
            r0.run()     // Catch: java.lang.Throwable -> Lb8
            goto L82
        Lb8:
            r0 = move-exception
            java.lang.Thread r1 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r3 = r1.getUncaughtExceptionHandler()
            r3.uncaughtException(r1, r0)
            goto L82
        Lc5:
            r0 = move-exception
            r9 = r0
            monitor-exit(r1)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.close():void");
    }

    public final int createNewWorker() {
        synchronized (this.workers) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = controlState$volatile$FU;
                Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
                long j = controlState$volatile$FU$offset;
                long longVolatile = unsafe.getLongVolatile(this, j);
                int i = (int) (longVolatile & 2097151);
                int i2 = i - ((int) ((longVolatile & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.corePoolSize) {
                    return 0;
                }
                if (i >= this.maxPoolSize) {
                    return 0;
                }
                int longVolatile2 = ((int) (unsafe.getLongVolatile(this, j) & 2097151)) + 1;
                if (longVolatile2 <= 0 || this.workers.get(longVolatile2) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(longVolatile2);
                this.workers.setSynchronized(longVolatile2, worker);
                if (longVolatile2 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i3 = i2 + 1;
                worker.start();
                return i3;
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
        long addAndGet = z3 ? controlState$volatile$FU.addAndGet(this, 2097152L) : 0L;
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
                Task task = (Task) ArtificialStackFramesUnsafe.getAndSet(workQueue, WorkQueue.lastScheduledTask$volatile$FU$offset, taskImpl);
                taskImpl = task == null ? null : workQueue.addLast(task);
            }
        }
        if (taskImpl != null) {
            if (!(taskImpl.taskContext ? this.globalBlockingQueue.addLast(taskImpl) : this.globalCpuQueue.addLast(taskImpl))) {
                throw new RejectedExecutionException(Animation.CC.m(new StringBuilder(), this.schedulerName, " was terminated"));
            }
        }
        if (z3) {
            if (tryUnpark() || tryCreateWorker(addAndGet)) {
                return;
            }
            tryUnpark();
            return;
        }
        if (tryUnpark() || tryCreateWorker(ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, controlState$volatile$FU$offset))) {
            return;
        }
        tryUnpark();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        dispatch$default(this, runnable, 6);
    }

    public final boolean isTerminated() {
        return ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, _isTerminated$volatile$FU$offset) == 1;
    }

    public final void parkedWorkersStackTopUpdate(Worker worker, int i, int i2) {
        while (true) {
            long longVolatile = ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, parkedWorkersStack$volatile$FU$offset);
            int i3 = (int) (2097151 & longVolatile);
            long j = (2097152 + longVolatile) & (-2097152);
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
                if (ArtificialStackFramesUnsafe.unsafe.compareAndSwapLong(coroutineScheduler, parkedWorkersStack$volatile$FU$offset, longVolatile, j | i3)) {
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
                WorkQueue workQueue = worker.localQueue;
                workQueue.getClass();
                Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(workQueue, WorkQueue.lastScheduledTask$volatile$FU$offset);
                int bufferSize = workQueue.getBufferSize();
                if (objectVolatile != null) {
                    bufferSize++;
                }
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 == 1) {
                    i3++;
                } else if (i7 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(bufferSize);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i7 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(bufferSize);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i7 == 4) {
                    i4++;
                    if (bufferSize > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(bufferSize);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (i7 != 5) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    i5++;
                }
            }
        }
        long longVolatile = ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, controlState$volatile$FU$offset);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.schedulerName);
        sb4.append('@');
        sb4.append(AwaitKt.getHexAddress(this));
        sb4.append("[Pool Size {core = ");
        int i8 = this.corePoolSize;
        sb4.append(i8);
        sb4.append(", max = ");
        sb4.append(this.maxPoolSize);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i);
        sb4.append(", blocking = ");
        sb4.append(i2);
        sb4.append(", parked = ");
        sb4.append(i3);
        sb4.append(", dormant = ");
        sb4.append(i4);
        sb4.append(", terminated = ");
        sb4.append(i5);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.globalCpuQueue.getSize());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.globalBlockingQueue.getSize());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & longVolatile));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & longVolatile) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i8 - ((int) ((longVolatile & 9223367638808264704L) >> 42)));
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
        Symbol symbol;
        int i;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = parkedWorkersStack$volatile$FU$offset;
            long longVolatile = unsafe.getLongVolatile(this, j);
            Worker worker = (Worker) this.workers.get((int) (2097151 & longVolatile));
            if (worker == null) {
                worker = null;
                coroutineScheduler = this;
            } else {
                long j2 = (2097152 + longVolatile) & (-2097152);
                Object nextParkedWorker = worker.getNextParkedWorker();
                while (true) {
                    symbol = NOT_IN_STACK;
                    if (nextParkedWorker == symbol) {
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
                    unsafe = unsafe;
                    this = this;
                }
                if (i >= 0) {
                    CoroutineScheduler coroutineScheduler2 = this;
                    boolean compareAndSwapLong = unsafe.compareAndSwapLong(coroutineScheduler2, j, longVolatile, j2 | i);
                    coroutineScheduler = coroutineScheduler2;
                    if (compareAndSwapLong) {
                        worker.setNextParkedWorker(symbol);
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
