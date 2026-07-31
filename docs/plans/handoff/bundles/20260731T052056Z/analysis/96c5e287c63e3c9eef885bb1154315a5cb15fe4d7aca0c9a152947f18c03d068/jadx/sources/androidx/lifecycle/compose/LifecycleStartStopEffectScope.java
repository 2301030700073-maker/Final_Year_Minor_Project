package androidx.lifecycle.compose;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LifecycleStartStopEffectScope implements LifecycleOwner {
    public final LifecycleRegistry lifecycle;

    public LifecycleStartStopEffectScope(LifecycleRegistry lifecycleRegistry) {
        this.lifecycle = lifecycleRegistry;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        return this.lifecycle;
    }
}
