package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.Arrays;
import kotlinx.coroutines.EventLoopImplBase;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ThreadSafeHeap {
    public static final /* synthetic */ long _size$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(ThreadSafeHeap.class.getDeclaredField("_size$volatile"));
    private volatile /* synthetic */ int _size$volatile;
    public EventLoopImplBase.DelayedTask[] a;

    public final void addImpl(EventLoopImplBase.DelayedTask delayedTask) {
        delayedTask.setHeap((EventLoopImplBase.DelayedTaskQueue) this);
        EventLoopImplBase.DelayedTask[] delayedTaskArr = this.a;
        if (delayedTaskArr == null) {
            delayedTaskArr = new EventLoopImplBase.DelayedTask[4];
            this.a = delayedTaskArr;
        } else if (getSize() >= delayedTaskArr.length) {
            delayedTaskArr = (EventLoopImplBase.DelayedTask[]) Arrays.copyOf(delayedTaskArr, getSize() * 2);
            this.a = delayedTaskArr;
        }
        int size = getSize();
        ArtificialStackFramesUnsafe.unsafe.putIntVolatile(this, _size$volatile$FU$offset, size + 1);
        delayedTaskArr[size] = delayedTask;
        delayedTask.index = size;
        siftUpFrom(size);
    }

    public final int getSize() {
        return ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, _size$volatile$FU$offset);
    }

    public final void remove(EventLoopImplBase.DelayedTask delayedTask) {
        synchronized (this) {
            if (delayedTask.getHeap() != null) {
                removeAtImpl(delayedTask.index);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0062, code lost:
    
        if (r5.compareTo(r6) < 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.EventLoopImplBase.DelayedTask removeAtImpl(int r8) {
        /*
            r7 = this;
            kotlinx.coroutines.EventLoopImplBase$DelayedTask[] r0 = r7.a
            r0.getClass()
            int r1 = r7.getSize()
            r2 = -1
            int r1 = r1 + r2
            sun.misc.Unsafe r3 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r4 = kotlinx.coroutines.internal.ThreadSafeHeap._size$volatile$FU$offset
            r3.putIntVolatile(r7, r4, r1)
            int r1 = r7.getSize()
            if (r8 >= r1) goto L7c
            int r1 = r7.getSize()
            r7.swap(r8, r1)
            int r1 = r8 + (-1)
            int r1 = r1 / 2
            if (r8 <= 0) goto L3c
            r3 = r0[r8]
            r3.getClass()
            r4 = r0[r1]
            r4.getClass()
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L3c
            r7.swap(r8, r1)
            r7.siftUpFrom(r1)
            goto L7c
        L3c:
            int r1 = r8 * 2
            int r3 = r1 + 1
            int r4 = r7.getSize()
            if (r3 < r4) goto L47
            goto L7c
        L47:
            kotlinx.coroutines.EventLoopImplBase$DelayedTask[] r4 = r7.a
            r4.getClass()
            int r1 = r1 + 2
            int r5 = r7.getSize()
            if (r1 >= r5) goto L65
            r5 = r4[r1]
            r5.getClass()
            r6 = r4[r3]
            r6.getClass()
            int r5 = r5.compareTo(r6)
            if (r5 >= 0) goto L65
            goto L66
        L65:
            r1 = r3
        L66:
            r3 = r4[r8]
            r3.getClass()
            r4 = r4[r1]
            r4.getClass()
            int r3 = r3.compareTo(r4)
            if (r3 > 0) goto L77
            goto L7c
        L77:
            r7.swap(r8, r1)
            r8 = r1
            goto L3c
        L7c:
            int r8 = r7.getSize()
            r8 = r0[r8]
            r8.getClass()
            r1 = 0
            r8.setHeap(r1)
            r8.index = r2
            int r7 = r7.getSize()
            r0[r7] = r1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.ThreadSafeHeap.removeAtImpl(int):kotlinx.coroutines.EventLoopImplBase$DelayedTask");
    }

    public final void siftUpFrom(int i) {
        while (i > 0) {
            EventLoopImplBase.DelayedTask[] delayedTaskArr = this.a;
            delayedTaskArr.getClass();
            int i2 = (i - 1) / 2;
            EventLoopImplBase.DelayedTask delayedTask = delayedTaskArr[i2];
            delayedTask.getClass();
            EventLoopImplBase.DelayedTask delayedTask2 = delayedTaskArr[i];
            delayedTask2.getClass();
            if (delayedTask.compareTo(delayedTask2) <= 0) {
                return;
            }
            swap(i, i2);
            i = i2;
        }
    }

    public final void swap(int i, int i2) {
        EventLoopImplBase.DelayedTask[] delayedTaskArr = this.a;
        delayedTaskArr.getClass();
        EventLoopImplBase.DelayedTask delayedTask = delayedTaskArr[i2];
        delayedTask.getClass();
        EventLoopImplBase.DelayedTask delayedTask2 = delayedTaskArr[i];
        delayedTask2.getClass();
        delayedTaskArr[i] = delayedTask;
        delayedTaskArr[i2] = delayedTask2;
        delayedTask.index = i;
        delayedTask2.index = i2;
    }
}
