package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.room.InvalidationTracker$implementation$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InvokeOnCancelling extends JobNode {
    public static final /* synthetic */ long _invoked$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(InvokeOnCancelling.class.getDeclaredField("_invoked$volatile"));
    private volatile /* synthetic */ int _invoked$volatile;
    public final InvalidationTracker$implementation$1 handler;

    public InvokeOnCancelling(InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        this.handler = invalidationTracker$implementation$1;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        if (ArtificialStackFramesUnsafe.unsafe.compareAndSwapInt(this, _invoked$volatile$FU$offset, 0, 1)) {
            this.handler.invoke(th);
        }
    }
}
