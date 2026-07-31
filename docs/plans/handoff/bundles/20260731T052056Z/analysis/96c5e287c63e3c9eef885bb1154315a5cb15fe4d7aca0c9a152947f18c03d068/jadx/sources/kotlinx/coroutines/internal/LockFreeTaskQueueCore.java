package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.concurrent.atomic.AtomicReferenceArray;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LockFreeTaskQueueCore {
    public static final Symbol REMOVE_FROZEN;
    public static final /* synthetic */ long _next$volatile$FU$offset;
    public static final /* synthetic */ long _state$volatile$FU$offset;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;
    public final /* synthetic */ AtomicReferenceArray array;
    public final int capacity;
    public final int mask;
    public final boolean singleConsumer;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Placeholder {
        public final int index;

        public Placeholder(int i) {
            this.index = i;
        }
    }

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        _next$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeTaskQueueCore.class.getDeclaredField("_next$volatile"));
        _state$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeTaskQueueCore.class.getDeclaredField("_state$volatile"));
        REMOVE_FROZEN = new Symbol(0, "REMOVE_FROZEN");
    }

    public LockFreeTaskQueueCore(int i, boolean z) {
        this.capacity = i;
        this.singleConsumer = z;
        int i2 = i - 1;
        this.mask = i2;
        this.array = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
            throw null;
        }
        if ((i & i2) == 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
        throw null;
    }

    public final int addLast(Object obj) {
        LockFreeTaskQueueCore lockFreeTaskQueueCore = this;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            long longVolatile = unsafe.getLongVolatile(lockFreeTaskQueueCore, j);
            if ((3458764513820540928L & longVolatile) != 0) {
                return (2305843009213693952L & longVolatile) != 0 ? 2 : 1;
            }
            int i = (int) (1073741823 & longVolatile);
            int i2 = (int) ((1152921503533105152L & longVolatile) >> 30);
            int i3 = lockFreeTaskQueueCore.mask;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            boolean z = lockFreeTaskQueueCore.singleConsumer;
            AtomicReferenceArray atomicReferenceArray = lockFreeTaskQueueCore.array;
            if (z || atomicReferenceArray.get(i2 & i3) == null) {
                if (unsafe.compareAndSwapLong(lockFreeTaskQueueCore, _state$volatile$FU$offset, longVolatile, ((-1152921503533105153L) & longVolatile) | (((i2 + 1) & 1073741823) << 30))) {
                    atomicReferenceArray.set(i2 & i3, obj);
                    LockFreeTaskQueueCore lockFreeTaskQueueCore2 = this;
                    while ((ArtificialStackFramesUnsafe.unsafe.getLongVolatile(lockFreeTaskQueueCore2, j) & 1152921504606846976L) != 0) {
                        lockFreeTaskQueueCore2 = lockFreeTaskQueueCore2.next();
                        AtomicReferenceArray atomicReferenceArray2 = lockFreeTaskQueueCore2.array;
                        int i4 = lockFreeTaskQueueCore2.mask & i2;
                        Object obj2 = atomicReferenceArray2.get(i4);
                        if ((obj2 instanceof Placeholder) && ((Placeholder) obj2).index == i2) {
                            atomicReferenceArray2.set(i4, obj);
                        } else {
                            lockFreeTaskQueueCore2 = null;
                        }
                        if (lockFreeTaskQueueCore2 == null) {
                            return 0;
                        }
                    }
                    return 0;
                }
                lockFreeTaskQueueCore = this;
            } else {
                int i5 = lockFreeTaskQueueCore.capacity;
                if (i5 < 1024 || ((i2 - i) & 1073741823) > (i5 >> 1)) {
                    return 1;
                }
            }
        }
    }

    public final boolean close() {
        while (true) {
            long longVolatile = ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, _state$volatile$FU$offset);
            if ((longVolatile & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & longVolatile) != 0) {
                return false;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCore = this;
            if (ArtificialStackFramesUnsafe.unsafe.compareAndSwapLong(lockFreeTaskQueueCore, _state$volatile$FU$offset, longVolatile, longVolatile | 2305843009213693952L)) {
                return true;
            }
            this = lockFreeTaskQueueCore;
        }
    }

    public final LockFreeTaskQueueCore next() {
        long j;
        Unsafe unsafe;
        while (true) {
            Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
            long j2 = _state$volatile$FU$offset;
            long longVolatile = unsafe2.getLongVolatile(this, j2);
            if ((longVolatile & 1152921504606846976L) != 0) {
                j = longVolatile;
                break;
            }
            j = 1152921504606846976L | longVolatile;
            if (unsafe2.compareAndSwapLong(this, j2, longVolatile, j)) {
                break;
            }
        }
        while (true) {
            Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
            long j3 = _next$volatile$FU$offset;
            LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) unsafe3.getObjectVolatile(this, j3);
            if (lockFreeTaskQueueCore != null) {
                return lockFreeTaskQueueCore;
            }
            LockFreeTaskQueueCore lockFreeTaskQueueCore2 = new LockFreeTaskQueueCore(this.capacity * 2, this.singleConsumer);
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = this.mask;
                int i4 = i & i3;
                if (i4 == (i3 & i2)) {
                    break;
                }
                Object obj = this.array.get(i4);
                if (obj == null) {
                    obj = new Placeholder(i);
                }
                lockFreeTaskQueueCore2.array.set(lockFreeTaskQueueCore2.mask & i, obj);
                i++;
            }
            ArtificialStackFramesUnsafe.unsafe.putLongVolatile(lockFreeTaskQueueCore2, _state$volatile$FU$offset, j & (-1152921504606846977L));
            do {
                unsafe = ArtificialStackFramesUnsafe.unsafe;
                if (unsafe.compareAndSwapObject(this, _next$volatile$FU$offset, (Object) null, lockFreeTaskQueueCore2)) {
                    break;
                }
            } while (unsafe.getObjectVolatile(this, j3) == null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0044, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object removeFirstOrNull() {
        /*
            r34 = this;
            r1 = r34
        L2:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.internal.LockFreeTaskQueueCore._state$volatile$FU$offset
            long r4 = r0.getLongVolatile(r1, r2)
            r8 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r6 = r4 & r8
            r10 = 0
            int r6 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r6 == 0) goto L17
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.internal.LockFreeTaskQueueCore.REMOVE_FROZEN
            return r0
        L17:
            r12 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r6 = r4 & r12
            int r6 = (int) r6
            r14 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r14 = r14 & r4
            r7 = 30
            long r14 = r14 >> r7
            int r7 = (int) r14
            int r14 = r1.mask
            r7 = r7 & r14
            r14 = r14 & r6
            r15 = 0
            if (r7 != r14) goto L2f
            goto L44
        L2f:
            java.util.concurrent.atomic.AtomicReferenceArray r7 = r1.array
            r16 = r8
            java.lang.Object r8 = r7.get(r14)
            boolean r9 = r1.singleConsumer
            if (r8 != 0) goto L3e
            if (r9 == 0) goto L2
            goto L44
        L3e:
            r18 = r10
            boolean r10 = r8 instanceof kotlinx.coroutines.internal.LockFreeTaskQueueCore.Placeholder
            if (r10 == 0) goto L45
        L44:
            return r15
        L45:
            int r6 = r6 + 1
            r10 = 1073741823(0x3fffffff, float:1.9999999)
            r6 = r6 & r10
            r10 = -1073741824(0xffffffffc0000000, double:NaN)
            long r20 = r4 & r10
            r22 = r10
            long r10 = (long) r6
            long r20 = r20 | r10
            r24 = r12
            r12 = r7
            r6 = r20
            boolean r0 = r0.compareAndSwapLong(r1, r2, r4, r6)
            if (r0 == 0) goto L64
            r12.set(r14, r15)
            return r8
        L64:
            r1 = r34
            if (r9 == 0) goto L2
        L68:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.internal.LockFreeTaskQueueCore._state$volatile$FU$offset
            long r30 = r0.getLongVolatile(r1, r2)
            long r4 = r30 & r24
            int r4 = (int) r4
            long r5 = r30 & r16
            int r5 = (r5 > r18 ? 1 : (r5 == r18 ? 0 : -1))
            if (r5 == 0) goto L7f
            kotlinx.coroutines.internal.LockFreeTaskQueueCore r0 = r1.next()
            r1 = r0
            goto L98
        L7f:
            long r5 = r30 & r22
            long r32 = r5 | r10
            r26 = r0
            r27 = r1
            r28 = r2
            boolean r0 = r26.compareAndSwapLong(r27, r28, r30, r32)
            if (r0 == 0) goto L68
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r1.array
            int r1 = r1.mask
            r1 = r1 & r4
            r0.set(r1, r15)
            r1 = r15
        L98:
            if (r1 != 0) goto L68
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeTaskQueueCore.removeFirstOrNull():java.lang.Object");
    }
}
