package kotlinx.coroutines;

import com.google.common.base.Joiner;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EventLoopImplBase extends EventLoop implements Delay {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _delayed$volatile$FU;
    public static final /* synthetic */ long _delayed$volatile$FU$offset;
    public static final /* synthetic */ AtomicIntegerFieldUpdater _isCompleted$volatile$FU;
    public static final /* synthetic */ AtomicReferenceFieldUpdater _queue$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue$volatile");
    public static final /* synthetic */ long _queue$volatile$FU$offset;
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DelayedResumeTask extends DelayedTask {
        public final CancellableContinuationImpl cont;

        public DelayedResumeTask(long j, CancellableContinuationImpl cancellableContinuationImpl) {
            super(j);
            this.cont = cancellableContinuationImpl;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.cont.resumeUndispatched(EventLoopImplBase.this);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public final String toString() {
            return super.toString() + this.cont;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DelayedRunnableTask extends DelayedTask {
        public final TimeoutCoroutine block;

        public DelayedRunnableTask(long j, TimeoutCoroutine timeoutCoroutine) {
            super(j);
            this.block = timeoutCoroutine;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.block.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public final String toString() {
            return super.toString() + this.block;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class DelayedTask implements Runnable, Comparable, DisposableHandle {
        private volatile Object _heap;
        public int index = -1;
        public long nanoTime;

        public DelayedTask(long j) {
            this.nanoTime = j;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            long j = this.nanoTime - ((DelayedTask) obj).nanoTime;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    Joiner joiner = JobKt.DISPOSED_TASK;
                    if (obj == joiner) {
                        return;
                    }
                    DelayedTaskQueue delayedTaskQueue = obj instanceof DelayedTaskQueue ? (DelayedTaskQueue) obj : null;
                    if (delayedTaskQueue != null) {
                        delayedTaskQueue.remove(this);
                    }
                    this._heap = joiner;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final ThreadSafeHeap getHeap() {
            Object obj = this._heap;
            if (obj instanceof ThreadSafeHeap) {
                return (ThreadSafeHeap) obj;
            }
            return null;
        }

        public final int scheduleTask(long j, DelayedTaskQueue delayedTaskQueue, EventLoopImplBase eventLoopImplBase) {
            synchronized (this) {
                if (this._heap == JobKt.DISPOSED_TASK) {
                    return 2;
                }
                synchronized (delayedTaskQueue) {
                    try {
                        DelayedTask[] delayedTaskArr = delayedTaskQueue.a;
                        DelayedTask delayedTask = delayedTaskArr != null ? delayedTaskArr[0] : null;
                        if (EventLoopImplBase._isCompleted$volatile$FU.get(eventLoopImplBase) == 1) {
                            return 1;
                        }
                        if (delayedTask == null) {
                            delayedTaskQueue.timeNow = j;
                        } else {
                            long j2 = delayedTask.nanoTime;
                            if (j2 - j < 0) {
                                j = j2;
                            }
                            if (j - delayedTaskQueue.timeNow > 0) {
                                delayedTaskQueue.timeNow = j;
                            }
                        }
                        long j3 = this.nanoTime;
                        long j4 = delayedTaskQueue.timeNow;
                        if (j3 - j4 < 0) {
                            this.nanoTime = j4;
                        }
                        delayedTaskQueue.addImpl(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        public final void setHeap(DelayedTaskQueue delayedTaskQueue) {
            if (this._heap != JobKt.DISPOSED_TASK) {
                this._heap = delayedTaskQueue;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Failed requirement.");
            }
        }

        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + ']';
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class DelayedTaskQueue extends ThreadSafeHeap {
        public long timeNow;
    }

    static {
        Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        _queue$volatile$FU$offset = unsafe.objectFieldOffset(EventLoopImplBase.class.getDeclaredField("_queue$volatile"));
        _delayed$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed$volatile");
        _delayed$volatile$FU$offset = unsafe.objectFieldOffset(EventLoopImplBase.class.getDeclaredField("_delayed$volatile"));
        _isCompleted$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted$volatile");
    }

    public final void closeQueue() {
        EventLoopImplBase eventLoopImplBase;
        Unsafe unsafe;
        Joiner joiner = JobKt.CLOSED_EMPTY;
        while (true) {
            _queue$volatile$FU.getClass();
            Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = _queue$volatile$FU$offset;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                while (true) {
                    Unsafe unsafe3 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    eventLoopImplBase = this;
                    if (unsafe3.compareAndSwapObject(eventLoopImplBase, _queue$volatile$FU$offset, (Object) null, joiner)) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(eventLoopImplBase, j) != null) {
                        break;
                    } else {
                        this = eventLoopImplBase;
                    }
                }
            } else {
                eventLoopImplBase = this;
                if (objectVolatile instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) objectVolatile).close();
                    return;
                }
                if (objectVolatile == joiner) {
                    return;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                lockFreeTaskQueueCore.addLast((Runnable) objectVolatile);
                do {
                    unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(eventLoopImplBase, _queue$volatile$FU$offset, objectVolatile, lockFreeTaskQueueCore)) {
                        return;
                    }
                } while (unsafe.getObjectVolatile(eventLoopImplBase, j) == objectVolatile);
            }
            this = eventLoopImplBase;
        }
    }

    public final Runnable dequeue() {
        EventLoopImplBase eventLoopImplBase;
        Unsafe unsafe;
        while (true) {
            _queue$volatile$FU.getClass();
            Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = _queue$volatile$FU$offset;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                return null;
            }
            if (objectVolatile instanceof LockFreeTaskQueueCore) {
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) objectVolatile;
                Object removeFirstOrNull = lockFreeTaskQueueCore.removeFirstOrNull();
                if (removeFirstOrNull != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                    return (Runnable) removeFirstOrNull;
                }
                LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
                while (true) {
                    Unsafe unsafe3 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    eventLoopImplBase = this;
                    if (!unsafe3.compareAndSwapObject(eventLoopImplBase, _queue$volatile$FU$offset, objectVolatile, next) && unsafe3.getObjectVolatile(eventLoopImplBase, j) == objectVolatile) {
                        this = eventLoopImplBase;
                    }
                }
            } else {
                eventLoopImplBase = this;
                if (objectVolatile == JobKt.CLOSED_EMPTY) {
                    return null;
                }
                do {
                    unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(eventLoopImplBase, _queue$volatile$FU$offset, objectVolatile, (Object) null)) {
                        return (Runnable) objectVolatile;
                    }
                } while (unsafe.getObjectVolatile(eventLoopImplBase, j) == objectVolatile);
            }
            this = eventLoopImplBase;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        enqueue(runnable);
    }

    public void enqueue(Runnable runnable) {
        enqueueDelayedTasks();
        if (!enqueueImpl(runnable)) {
            DefaultExecutor.INSTANCE.enqueue(runnable);
            return;
        }
        Thread thread = getThread();
        if (Thread.currentThread() != thread) {
            LockSupport.unpark(thread);
        }
    }

    public final void enqueueDelayedTasks() {
        DelayedTask delayedTask;
        _delayed$volatile$FU.getClass();
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
        if (delayedTaskQueue == null || ThreadSafeHeap._size$volatile$FU.get(delayedTaskQueue) == 0) {
            return;
        }
        long nanoTime = System.nanoTime();
        do {
            synchronized (delayedTaskQueue) {
                try {
                    DelayedTask[] delayedTaskArr = delayedTaskQueue.a;
                    delayedTask = null;
                    DelayedTask delayedTask2 = delayedTaskArr != null ? delayedTaskArr[0] : null;
                    if (delayedTask2 != null) {
                        if (nanoTime - delayedTask2.nanoTime >= 0 ? enqueueImpl(delayedTask2) : false) {
                            delayedTask = delayedTaskQueue.removeAtImpl(0);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (delayedTask != null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0079, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean enqueueImpl(java.lang.Runnable r10) {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU
            r0.getClass()
            sun.misc.Unsafe r0 = kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe
            long r6 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            java.lang.Object r4 = r0.getObjectVolatile(r9, r6)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.EventLoopImplBase._isCompleted$volatile$FU
            int r0 = r0.get(r9)
            r8 = 1
            if (r0 != r8) goto L17
            goto L5c
        L17:
            if (r4 != 0) goto L2e
        L19:
            sun.misc.Unsafe r0 = kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            r4 = 0
            r1 = r9
            r5 = r10
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L27
            goto L79
        L27:
            java.lang.Object r0 = r0.getObjectVolatile(r9, r6)
            if (r0 == 0) goto L19
            goto L0
        L2e:
            boolean r0 = r4 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r0 == 0) goto L58
            r0 = r4
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r0 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r0
            int r2 = r0.addLast(r10)
            if (r2 == 0) goto L79
            if (r2 == r8) goto L41
            r0 = 2
            if (r2 == r0) goto L5c
            goto L0
        L41:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r5 = r0.next()
        L45:
            sun.misc.Unsafe r0 = kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            r1 = r9
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L51
            goto L0
        L51:
            java.lang.Object r0 = r0.getObjectVolatile(r9, r6)
            if (r0 == r4) goto L45
            goto L0
        L58:
            com.google.common.base.Joiner r0 = kotlinx.coroutines.JobKt.CLOSED_EMPTY
            if (r4 != r0) goto L5e
        L5c:
            r0 = 0
            return r0
        L5e:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r5 = new kotlinx.coroutines.internal.LockFreeTaskQueueCore
            r0 = 8
            r5.<init>(r0, r8)
            r0 = r4
            java.lang.Runnable r0 = (java.lang.Runnable) r0
            r5.addLast(r0)
            r5.addLast(r10)
        L6e:
            sun.misc.Unsafe r0 = kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            r1 = r9
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L7a
        L79:
            return r8
        L7a:
            java.lang.Object r0 = r0.getObjectVolatile(r9, r6)
            if (r0 == r4) goto L6e
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.enqueueImpl(java.lang.Runnable):boolean");
    }

    public final long getNextTime() {
        DelayedTask delayedTask;
        ArrayDeque arrayDeque = this.unconfinedQueue;
        if (((arrayDeque == null || arrayDeque.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
            _queue$volatile$FU.getClass();
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            Object objectVolatile = unsafe.getObjectVolatile(this, _queue$volatile$FU$offset);
            if (objectVolatile != null) {
                if (objectVolatile instanceof LockFreeTaskQueueCore) {
                    long j = LockFreeTaskQueueCore._state$volatile$FU.get((LockFreeTaskQueueCore) objectVolatile);
                    if (((int) (1073741823 & j)) != ((int) ((j & 1152921503533105152L) >> 30))) {
                        return 0L;
                    }
                } else if (objectVolatile == JobKt.CLOSED_EMPTY) {
                    return Long.MAX_VALUE;
                }
            }
            _delayed$volatile$FU.getClass();
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
            if (delayedTaskQueue != null) {
                synchronized (delayedTaskQueue) {
                    DelayedTask[] delayedTaskArr = delayedTaskQueue.a;
                    delayedTask = delayedTaskArr != null ? delayedTaskArr[0] : null;
                }
                if (delayedTask != null) {
                    long nanoTime = delayedTask.nanoTime - System.nanoTime();
                    if (nanoTime >= 0) {
                        return nanoTime;
                    }
                }
            }
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public abstract Thread getThread();

    public DisposableHandle invokeOnTimeout(long j, TimeoutCoroutine timeoutCoroutine, CoroutineContext coroutineContext) {
        return DefaultExecutorKt.DefaultDelay.invokeOnTimeout(j, timeoutCoroutine, coroutineContext);
    }

    public final boolean isEmpty() {
        ArrayDeque arrayDeque = this.unconfinedQueue;
        if (arrayDeque != null ? arrayDeque.isEmpty() : true) {
            _delayed$volatile$FU.getClass();
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
            if (delayedTaskQueue != null && ThreadSafeHeap._size$volatile$FU.get(delayedTaskQueue) != 0) {
                return false;
            }
            _queue$volatile$FU.getClass();
            Object objectVolatile = unsafe.getObjectVolatile(this, _queue$volatile$FU$offset);
            if (objectVolatile != null) {
                if (objectVolatile instanceof LockFreeTaskQueueCore) {
                    long j = LockFreeTaskQueueCore._state$volatile$FU.get((LockFreeTaskQueueCore) objectVolatile);
                    return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
                }
                if (objectVolatile == JobKt.CLOSED_EMPTY) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.EventLoop
    public final long processNextEvent() {
        if (processUnconfinedEvent()) {
            return 0L;
        }
        enqueueDelayedTasks();
        Runnable dequeue = dequeue();
        if (dequeue == null) {
            return getNextTime();
        }
        dequeue.run();
        return 0L;
    }

    public void reschedule(long j, DelayedTask delayedTask) {
        DefaultExecutor.INSTANCE.schedule(j, delayedTask);
    }

    public final void rescheduleAllDelayed() {
        DelayedTask removeAtImpl;
        long nanoTime = System.nanoTime();
        while (true) {
            _delayed$volatile$FU.getClass();
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
            if (delayedTaskQueue == null) {
                return;
            }
            synchronized (delayedTaskQueue) {
                removeAtImpl = ThreadSafeHeap._size$volatile$FU.get(delayedTaskQueue) > 0 ? delayedTaskQueue.removeAtImpl(0) : null;
            }
            if (removeAtImpl == null) {
                return;
            } else {
                reschedule(nanoTime, removeAtImpl);
            }
        }
    }

    public final void resetAll() {
        _queue$volatile$FU.getClass();
        Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        unsafe.putObjectVolatile(this, _queue$volatile$FU$offset, (Object) null);
        _delayed$volatile$FU.getClass();
        unsafe.putObjectVolatile(this, _delayed$volatile$FU$offset, (Object) null);
    }

    public final void schedule(long j, DelayedTask delayedTask) {
        Thread thread;
        int scheduleImpl = scheduleImpl(j, delayedTask);
        if (scheduleImpl == 0) {
            if (!shouldUnpark(delayedTask) || Thread.currentThread() == (thread = getThread())) {
                return;
            }
            LockSupport.unpark(thread);
            return;
        }
        if (scheduleImpl == 1) {
            reschedule(j, delayedTask);
        } else {
            if (scheduleImpl == 2) {
                return;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("unexpected result");
        }
    }

    public final int scheduleImpl(long j, DelayedTask delayedTask) {
        EventLoopImplBase eventLoopImplBase;
        Unsafe unsafe;
        if (_isCompleted$volatile$FU.get(this) == 1) {
            return 1;
        }
        _delayed$volatile$FU.getClass();
        Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        long j2 = _delayed$volatile$FU$offset;
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) unsafe2.getObjectVolatile(this, j2);
        if (delayedTaskQueue == null) {
            DelayedTaskQueue delayedTaskQueue2 = new DelayedTaskQueue();
            delayedTaskQueue2.timeNow = j;
            while (true) {
                unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                eventLoopImplBase = this;
                if (!unsafe.compareAndSwapObject(eventLoopImplBase, _delayed$volatile$FU$offset, (Object) null, delayedTaskQueue2) && unsafe.getObjectVolatile(eventLoopImplBase, j2) == null) {
                    this = eventLoopImplBase;
                }
            }
            Object objectVolatile = unsafe.getObjectVolatile(eventLoopImplBase, j2);
            objectVolatile.getClass();
            delayedTaskQueue = (DelayedTaskQueue) objectVolatile;
        } else {
            eventLoopImplBase = this;
        }
        return delayedTask.scheduleTask(j, delayedTaskQueue, eventLoopImplBase);
    }

    @Override // kotlinx.coroutines.Delay
    public final void scheduleResumeAfterDelay(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 < 4611686018427387903L) {
            long nanoTime = System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(j2 + nanoTime, cancellableContinuationImpl);
            schedule(nanoTime, delayedResumeTask);
            cancellableContinuationImpl.invokeOnCancellationImpl(new DisposeOnCancel(delayedResumeTask, 0));
        }
    }

    public final boolean shouldUnpark(DelayedTask delayedTask) {
        _delayed$volatile$FU.getClass();
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
        if (delayedTaskQueue != null) {
            synchronized (delayedTaskQueue) {
                DelayedTask[] delayedTaskArr = delayedTaskQueue.a;
                r0 = delayedTaskArr != null ? delayedTaskArr[0] : null;
            }
        }
        return r0 == delayedTask;
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        ThreadLocalEventLoop.ref.set(null);
        _isCompleted$volatile$FU.set(this, 1);
        closeQueue();
        while (processNextEvent() <= 0) {
        }
        rescheduleAllDelayed();
    }
}
