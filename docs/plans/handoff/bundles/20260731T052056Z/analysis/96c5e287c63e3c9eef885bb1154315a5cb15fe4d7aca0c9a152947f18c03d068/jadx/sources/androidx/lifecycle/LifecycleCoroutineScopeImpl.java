package androidx.lifecycle;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LifecycleCoroutineScopeImpl implements LifecycleEventObserver, CoroutineScope {
    public final CoroutineContext coroutineContext;
    public final LifecycleRegistry lifecycle;

    public LifecycleCoroutineScopeImpl(LifecycleRegistry lifecycleRegistry, CoroutineContext coroutineContext) {
        coroutineContext.getClass();
        this.lifecycle = lifecycleRegistry;
        this.coroutineContext = coroutineContext;
        if (lifecycleRegistry.state == Lifecycle$State.DESTROYED) {
            AwaitKt.cancel(coroutineContext, (CancellationException) null);
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        if (lifecycleRegistry.state.compareTo(Lifecycle$State.DESTROYED) <= 0) {
            lifecycleRegistry.removeObserver(this);
            AwaitKt.cancel(this.coroutineContext, (CancellationException) null);
        }
    }
}
