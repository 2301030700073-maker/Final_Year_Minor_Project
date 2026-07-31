package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Delay {
    DisposableHandle invokeOnTimeout(long j, TimeoutCoroutine timeoutCoroutine, CoroutineContext coroutineContext);

    void scheduleResumeAfterDelay(long j, CancellableContinuationImpl cancellableContinuationImpl);
}
