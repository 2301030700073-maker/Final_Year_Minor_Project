package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ConcurrentLinkedListNode {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static final /* synthetic */ long _next$volatile$FU$offset;
    public static final /* synthetic */ long _prev$volatile$FU$offset;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        _next$volatile$FU$offset = unsafe.objectFieldOffset(ConcurrentLinkedListNode.class.getDeclaredField("_next$volatile"));
        _prev$volatile$FU$offset = unsafe.objectFieldOffset(ConcurrentLinkedListNode.class.getDeclaredField("_prev$volatile"));
    }

    public ConcurrentLinkedListNode(Segment segment) {
        this._prev$volatile = segment;
    }

    public final void cleanPrev() {
        ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(this, _prev$volatile$FU$offset, (Object) null);
    }

    public final ConcurrentLinkedListNode getNext() {
        Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _next$volatile$FU$offset);
        if (objectVolatile == InlineList.CLOSED) {
            return null;
        }
        return (ConcurrentLinkedListNode) objectVolatile;
    }

    public abstract boolean isRemoved();

    public final void remove() {
        ConcurrentLinkedListNode concurrentLinkedListNode;
        Unsafe unsafe;
        if (getNext() == null) {
            return;
        }
        while (true) {
            Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
            long j = _prev$volatile$FU$offset;
            ConcurrentLinkedListNode concurrentLinkedListNode2 = (ConcurrentLinkedListNode) unsafe2.getObjectVolatile(this, j);
            while (concurrentLinkedListNode2 != null && concurrentLinkedListNode2.isRemoved()) {
                concurrentLinkedListNode2 = (ConcurrentLinkedListNode) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(concurrentLinkedListNode2, j);
            }
            ConcurrentLinkedListNode next = getNext();
            next.getClass();
            do {
                concurrentLinkedListNode = next;
                if (!concurrentLinkedListNode.isRemoved()) {
                    break;
                } else {
                    next = concurrentLinkedListNode.getNext();
                }
            } while (next != null);
            while (true) {
                Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(concurrentLinkedListNode, j);
                ConcurrentLinkedListNode concurrentLinkedListNode3 = ((ConcurrentLinkedListNode) objectVolatile) == null ? null : concurrentLinkedListNode2;
                do {
                    unsafe = ArtificialStackFramesUnsafe.unsafe;
                    if (unsafe.compareAndSwapObject(concurrentLinkedListNode, _prev$volatile$FU$offset, objectVolatile, concurrentLinkedListNode3)) {
                        break;
                    }
                } while (unsafe.getObjectVolatile(concurrentLinkedListNode, j) == objectVolatile);
            }
            if (concurrentLinkedListNode2 != null) {
                unsafe.putObjectVolatile(concurrentLinkedListNode2, _next$volatile$FU$offset, concurrentLinkedListNode);
            }
            if (!concurrentLinkedListNode.isRemoved() || concurrentLinkedListNode.getNext() == null) {
                if (concurrentLinkedListNode2 == null || !concurrentLinkedListNode2.isRemoved()) {
                    return;
                }
            }
        }
    }
}
