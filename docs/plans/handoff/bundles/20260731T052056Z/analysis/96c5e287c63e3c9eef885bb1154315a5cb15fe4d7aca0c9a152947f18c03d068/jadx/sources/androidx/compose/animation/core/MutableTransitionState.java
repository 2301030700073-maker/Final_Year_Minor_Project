package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableTransitionState extends BasePreferenceLoader {
    public final ParcelableSnapshotMutableState currentState$delegate;
    public final ParcelableSnapshotMutableState targetState$delegate;

    public MutableTransitionState(Object obj) {
        super(1);
        this.currentState$delegate = Updater.mutableStateOf$default(obj);
        this.targetState$delegate = Updater.mutableStateOf$default(obj);
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final Object getCurrentState() {
        return this.currentState$delegate.getValue();
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final Object getTargetState() {
        return this.targetState$delegate.getValue();
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void setCurrentState$animation_core(Object obj) {
        this.currentState$delegate.setValue(obj);
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void transitionRemoved$animation_core() {
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final void transitionConfigured$animation_core(Transition transition) {
    }
}
