package kotlinx.coroutines.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.NotCompleted;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Segment extends ConcurrentLinkedListNode implements NotCompleted {
    public static final /* synthetic */ AtomicIntegerFieldUpdater cleanedAndPointers$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Segment.class, "cleanedAndPointers$volatile");
    public static final /* synthetic */ long cleanedAndPointers$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(Segment.class.getDeclaredField("cleanedAndPointers$volatile"));
    private volatile /* synthetic */ int cleanedAndPointers$volatile;
    public final long id;

    public Segment(long j, Segment segment, int i) {
        super(segment);
        this.id = j;
        this.cleanedAndPointers$volatile = i << 16;
    }

    public final boolean decPointers$kotlinx_coroutines_core() {
        return cleanedAndPointers$volatile$FU.addAndGet(this, -65536) == getNumberOfSlots() && getNext() != null;
    }

    public abstract int getNumberOfSlots();

    @Override // kotlinx.coroutines.internal.ConcurrentLinkedListNode
    public final boolean isRemoved() {
        return ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, cleanedAndPointers$volatile$FU$offset) == getNumberOfSlots() && getNext() != null;
    }

    public abstract void onCancellation(int i, CoroutineContext coroutineContext);

    public final void onSlotCleaned() {
        if (cleanedAndPointers$volatile$FU.incrementAndGet(this) == getNumberOfSlots()) {
            remove();
        }
    }

    public final boolean tryIncPointers$kotlinx_coroutines_core() {
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = cleanedAndPointers$volatile$FU$offset;
            int intVolatile = unsafe.getIntVolatile(this, j);
            if (intVolatile == this.getNumberOfSlots() && this.getNext() != null) {
                return false;
            }
            Segment segment = this;
            if (unsafe.compareAndSwapInt(segment, j, intVolatile, intVolatile + 65536)) {
                return true;
            }
            this = segment;
        }
    }
}
