package coil3.compose.internal;

import _COROUTINE.ArtificialStackFramesUnsafe;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeferredDispatchCoroutineDispatcher extends CoroutineDispatcher {
    public static final /* synthetic */ long _unconfined$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(DeferredDispatchCoroutineDispatcher.class.getDeclaredField("_unconfined$volatile"));
    public volatile /* synthetic */ int _unconfined$volatile = 1;
    public final CoroutineDispatcher delegate;

    public DeferredDispatchCoroutineDispatcher(CoroutineDispatcher coroutineDispatcher) {
        this.delegate = coroutineDispatcher;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        getCurrentDispatcher().dispatch(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        getCurrentDispatcher().dispatchYield(coroutineContext, runnable);
    }

    public final CoroutineDispatcher getCurrentDispatcher() {
        return ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, _unconfined$volatile$FU$offset) == 1 ? Dispatchers.Unconfined : this.delegate;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        return getCurrentDispatcher().isDispatchNeeded(coroutineContext);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i) {
        return getCurrentDispatcher().limitedParallelism(i);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "DeferredDispatchCoroutineDispatcher(delegate=" + this.delegate + ")";
    }
}
