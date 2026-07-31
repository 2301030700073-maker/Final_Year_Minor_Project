package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SubscriptionCountStateFlow extends SharedFlowImpl implements StateFlow {
    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Integer valueOf;
        synchronized (this) {
            Object[] objArr = this.buffer;
            objArr.getClass();
            valueOf = Integer.valueOf(((Number) objArr[((int) ((this.replayIndex + ((int) ((getHead() + this.bufferSize) - this.replayIndex))) - 1)) & (objArr.length - 1)]).intValue());
        }
        return valueOf;
    }

    public final void increment(int i) {
        synchronized (this) {
            Object[] objArr = this.buffer;
            objArr.getClass();
            tryEmit(Integer.valueOf(((Number) objArr[((int) ((this.replayIndex + ((int) ((getHead() + this.bufferSize) - this.replayIndex))) - 1)) & (objArr.length - 1)]).intValue() + i));
        }
    }
}
