package androidx.lifecycle.compose;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ComposeLifecycleOwner implements LifecycleOwner {
    public final LifecycleRegistry lifecycleRegistry = new LifecycleRegistry(this, true);
    public Lifecycle.State maxLifecycleState;
    public Lifecycle.State parentLifecycleState;

    public ComposeLifecycleOwner() {
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.parentLifecycleState = state;
        this.maxLifecycleState = state;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.lifecycleRegistry;
    }

    public final void updateLifecycleState() {
        Lifecycle.State state = this.parentLifecycleState.ordinal() < this.maxLifecycleState.ordinal() ? this.parentLifecycleState : this.maxLifecycleState;
        LifecycleRegistry lifecycleRegistry = this.lifecycleRegistry;
        if (lifecycleRegistry.state == Lifecycle.State.INITIALIZED && state == Lifecycle.State.DESTROYED) {
            return;
        }
        lifecycleRegistry.setCurrentState(state);
    }
}
