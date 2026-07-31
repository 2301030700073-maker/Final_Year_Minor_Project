package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Delay {
    DisposableHandle invokeOnTimeout(long j, TimeoutCoroutine timeoutCoroutine, CoroutineContext coroutineContext);

    void scheduleResumeAfterDelay(long j, CancellableContinuationImpl cancellableContinuationImpl);
}
