package kotlinx.coroutines.scheduling;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WorkQueue {
    public static final /* synthetic */ AtomicIntegerFieldUpdater blockingTasksInBuffer$volatile$FU;
    public static final /* synthetic */ long blockingTasksInBuffer$volatile$FU$offset;
    public static final /* synthetic */ long consumerIndex$volatile$FU$offset;
    public static final /* synthetic */ long lastScheduledTask$volatile$FU$offset;
    public static final /* synthetic */ AtomicIntegerFieldUpdater producerIndex$volatile$FU;
    public static final /* synthetic */ long producerIndex$volatile$FU$offset;
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    public final AtomicReferenceArray buffer = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        lastScheduledTask$volatile$FU$offset = unsafe.objectFieldOffset(WorkQueue.class.getDeclaredField("lastScheduledTask$volatile"));
        producerIndex$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");
        producerIndex$volatile$FU$offset = unsafe.objectFieldOffset(WorkQueue.class.getDeclaredField("producerIndex$volatile"));
        consumerIndex$volatile$FU$offset = unsafe.objectFieldOffset(WorkQueue.class.getDeclaredField("consumerIndex$volatile"));
        blockingTasksInBuffer$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");
        blockingTasksInBuffer$volatile$FU$offset = unsafe.objectFieldOffset(WorkQueue.class.getDeclaredField("blockingTasksInBuffer$volatile"));
    }

    public final Task addLast(Task task) {
        if (getBufferSize() == 127) {
            return task;
        }
        if (task.taskContext) {
            blockingTasksInBuffer$volatile$FU.incrementAndGet(this);
        }
        int intVolatile = ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, producerIndex$volatile$FU$offset) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.buffer;
            if (atomicReferenceArray.get(intVolatile) == null) {
                atomicReferenceArray.lazySet(intVolatile, task);
                producerIndex$volatile$FU.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final int getBufferSize() {
        return ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, producerIndex$volatile$FU$offset) - ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, consumerIndex$volatile$FU$offset);
    }

    public final Task pollBuffer() {
        Task task;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = consumerIndex$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile - unsafe.getIntVolatile(this, producerIndex$volatile$FU$offset) == 0) {
                return null;
            }
            int i = intVolatile & 127;
            WorkQueue workQueue = this;
            if (unsafe.compareAndSwapInt(workQueue, j, intVolatile, intVolatile + 1) && (task = (Task) workQueue.buffer.getAndSet(i, null)) != null) {
                if (task.taskContext) {
                    blockingTasksInBuffer$volatile$FU.decrementAndGet(workQueue);
                }
                return task;
            }
            this = workQueue;
        }
    }

    public final Task tryExtractFromTheMiddle(int i, boolean z) {
        int i2 = i & 127;
        AtomicReferenceArray atomicReferenceArray = this.buffer;
        Task task = (Task) atomicReferenceArray.get(i2);
        if (task != null && task.taskContext == z) {
            while (!atomicReferenceArray.compareAndSet(i2, task, null)) {
                if (atomicReferenceArray.get(i2) != task) {
                }
            }
            if (z) {
                blockingTasksInBuffer$volatile$FU.decrementAndGet(this);
            }
            return task;
        }
        return null;
    }
}
