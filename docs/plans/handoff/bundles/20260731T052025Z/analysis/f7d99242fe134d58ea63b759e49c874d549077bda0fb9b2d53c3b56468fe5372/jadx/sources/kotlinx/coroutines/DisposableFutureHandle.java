package kotlinx.coroutines;

import java.util.concurrent.ScheduledFuture;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisposableFutureHandle implements DisposableHandle {
    public final ScheduledFuture future;

    public DisposableFutureHandle(ScheduledFuture scheduledFuture) {
        this.future = scheduledFuture;
    }

    @Override // kotlinx.coroutines.DisposableHandle
    public final void dispose() {
        this.future.cancel(false);
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.future + ']';
    }
}
