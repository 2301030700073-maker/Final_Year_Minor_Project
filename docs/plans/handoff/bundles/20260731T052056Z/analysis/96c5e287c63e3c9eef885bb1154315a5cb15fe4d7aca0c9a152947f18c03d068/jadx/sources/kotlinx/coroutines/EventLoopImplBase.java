package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.concurrent.locks.LockSupport;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EventLoopImplBase extends EventLoop implements Delay {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final /* synthetic */ long _delayed$volatile$FU$offset;
    public static final /* synthetic */ long _isCompleted$volatile$FU$offset;
    public static final /* synthetic */ long _queue$volatile$FU$offset;
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DelayedRunnableTask extends DelayedTask {
        public final Runnable block;

        public DelayedRunnableTask(Runnable runnable, long j) {
            super(j);
            this.block = runnable;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                    Symbol symbol = AwaitKt.DISPOSED_TASK;
                    if (obj == symbol) {
                        return;
                    }
                    DelayedTaskQueue delayedTaskQueue = obj instanceof DelayedTaskQueue ? (DelayedTaskQueue) obj : null;
                    if (delayedTaskQueue != null) {
                        delayedTaskQueue.remove(this);
                    }
                    this._heap = symbol;
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
                if (this._heap == AwaitKt.DISPOSED_TASK) {
                    return 2;
                }
                synchronized (delayedTaskQueue) {
                    try {
                        DelayedTask[] delayedTaskArr = delayedTaskQueue.a;
                        DelayedTask delayedTask = delayedTaskArr != null ? delayedTaskArr[0] : null;
                        int i = EventLoopImplBase.$r8$clinit;
                        if (ArtificialStackFramesUnsafe.unsafe.getIntVolatile(eventLoopImplBase, EventLoopImplBase._isCompleted$volatile$FU$offset) == 1) {
                            return 1;
                        }
                        if (delayedTask == null) {
                            delayedTaskQueue.timeNow = j;
                        } else {
                            long j2 = delayedTask.nanoTime;
                            if (j2 - j < 0) {
                                j = j2;
                            }
                            long j3 = delayedTaskQueue.timeNow;
                            if (j - j3 > 0) {
                                delayedTaskQueue.timeNow = j;
                            } else {
                                j = j3;
                            }
                        }
                        if (this.nanoTime - j < 0) {
                            this.nanoTime = j;
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
            if (this._heap != AwaitKt.DISPOSED_TASK) {
                this._heap = delayedTaskQueue;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
            }
        }

        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + ']';
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DelayedTaskQueue extends ThreadSafeHeap {
        public long timeNow;
    }

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        _queue$volatile$FU$offset = unsafe.objectFieldOffset(EventLoopImplBase.class.getDeclaredField("_queue$volatile"));
        _delayed$volatile$FU$offset = unsafe.objectFieldOffset(EventLoopImplBase.class.getDeclaredField("_delayed$volatile"));
        _isCompleted$volatile$FU$offset = unsafe.objectFieldOffset(EventLoopImplBase.class.getDeclaredField("_isCompleted$volatile"));
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
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
        if (delayedTaskQueue == null || delayedTaskQueue.getSize() == 0) {
            return;
        }
        long nanoTime = System.nanoTime();
        do {
            synchronized (delayedTaskQueue) {
                try {
                    DelayedTask[] delayedTaskArr = delayedTaskQueue.a;
                    DelayedTask delayedTask2 = delayedTaskArr != null ? delayedTaskArr[0] : null;
                    if (delayedTask2 != null) {
                        delayedTask = ((nanoTime - delayedTask2.nanoTime) > 0L ? 1 : ((nanoTime - delayedTask2.nanoTime) == 0L ? 0 : -1)) >= 0 ? enqueueImpl(delayedTask2) : false ? delayedTaskQueue.removeAtImpl(0) : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (delayedTask != null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0074, code lost:
    
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
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r6 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            java.lang.Object r4 = r0.getObjectVolatile(r9, r6)
            long r2 = kotlinx.coroutines.EventLoopImplBase._isCompleted$volatile$FU$offset
            int r0 = r0.getIntVolatile(r9, r2)
            r8 = 1
            if (r0 != r8) goto L12
            goto L57
        L12:
            if (r4 != 0) goto L29
        L14:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            r4 = 0
            r1 = r9
            r5 = r10
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L22
            goto L74
        L22:
            java.lang.Object r0 = r0.getObjectVolatile(r9, r6)
            if (r0 == 0) goto L14
            goto L0
        L29:
            boolean r0 = r4 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore
            if (r0 == 0) goto L53
            r0 = r4
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r0 = (kotlinx.coroutines.internal.LockFreeTaskQueueCore) r0
            int r2 = r0.addLast(r10)
            if (r2 == 0) goto L74
            if (r2 == r8) goto L3c
            r0 = 2
            if (r2 == r0) goto L57
            goto L0
        L3c:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r5 = r0.next()
        L40:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            r1 = r9
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L4c
            goto L0
        L4c:
            java.lang.Object r0 = r0.getObjectVolatile(r9, r6)
            if (r0 == r4) goto L40
            goto L0
        L53:
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.AwaitKt.CLOSED_EMPTY
            if (r4 != r0) goto L59
        L57:
            r0 = 0
            return r0
        L59:
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r5 = new kotlinx.coroutines.internal.LockFreeTaskQueueCore
            r0 = 8
            r5.<init>(r0, r8)
            r0 = r4
            java.lang.Runnable r0 = (java.lang.Runnable) r0
            r5.addLast(r0)
            r5.addLast(r10)
        L69:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.EventLoopImplBase._queue$volatile$FU$offset
            r1 = r9
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L75
        L74:
            return r8
        L75:
            java.lang.Object r0 = r0.getObjectVolatile(r9, r6)
            if (r0 == r4) goto L69
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.enqueueImpl(java.lang.Runnable):boolean");
    }

    public abstract Thread getThread();

    public DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return DefaultExecutorKt.DefaultDelay.invokeOnTimeout(j, runnable, coroutineContext);
    }

    public final boolean isEmpty() {
        ArrayDeque arrayDeque = this.unconfinedQueue;
        if (arrayDeque != null ? arrayDeque.isEmpty() : true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
            if (delayedTaskQueue != null && delayedTaskQueue.getSize() != 0) {
                return false;
            }
            Object objectVolatile = unsafe.getObjectVolatile(this, _queue$volatile$FU$offset);
            if (objectVolatile != null) {
                if (objectVolatile instanceof LockFreeTaskQueueCore) {
                    long longVolatile = unsafe.getLongVolatile((LockFreeTaskQueueCore) objectVolatile, LockFreeTaskQueueCore._state$volatile$FU$offset);
                    return ((int) (1073741823 & longVolatile)) == ((int) ((longVolatile & 1152921503533105152L) >> 30));
                }
                if (objectVolatile == AwaitKt.CLOSED_EMPTY) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x001b, code lost:
    
        r6 = r3;
        r13 = null;
     */
    @Override // kotlinx.coroutines.EventLoop
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long processNextEvent() {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.EventLoopImplBase.processNextEvent():long");
    }

    public void reschedule(long j, DelayedTask delayedTask) {
        DefaultExecutor.INSTANCE.schedule(j, delayedTask);
    }

    public final void schedule(long j, DelayedTask delayedTask) {
        EventLoopImplBase eventLoopImplBase;
        int scheduleTask;
        Unsafe unsafe;
        Thread thread;
        long j2 = _delayed$volatile$FU$offset;
        Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
        if (unsafe2.getIntVolatile(this, _isCompleted$volatile$FU$offset) == 1) {
            eventLoopImplBase = this;
            scheduleTask = 1;
        } else {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) unsafe2.getObjectVolatile(this, j2);
            if (delayedTaskQueue == null) {
                DelayedTaskQueue delayedTaskQueue2 = new DelayedTaskQueue();
                delayedTaskQueue2.timeNow = j;
                while (true) {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    eventLoopImplBase = this;
                    if (!unsafe.compareAndSwapObject(eventLoopImplBase, _delayed$volatile$FU$offset, (Object) null, delayedTaskQueue2) && unsafe.getObjectVolatile(eventLoopImplBase, j2) == null) {
                        this = eventLoopImplBase;
                    }
                }
                Object objectVolatile = unsafe.getObjectVolatile(eventLoopImplBase, j2);
                objectVolatile.getClass();
                delayedTaskQueue = (DelayedTaskQueue) objectVolatile;
                unsafe2 = unsafe;
            } else {
                eventLoopImplBase = this;
            }
            scheduleTask = delayedTask.scheduleTask(j, delayedTaskQueue, eventLoopImplBase);
        }
        if (scheduleTask != 0) {
            if (scheduleTask == 1) {
                eventLoopImplBase.reschedule(j, delayedTask);
                return;
            } else {
                if (scheduleTask == 2) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unexpected result");
                return;
            }
        }
        DelayedTaskQueue delayedTaskQueue3 = (DelayedTaskQueue) unsafe2.getObjectVolatile(eventLoopImplBase, j2);
        if (delayedTaskQueue3 != null) {
            synchronized (delayedTaskQueue3) {
                DelayedTask[] delayedTaskArr = delayedTaskQueue3.a;
                r12 = delayedTaskArr != null ? delayedTaskArr[0] : null;
            }
        }
        if (r12 != delayedTask || Thread.currentThread() == (thread = eventLoopImplBase.getThread())) {
            return;
        }
        LockSupport.unpark(thread);
    }

    @Override // kotlinx.coroutines.Delay
    public final void scheduleResumeAfterDelay(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        long j2 = j > 0 ? j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j : 0L;
        if (j2 < 4611686018427387903L) {
            long nanoTime = System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(j2 + nanoTime, cancellableContinuationImpl);
            schedule(nanoTime, delayedResumeTask);
            cancellableContinuationImpl.invokeOnCancellationImpl(new DisposeOnCancel(0, delayedResumeTask));
        }
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        Symbol symbol;
        Unsafe unsafe;
        DelayedTask removeAtImpl;
        ThreadLocalEventLoop.ref.set(null);
        ArtificialStackFramesUnsafe.unsafe.putIntVolatile(this, _isCompleted$volatile$FU$offset, 1);
        Symbol symbol2 = AwaitKt.CLOSED_EMPTY;
        long j = _queue$volatile$FU$offset;
        loop0: while (true) {
            Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                while (true) {
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    symbol = symbol2;
                    if (unsafe2.compareAndSwapObject(this, _queue$volatile$FU$offset, (Object) null, symbol2)) {
                        break loop0;
                    } else if (unsafe2.getObjectVolatile(this, j) != null) {
                        break;
                    } else {
                        symbol2 = symbol;
                    }
                }
                symbol2 = symbol;
            } else {
                symbol = symbol2;
                if (objectVolatile instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) objectVolatile).close();
                    break;
                }
                if (objectVolatile == symbol) {
                    break;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                lockFreeTaskQueueCore.addLast((Runnable) objectVolatile);
                do {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    if (unsafe.compareAndSwapObject(this, _queue$volatile$FU$offset, objectVolatile, lockFreeTaskQueueCore)) {
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(this, j) == objectVolatile);
                symbol2 = symbol;
            }
        }
        while (processNextEvent() <= 0) {
        }
        long nanoTime = System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _delayed$volatile$FU$offset);
            if (delayedTaskQueue == null) {
                return;
            }
            synchronized (delayedTaskQueue) {
                removeAtImpl = delayedTaskQueue.getSize() > 0 ? delayedTaskQueue.removeAtImpl(0) : null;
            }
            if (removeAtImpl == null) {
                return;
            } else {
                reschedule(nanoTime, removeAtImpl);
            }
        }
    }
}
