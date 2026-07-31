package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableTransitionState extends TransitionState {
    public final ParcelableSnapshotMutableState currentState$delegate;

    public MutableTransitionState(Object obj) {
        this.currentState$delegate = Updater.mutableStateOf$default(obj);
        Updater.mutableStateOf$default(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object getCurrentState() {
        return this.currentState$delegate.getValue();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void setCurrentState$animation_core(Object obj) {
        this.currentState$delegate.setValue(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void transitionRemoved$animation_core() {
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void transitionConfigured$animation_core(Transition transition) {
    }
}
