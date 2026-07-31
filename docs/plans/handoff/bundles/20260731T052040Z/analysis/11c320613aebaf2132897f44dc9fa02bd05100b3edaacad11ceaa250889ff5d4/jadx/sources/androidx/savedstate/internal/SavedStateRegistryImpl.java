package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt$$ExternalSyntheticLambda0;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.transition.Transition;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.LinkedHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateRegistryImpl {
    public boolean attached;
    public boolean isRestored;
    public final Worker$$ExternalSyntheticLambda0 onAttach;
    public final SavedStateRegistryOwner owner;
    public Bundle restoredState;
    public final Transition.AnonymousClass1 lock = new Transition.AnonymousClass1(21);
    public final LinkedHashMap keyToProviders = new LinkedHashMap();
    public boolean isAllowingSavingState = true;

    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, Worker$$ExternalSyntheticLambda0 worker$$ExternalSyntheticLambda0) {
        this.owner = savedStateRegistryOwner;
        this.onAttach = worker$$ExternalSyntheticLambda0;
    }

    public final void performAttach() {
        SavedStateRegistryOwner savedStateRegistryOwner = this.owner;
        if (((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state != Lifecycle.State.INITIALIZED) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.attached) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("SavedStateRegistry was already attached.");
                return;
            }
            this.onAttach.invoke();
            savedStateRegistryOwner.getLifecycle().addObserver(new RememberLifecycleOwnerKt$$ExternalSyntheticLambda0(this, 1));
            this.attached = true;
        }
    }
}
