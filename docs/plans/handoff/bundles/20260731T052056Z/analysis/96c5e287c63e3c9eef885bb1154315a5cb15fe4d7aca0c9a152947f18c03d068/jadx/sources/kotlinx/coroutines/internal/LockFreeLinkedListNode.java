package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.compose.material3.TextFieldDefaults$Container$1;
import kotlinx.coroutines.AwaitKt;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LockFreeLinkedListNode {
    public static final /* synthetic */ long _next$volatile$FU$offset;
    public static final /* synthetic */ long _prev$volatile$FU$offset;
    public static final /* synthetic */ long _removedRef$volatile$FU$offset;
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        _next$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_next$volatile"));
        _prev$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_prev$volatile"));
        _removedRef$volatile$FU$offset = unsafe.objectFieldOffset(LockFreeLinkedListNode.class.getDeclaredField("_removedRef$volatile"));
    }

    public final boolean addLast(LockFreeLinkedListNode lockFreeLinkedListNode, int i) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        LockFreeLinkedListNode lockFreeLinkedListNode3;
        while (true) {
            LockFreeLinkedListNode prevNode = this.getPrevNode();
            if (prevNode instanceof ListClosed) {
                return (((ListClosed) prevNode).forbiddenElementsBitmask & i) == 0 && prevNode.addLast(lockFreeLinkedListNode, i);
            }
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            unsafe.putObjectVolatile(lockFreeLinkedListNode, _prev$volatile$FU$offset, prevNode);
            long j = _next$volatile$FU$offset;
            unsafe.putObjectVolatile(lockFreeLinkedListNode, j, this);
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                lockFreeLinkedListNode2 = this;
                lockFreeLinkedListNode3 = lockFreeLinkedListNode;
                if (unsafe2.compareAndSwapObject(prevNode, _next$volatile$FU$offset, lockFreeLinkedListNode2, lockFreeLinkedListNode3)) {
                    lockFreeLinkedListNode3.finishAdd(lockFreeLinkedListNode2);
                    return true;
                }
                if (unsafe2.getObjectVolatile(prevNode, j) != lockFreeLinkedListNode2) {
                    break;
                }
                this = lockFreeLinkedListNode2;
                lockFreeLinkedListNode = lockFreeLinkedListNode3;
            }
            this = lockFreeLinkedListNode2;
            lockFreeLinkedListNode = lockFreeLinkedListNode3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x002a, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.internal.LockFreeLinkedListNode correctPrev() {
        /*
            r15 = this;
        L0:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r1 = kotlinx.coroutines.internal.LockFreeLinkedListNode._prev$volatile$FU$offset
            java.lang.Object r0 = r0.getObjectVolatile(r15, r1)
            r7 = r0
            kotlinx.coroutines.internal.LockFreeLinkedListNode r7 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r7
            r0 = 0
            r9 = r0
            r8 = r7
        Le:
            if (r8 == 0) goto L7b
            sun.misc.Unsafe r3 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r4 = kotlinx.coroutines.internal.LockFreeLinkedListNode._next$volatile$FU$offset
            java.lang.Object r6 = r3.getObjectVolatile(r8, r4)
            if (r6 != r15) goto L36
            if (r7 != r8) goto L1d
            goto L2a
        L1d:
            sun.misc.Unsafe r3 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r5 = kotlinx.coroutines.internal.LockFreeLinkedListNode._prev$volatile$FU$offset
            r4 = r15
            boolean r15 = r3.compareAndSwapObject(r4, r5, r7, r8)
            r14 = r7
            r7 = r4
            if (r15 == 0) goto L2b
        L2a:
            return r8
        L2b:
            java.lang.Object r15 = r3.getObjectVolatile(r7, r1)
            if (r15 == r14) goto L33
        L31:
            r15 = r7
            goto L0
        L33:
            r15 = r7
            r7 = r14
            goto L1d
        L36:
            r14 = r7
            r7 = r15
            boolean r15 = r7.isRemoved()
            if (r15 == 0) goto L3f
            return r0
        L3f:
            boolean r15 = r6 instanceof kotlinx.coroutines.internal.Removed
            if (r15 == 0) goto L72
            if (r9 == 0) goto L62
            kotlinx.coroutines.internal.Removed r6 = (kotlinx.coroutines.internal.Removed) r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r13 = r6.ref
        L49:
            r12 = r8
            sun.misc.Unsafe r8 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r10 = kotlinx.coroutines.internal.LockFreeLinkedListNode._next$volatile$FU$offset
            boolean r15 = r8.compareAndSwapObject(r9, r10, r12, r13)
            r3 = r8
            r8 = r12
            if (r15 == 0) goto L5b
            r15 = r7
            r8 = r9
            r7 = r14
            r9 = r0
            goto Le
        L5b:
            java.lang.Object r15 = r3.getObjectVolatile(r9, r4)
            if (r15 == r8) goto L49
            goto L31
        L62:
            if (r8 == 0) goto L6e
            java.lang.Object r15 = r3.getObjectVolatile(r8, r1)
            r8 = r15
            kotlinx.coroutines.internal.LockFreeLinkedListNode r8 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r8
        L6b:
            r15 = r7
            r7 = r14
            goto Le
        L6e:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$1()
            return r0
        L72:
            r6.getClass()
            r15 = r6
            kotlinx.coroutines.internal.LockFreeLinkedListNode r15 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r15
            r9 = r8
            r8 = r15
            goto L6b
        L7b:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m$1()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.LockFreeLinkedListNode.correctPrev():kotlinx.coroutines.internal.LockFreeLinkedListNode");
    }

    public final void finishAdd(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _prev$volatile$FU$offset;
            LockFreeLinkedListNode lockFreeLinkedListNode3 = (LockFreeLinkedListNode) unsafe.getObjectVolatile(lockFreeLinkedListNode, j);
            if (this.getNext() != lockFreeLinkedListNode) {
                return;
            }
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                lockFreeLinkedListNode2 = this;
                LockFreeLinkedListNode lockFreeLinkedListNode4 = lockFreeLinkedListNode;
                if (unsafe2.compareAndSwapObject(lockFreeLinkedListNode4, _prev$volatile$FU$offset, lockFreeLinkedListNode3, lockFreeLinkedListNode2)) {
                    if (lockFreeLinkedListNode2.isRemoved()) {
                        lockFreeLinkedListNode4.correctPrev();
                        return;
                    }
                    return;
                } else {
                    lockFreeLinkedListNode = lockFreeLinkedListNode4;
                    if (unsafe2.getObjectVolatile(lockFreeLinkedListNode4, j) != lockFreeLinkedListNode3) {
                        break;
                    } else {
                        this = lockFreeLinkedListNode2;
                    }
                }
            }
            this = lockFreeLinkedListNode2;
        }
    }

    public final Object getNext() {
        return ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _next$volatile$FU$offset);
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
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = _prev$volatile$FU$offset;
        Object objectVolatile = unsafe.getObjectVolatile(this, j);
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) objectVolatile;
            if (!lockFreeLinkedListNode.isRemoved()) {
                return lockFreeLinkedListNode;
            }
            objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(lockFreeLinkedListNode, j);
        }
    }

    public boolean isRemoved() {
        return getNext() instanceof Removed;
    }

    public String toString() {
        return new TextFieldDefaults$Container$1(1, 8, AwaitKt.class, this, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;") + '@' + AwaitKt.getHexAddress(this);
    }
}
