package kotlinx.coroutines.internal;

import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import kotlinx.coroutines.JobKt;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class LockFreeLinkedListNode {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _next$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ long _next$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater _prev$volatile$FU;
    public static final /* synthetic */ long _prev$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater _removedRef$volatile$FU;
    public static final /* synthetic */ long _removedRef$volatile$FU$offset;
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    static {
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        _next$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_next$volatile"));
        _prev$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
        _prev$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_prev$volatile"));
        _removedRef$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
        _removedRef$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_removedRef$volatile"));
    }

    public static LockFreeLinkedListNode findPrevNonRemoved(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            _prev$volatile$FU.getClass();
            lockFreeLinkedListNode = (LockFreeLinkedListNode) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(lockFreeLinkedListNode, _prev$volatile$FU$offset);
        }
        return lockFreeLinkedListNode;
    }

    public final boolean addLast(LockFreeLinkedListNode lockFreeLinkedListNode, int i) {
        LockFreeLinkedListNode prevNode;
        do {
            prevNode = getPrevNode();
            if (prevNode instanceof ListClosed) {
                return (((ListClosed) prevNode).forbiddenElementsBitmask & i) == 0 && prevNode.addLast(lockFreeLinkedListNode, i);
            }
        } while (!prevNode.addNext(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean addNext(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        _prev$volatile$FU.getClass();
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        unsafe.putObjectVolatile(lockFreeLinkedListNode, _prev$volatile$FU$offset, this);
        _next$volatile$FU.getClass();
        long j = _next$volatile$FU$offset;
        unsafe.putObjectVolatile(lockFreeLinkedListNode, j, lockFreeLinkedListNode2);
        while (true) {
            Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = this;
            LockFreeLinkedListNode lockFreeLinkedListNode4 = lockFreeLinkedListNode;
            LockFreeLinkedListNode lockFreeLinkedListNode5 = lockFreeLinkedListNode2;
            if (unsafe2.compareAndSwapObject(lockFreeLinkedListNode3, _next$volatile$FU$offset, lockFreeLinkedListNode5, lockFreeLinkedListNode4)) {
                lockFreeLinkedListNode4.finishAdd(lockFreeLinkedListNode5);
                return true;
            }
            if (unsafe2.getObjectVolatile(lockFreeLinkedListNode3, j) != lockFreeLinkedListNode5) {
                return false;
            }
            this = lockFreeLinkedListNode3;
            lockFreeLinkedListNode2 = lockFreeLinkedListNode5;
            lockFreeLinkedListNode = lockFreeLinkedListNode4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
    
        r9 = r4;
        r10 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void addOneIfEmpty(kotlinx.coroutines.NodeList r10) {
        /*
            r9 = this;
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.internal.LockFreeLinkedListNode._prev$volatile$FU
            r0.getClass()
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r1 = kotlinx.coroutines.internal.LockFreeLinkedListNode._prev$volatile$FU$offset
            r0.putObjectVolatile(r10, r1, r9)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.internal.LockFreeLinkedListNode._next$volatile$FU
            r1.getClass()
            long r1 = kotlinx.coroutines.internal.LockFreeLinkedListNode._next$volatile$FU$offset
            r0.putObjectVolatile(r10, r1, r9)
        L16:
            java.lang.Object r0 = r9.getNext()
            if (r0 == r9) goto L1d
            return
        L1d:
            sun.misc.Unsafe r3 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r5 = kotlinx.coroutines.internal.LockFreeLinkedListNode._next$volatile$FU$offset
            r7 = r9
            r4 = r9
            r8 = r10
            boolean r9 = r3.compareAndSwapObject(r4, r5, r7, r8)
            if (r9 == 0) goto L2e
            r8.finishAdd(r4)
            return
        L2e:
            java.lang.Object r9 = r3.getObjectVolatile(r4, r1)
            if (r9 == r4) goto L37
            r9 = r4
            r10 = r8
            goto L16
        L37:
            r9 = r4
            r10 = r8
            goto L1d
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.addOneIfEmpty(kotlinx.coroutines.NodeList):void");
    }

    public final LockFreeLinkedListNode correctPrev() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        Unsafe unsafe;
        loop0: while (true) {
            _prev$volatile$FU.getClass();
            Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _prev$volatile$FU$offset;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = (LockFreeLinkedListNode) unsafe2.getObjectVolatile(this, j);
            LockFreeLinkedListNode lockFreeLinkedListNode4 = null;
            lockFreeLinkedListNode = lockFreeLinkedListNode3;
            while (true) {
                _next$volatile$FU.getClass();
                if (lockFreeLinkedListNode == null) {
                    DBUtil$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                Unsafe unsafe3 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                long j2 = _next$volatile$FU$offset;
                Object objectVolatile = unsafe3.getObjectVolatile(lockFreeLinkedListNode, j2);
                if (objectVolatile != this) {
                    LockFreeLinkedListNode lockFreeLinkedListNode5 = lockFreeLinkedListNode3;
                    lockFreeLinkedListNode2 = this;
                    if (lockFreeLinkedListNode2.isRemoved()) {
                        return null;
                    }
                    if (!(objectVolatile instanceof Removed)) {
                        objectVolatile.getClass();
                        lockFreeLinkedListNode4 = lockFreeLinkedListNode;
                        lockFreeLinkedListNode = (LockFreeLinkedListNode) objectVolatile;
                    } else if (lockFreeLinkedListNode4 != null) {
                        LockFreeLinkedListNode lockFreeLinkedListNode6 = ((Removed) objectVolatile).ref;
                        do {
                            LockFreeLinkedListNode lockFreeLinkedListNode7 = lockFreeLinkedListNode;
                            unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                            boolean compareAndSwapObject = unsafe.compareAndSwapObject(lockFreeLinkedListNode4, _next$volatile$FU$offset, lockFreeLinkedListNode7, lockFreeLinkedListNode6);
                            lockFreeLinkedListNode = lockFreeLinkedListNode7;
                            if (compareAndSwapObject) {
                                this = lockFreeLinkedListNode2;
                                lockFreeLinkedListNode = lockFreeLinkedListNode4;
                                lockFreeLinkedListNode3 = lockFreeLinkedListNode5;
                                lockFreeLinkedListNode4 = null;
                            }
                        } while (unsafe.getObjectVolatile(lockFreeLinkedListNode4, j2) == lockFreeLinkedListNode);
                    } else {
                        if (lockFreeLinkedListNode == null) {
                            DBUtil$$ExternalSyntheticBUOutline0.m();
                            return null;
                        }
                        lockFreeLinkedListNode = (LockFreeLinkedListNode) unsafe3.getObjectVolatile(lockFreeLinkedListNode, j);
                    }
                    this = lockFreeLinkedListNode2;
                    lockFreeLinkedListNode3 = lockFreeLinkedListNode5;
                } else {
                    if (lockFreeLinkedListNode3 == lockFreeLinkedListNode) {
                        break;
                    }
                    while (true) {
                        Unsafe unsafe4 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        LockFreeLinkedListNode lockFreeLinkedListNode8 = this;
                        boolean compareAndSwapObject2 = unsafe4.compareAndSwapObject(lockFreeLinkedListNode8, _prev$volatile$FU$offset, lockFreeLinkedListNode3, lockFreeLinkedListNode);
                        LockFreeLinkedListNode lockFreeLinkedListNode9 = lockFreeLinkedListNode3;
                        lockFreeLinkedListNode2 = lockFreeLinkedListNode8;
                        if (compareAndSwapObject2) {
                            break loop0;
                        }
                        if (unsafe4.getObjectVolatile(lockFreeLinkedListNode2, j) != lockFreeLinkedListNode9) {
                            break;
                        }
                        this = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode9;
                    }
                }
            }
            this = lockFreeLinkedListNode2;
        }
        return lockFreeLinkedListNode;
    }

    public final void finishAdd(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        while (true) {
            _prev$volatile$FU.getClass();
            if (lockFreeLinkedListNode == null) {
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return;
            }
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _prev$volatile$FU$offset;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = (LockFreeLinkedListNode) unsafe.getObjectVolatile(lockFreeLinkedListNode, j);
            if (this.getNext() != lockFreeLinkedListNode) {
                return;
            }
            while (lockFreeLinkedListNode != null) {
                Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                lockFreeLinkedListNode2 = this;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = lockFreeLinkedListNode;
                if (unsafe2.compareAndSwapObject(lockFreeLinkedListNode4, _prev$volatile$FU$offset, lockFreeLinkedListNode3, lockFreeLinkedListNode2)) {
                    if (lockFreeLinkedListNode2.isRemoved()) {
                        lockFreeLinkedListNode4.correctPrev();
                        return;
                    }
                    return;
                } else {
                    if (lockFreeLinkedListNode4 == null) {
                        DBUtil$$ExternalSyntheticBUOutline0.m();
                        return;
                    }
                    lockFreeLinkedListNode = lockFreeLinkedListNode4;
                    if (unsafe2.getObjectVolatile(lockFreeLinkedListNode4, j) != lockFreeLinkedListNode3) {
                        break;
                    } else {
                        this = lockFreeLinkedListNode2;
                    }
                }
            }
            DBUtil$$ExternalSyntheticBUOutline0.m();
            return;
            this = lockFreeLinkedListNode2;
        }
    }

    public final Object getNext() {
        _next$volatile$FU.getClass();
        return AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _next$volatile$FU$offset);
    }

    public final LockFreeLinkedListNode getNextNode() {
        Object next = getNext();
        Removed removed = next instanceof Removed ? (Removed) next : null;
        if (removed != null) {
            return removed.ref;
        }
        next.getClass();
        return (LockFreeLinkedListNode) next;
    }

    public final LockFreeLinkedListNode getPrevNode() {
        LockFreeLinkedListNode correctPrev = correctPrev();
        if (correctPrev != null) {
            return correctPrev;
        }
        _prev$volatile$FU.getClass();
        return findPrevNonRemoved((LockFreeLinkedListNode) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _prev$volatile$FU$offset));
    }

    public boolean isRemoved() {
        return getNext() instanceof Removed;
    }

    public final LockFreeLinkedListNode removeOrNext() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        while (true) {
            Object next = this.getNext();
            if (next instanceof Removed) {
                return ((Removed) next).ref;
            }
            if (next == this) {
                return (LockFreeLinkedListNode) next;
            }
            next.getClass();
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) next;
            Removed removed = lockFreeLinkedListNode2.removed();
            while (true) {
                _next$volatile$FU.getClass();
                Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                long j = _next$volatile$FU$offset;
                lockFreeLinkedListNode = this;
                if (unsafe.compareAndSwapObject(lockFreeLinkedListNode, j, next, removed)) {
                    lockFreeLinkedListNode2.correctPrev();
                    return null;
                }
                if (unsafe.getObjectVolatile(lockFreeLinkedListNode, j) != next) {
                    break;
                }
                this = lockFreeLinkedListNode;
            }
            this = lockFreeLinkedListNode;
        }
    }

    public final Removed removed() {
        _removedRef$volatile$FU.getClass();
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        long j = _removedRef$volatile$FU$offset;
        Removed removed = (Removed) unsafe.getObjectVolatile(this, j);
        if (removed != null) {
            return removed;
        }
        Removed removed2 = new Removed(this);
        unsafe.putObjectVolatile(this, j, removed2);
        return removed2;
    }

    public String toString() {
        return new LockFreeLinkedListNode$toString$1(1, 0, JobKt.class, this, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;") + '@' + JobKt.getHexAddress(this);
    }
}
