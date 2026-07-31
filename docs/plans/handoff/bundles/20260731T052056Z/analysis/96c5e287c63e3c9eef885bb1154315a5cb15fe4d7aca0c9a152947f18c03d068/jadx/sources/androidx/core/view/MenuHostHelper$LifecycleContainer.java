package androidx.core.view;

import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleRegistry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MenuHostHelper$LifecycleContainer {
    public final LifecycleRegistry mLifecycle;
    public LifecycleEventObserver mObserver;

    public MenuHostHelper$LifecycleContainer(LifecycleRegistry lifecycleRegistry, LifecycleEventObserver lifecycleEventObserver) {
        this.mLifecycle = lifecycleRegistry;
        this.mObserver = lifecycleEventObserver;
        lifecycleRegistry.addObserver(lifecycleEventObserver);
    }
}
