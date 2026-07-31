package kotlinx.coroutines;

import kotlin.collections.ArrayDeque;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EventLoop extends CoroutineDispatcher {
    public static final /* synthetic */ int $r8$clinit = 0;
    public boolean shared;
    public ArrayDeque unconfinedQueue;
    public long useCount;

    public final void decrementUseCount(boolean z) {
        long j = this.useCount - (z ? 4294967296L : 1L);
        this.useCount = j;
        if (j <= 0 && this.shared) {
            shutdown();
        }
    }

    public final void dispatchUnconfined(DispatchedTask dispatchedTask) {
        ArrayDeque arrayDeque = this.unconfinedQueue;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            this.unconfinedQueue = arrayDeque;
        }
        arrayDeque.addLast(dispatchedTask);
    }

    public final void incrementUseCount(boolean z) {
        this.useCount = (z ? 4294967296L : 1L) + this.useCount;
        if (z) {
            return;
        }
        this.shared = true;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i) {
        InlineList.checkParallelism(i);
        return this;
    }

    public abstract long processNextEvent();

    public final boolean processUnconfinedEvent() {
        ArrayDeque arrayDeque = this.unconfinedQueue;
        if (arrayDeque == null) {
            return false;
        }
        DispatchedTask dispatchedTask = (DispatchedTask) (arrayDeque.isEmpty() ? null : arrayDeque.removeFirst());
        if (dispatchedTask == null) {
            return false;
        }
        dispatchedTask.run();
        return true;
    }

    public abstract void shutdown();
}
