package kotlinx.coroutines.internal;

import com.fsck.k9.mailstore.LocalStore;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ConcurrentLinkedListNode {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _next$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ long _next$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater _prev$volatile$FU;
    public static final /* synthetic */ long _prev$volatile$FU$offset;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    static {
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        _next$volatile$FU$offset = unsafe.objectFieldOffset(ConcurrentLinkedListNode.class.getDeclaredField("_next$volatile"));
        _prev$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
        _prev$volatile$FU$offset = unsafe.objectFieldOffset(ConcurrentLinkedListNode.class.getDeclaredField("_prev$volatile"));
    }

    public ConcurrentLinkedListNode(Segment segment) {
        this._prev$volatile = segment;
    }

    public final void cleanPrev() {
        _prev$volatile$FU.getClass();
        AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, _prev$volatile$FU$offset, (Object) null);
    }

    public final ConcurrentLinkedListNode getAliveSegmentLeft() {
        ConcurrentLinkedListNode prev = getPrev();
        while (prev != null && prev.isRemoved()) {
            _prev$volatile$FU.getClass();
            prev = (ConcurrentLinkedListNode) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(prev, _prev$volatile$FU$offset);
        }
        return prev;
    }

    public final ConcurrentLinkedListNode getNext() {
        Object nextOrClosed = getNextOrClosed();
        if (nextOrClosed == InlineList.CLOSED) {
            return null;
        }
        return (ConcurrentLinkedListNode) nextOrClosed;
    }

    public final Object getNextOrClosed() {
        _next$volatile$FU.getClass();
        return AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _next$volatile$FU$offset);
    }

    public final ConcurrentLinkedListNode getPrev() {
        _prev$volatile$FU.getClass();
        return (ConcurrentLinkedListNode) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _prev$volatile$FU$offset);
    }

    public abstract boolean isRemoved();

    public final boolean markAsClosed() {
        LocalStore.AnonymousClass8 anonymousClass8 = InlineList.CLOSED;
        while (true) {
            _next$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _next$volatile$FU$offset;
            ConcurrentLinkedListNode concurrentLinkedListNode = this;
            if (unsafe.compareAndSwapObject(concurrentLinkedListNode, j, (Object) null, anonymousClass8)) {
                return true;
            }
            if (unsafe.getObjectVolatile(concurrentLinkedListNode, j) != null) {
                return false;
            }
            this = concurrentLinkedListNode;
        }
    }

    public final void remove() {
        ConcurrentLinkedListNode concurrentLinkedListNode;
        Unsafe unsafe;
        if (getNext() == null) {
            return;
        }
        while (true) {
            ConcurrentLinkedListNode aliveSegmentLeft = getAliveSegmentLeft();
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
                _prev$volatile$FU.getClass();
                Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                long j = _prev$volatile$FU$offset;
                Object objectVolatile = unsafe2.getObjectVolatile(concurrentLinkedListNode, j);
                ConcurrentLinkedListNode concurrentLinkedListNode2 = ((ConcurrentLinkedListNode) objectVolatile) == null ? null : aliveSegmentLeft;
                do {
                    unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                    if (unsafe.compareAndSwapObject(concurrentLinkedListNode, _prev$volatile$FU$offset, objectVolatile, concurrentLinkedListNode2)) {
                        break;
                    }
                } while (unsafe.getObjectVolatile(concurrentLinkedListNode, j) == objectVolatile);
            }
            if (aliveSegmentLeft != null) {
                _next$volatile$FU.getClass();
                unsafe.putObjectVolatile(aliveSegmentLeft, _next$volatile$FU$offset, concurrentLinkedListNode);
            }
            if (!concurrentLinkedListNode.isRemoved() || concurrentLinkedListNode.getNext() == null) {
                if (aliveSegmentLeft == null || !aliveSegmentLeft.isRemoved()) {
                    return;
                }
            }
        }
    }

    public final boolean trySetNext(Segment segment) {
        while (true) {
            _next$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _next$volatile$FU$offset;
            ConcurrentLinkedListNode concurrentLinkedListNode = this;
            Segment segment2 = segment;
            if (unsafe.compareAndSwapObject(concurrentLinkedListNode, j, (Object) null, segment2)) {
                return true;
            }
            if (unsafe.getObjectVolatile(concurrentLinkedListNode, j) != null) {
                return false;
            }
            this = concurrentLinkedListNode;
            segment = segment2;
        }
    }
}
