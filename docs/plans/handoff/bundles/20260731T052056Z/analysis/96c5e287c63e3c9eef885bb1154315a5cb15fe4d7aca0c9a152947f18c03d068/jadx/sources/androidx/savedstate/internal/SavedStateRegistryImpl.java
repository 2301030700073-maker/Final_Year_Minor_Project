package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle$State;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda1;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.AutoMigration_14_15;
import java.util.LinkedHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedStateRegistryImpl {
    public boolean attached;
    public boolean isRestored;
    public final Worker$$ExternalSyntheticLambda0 onAttach;
    public final SavedStateRegistryOwner owner;
    public Bundle restoredState;
    public final AutoMigration_14_15 lock = new AutoMigration_14_15(20);
    public final LinkedHashMap keyToProviders = new LinkedHashMap();
    public boolean isAllowingSavingState = true;

    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, Worker$$ExternalSyntheticLambda0 worker$$ExternalSyntheticLambda0) {
        this.owner = savedStateRegistryOwner;
        this.onAttach = worker$$ExternalSyntheticLambda0;
    }

    public final void performAttach() {
        SavedStateRegistryOwner savedStateRegistryOwner = this.owner;
        if (savedStateRegistryOwner.getLifecycle().state != Lifecycle$State.INITIALIZED) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.attached) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("SavedStateRegistry was already attached.");
                return;
            }
            this.onAttach.invoke();
            savedStateRegistryOwner.getLifecycle().addObserver(new NavControllerImpl$$ExternalSyntheticLambda1(2, this));
            this.attached = true;
        }
    }
}
