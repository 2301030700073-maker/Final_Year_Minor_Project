package androidx.compose.runtime;

import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import coil3.ComponentRegistry;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BroadcastFrameClock implements MonotonicFrameClock {
    public final Recomposer$$ExternalSyntheticLambda1 onNewAwaiters;
    public final ComponentRegistry.Builder queue = new ComponentRegistry.Builder(2);

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class FrameAwaiter extends AwaiterQueue$Awaiter {
        public CancellableContinuationImpl continuation;
        public Function1 onFrame;

        @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
        public final void cancel() {
            this.onFrame = null;
            this.continuation = null;
        }

        @Override // androidx.compose.runtime.internal.AwaiterQueue$Awaiter
        public final void resumeWithException(Throwable th) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.resumeWith(ResultKt.createFailure(th));
            }
        }
    }

    public BroadcastFrameClock(Recomposer$$ExternalSyntheticLambda1 recomposer$$ExternalSyntheticLambda1) {
        this.onNewAwaiters = recomposer$$ExternalSyntheticLambda1;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return AppKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return NeverEqualPolicy.$$INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return AppKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return AppKt.plus(this, coroutineContext);
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object withFrameNanos(Function1 function1, ContinuationImpl continuationImpl) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuationImpl));
        cancellableContinuationImpl.initCancellability();
        FrameAwaiter frameAwaiter = new FrameAwaiter();
        frameAwaiter.continuation = cancellableContinuationImpl;
        frameAwaiter.onFrame = function1;
        cancellableContinuationImpl.invokeOnCancellation(new CallsKt$await$2$1(this.queue.addAwaiter(frameAwaiter, this.onNewAwaiters), 1));
        return cancellableContinuationImpl.getResult();
    }
}
