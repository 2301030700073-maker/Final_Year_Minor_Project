package androidx.glance.session;

import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.work.OperationKt;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda28;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InteractiveFrameClock implements MonotonicFrameClock {
    public CancellableContinuationImpl interactiveCoroutine;
    public long lastFrame;
    public final CoroutineScope scope;
    public final BroadcastFrameClock frameClock = new BroadcastFrameClock(new LayoutNode$_foldedChildren$1(20, this));
    public final Object lock = new Object();
    public int currentHz = 5;

    public InteractiveFrameClock(TimerScopeKt$withTimer$2$1$blockScope$1 timerScopeKt$withTimer$2$1$blockScope$1) {
        this.scope = timerScopeKt$withTimer$2$1$blockScope$1;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return OperationKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return NeverEqualPolicy.$$INSTANCE;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return OperationKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return OperationKt.plus(this, coroutineContext);
    }

    public final void sendFrame$1(long j) {
        ((Request.Builder) this.frameClock.queue).flushAndDispatchAwaiters(new WorkSpecDao_Impl$$ExternalSyntheticLambda28(j, 3));
        synchronized (this.lock) {
            this.lastFrame = j;
        }
    }

    public final void stopInteractive() {
        synchronized (this.lock) {
            CancellableContinuationImpl cancellableContinuationImpl = this.interactiveCoroutine;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.cancel(null);
            }
        }
    }

    @Override // androidx.compose.runtime.MonotonicFrameClock
    public final Object withFrameNanos(Function1 function1, Continuation continuation) {
        return this.frameClock.withFrameNanos(function1, continuation);
    }
}
