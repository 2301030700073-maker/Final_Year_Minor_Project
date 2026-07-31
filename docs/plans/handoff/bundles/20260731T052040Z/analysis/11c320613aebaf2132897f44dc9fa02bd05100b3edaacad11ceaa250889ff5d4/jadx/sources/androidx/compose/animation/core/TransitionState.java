package androidx.compose.animation.core;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TransitionState {
    public final ParcelableSnapshotMutableState isRunning$delegate = Updater.mutableStateOf$default(Boolean.FALSE);

    public abstract Object getCurrentState();

    public abstract void setCurrentState$animation_core(Object obj);

    public abstract void transitionConfigured$animation_core(Transition transition);

    public abstract void transitionRemoved$animation_core();
}
