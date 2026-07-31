package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class LockFreeTaskQueue {
    public static final /* synthetic */ long _cur$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(LockFreeTaskQueue.class.getDeclaredField("_cur$volatile"));
    private volatile /* synthetic */ Object _cur$volatile = new LockFreeTaskQueueCore(8, false);

    public final boolean addLast(Runnable runnable) {
        LockFreeTaskQueue lockFreeTaskQueue;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _cur$volatile$FU$offset;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j);
            int addLast = lockFreeTaskQueueCore.addLast(runnable);
            if (addLast == 0) {
                return true;
            }
            if (addLast == 1) {
                LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
                while (true) {
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    lockFreeTaskQueue = this;
                    if (!unsafe2.compareAndSwapObject(lockFreeTaskQueue, _cur$volatile$FU$offset, lockFreeTaskQueueCore, next) && unsafe2.getObjectVolatile(lockFreeTaskQueue, j) == lockFreeTaskQueueCore) {
                        this = lockFreeTaskQueue;
                    }
                }
            } else {
                if (addLast == 2) {
                    return false;
                }
                lockFreeTaskQueue = this;
            }
            this = lockFreeTaskQueue;
        }
    }

    public final void close() {
        LockFreeTaskQueue lockFreeTaskQueue;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _cur$volatile$FU$offset;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j);
            if (lockFreeTaskQueueCore.close()) {
                return;
            }
            LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
            while (true) {
                lockFreeTaskQueue = this;
                if (!ArtificialStackFramesUnsafe.unsafe.compareAndSwapObject(lockFreeTaskQueue, _cur$volatile$FU$offset, lockFreeTaskQueueCore, next) && ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(lockFreeTaskQueue, j) == lockFreeTaskQueueCore) {
                    this = lockFreeTaskQueue;
                }
            }
            this = lockFreeTaskQueue;
        }
    }

    public final int getSize() {
        LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _cur$volatile$FU$offset);
        lockFreeTaskQueueCore.getClass();
        long longVolatile = ArtificialStackFramesUnsafe.unsafe.getLongVolatile(lockFreeTaskQueueCore, LockFreeTaskQueueCore._state$volatile$FU$offset);
        return 1073741823 & (((int) ((longVolatile & 1152921503533105152L) >> 30)) - ((int) (1073741823 & longVolatile)));
    }

    public final Object removeFirstOrNull() {
        LockFreeTaskQueue lockFreeTaskQueue;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _cur$volatile$FU$offset;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe.getObjectVolatile(this, j);
            Object removeFirstOrNull = lockFreeTaskQueueCore.removeFirstOrNull();
            if (removeFirstOrNull != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                return removeFirstOrNull;
            }
            LockFreeTaskQueueCore next = lockFreeTaskQueueCore.next();
            while (true) {
                lockFreeTaskQueue = this;
                if (!ArtificialStackFramesUnsafe.unsafe.compareAndSwapObject(lockFreeTaskQueue, _cur$volatile$FU$offset, lockFreeTaskQueueCore, next) && ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(lockFreeTaskQueue, j) == lockFreeTaskQueueCore) {
                    this = lockFreeTaskQueue;
                }
            }
            this = lockFreeTaskQueue;
        }
    }
}
