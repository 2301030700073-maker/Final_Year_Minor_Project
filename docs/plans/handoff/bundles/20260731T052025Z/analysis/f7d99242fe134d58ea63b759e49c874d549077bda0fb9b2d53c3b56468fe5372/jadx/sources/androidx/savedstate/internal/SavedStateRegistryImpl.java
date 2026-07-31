package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda0;
import androidx.savedstate.SavedStateRegistryOwner;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.LinkedHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedStateRegistryImpl {
    public boolean attached;
    public boolean isRestored;
    public final ImageLoader$Builder$$ExternalSyntheticLambda1 onAttach;
    public final SavedStateRegistryOwner owner;
    public Bundle restoredState;
    public final VerboseLogger lock = new VerboseLogger();
    public final LinkedHashMap keyToProviders = new LinkedHashMap();
    public boolean isAllowingSavingState = true;

    public SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, ImageLoader$Builder$$ExternalSyntheticLambda1 imageLoader$Builder$$ExternalSyntheticLambda1) {
        this.owner = savedStateRegistryOwner;
        this.onAttach = imageLoader$Builder$$ExternalSyntheticLambda1;
    }

    public final void performAttach() {
        SavedStateRegistryOwner savedStateRegistryOwner = this.owner;
        if (((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state != Lifecycle.State.INITIALIZED) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Restarter must be created only during owner's initialization stage");
        } else {
            if (this.attached) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("SavedStateRegistry was already attached.");
                return;
            }
            this.onAttach.invoke();
            savedStateRegistryOwner.getLifecycle().addObserver(new FragmentNavigator$$ExternalSyntheticLambda0(3, this));
            this.attached = true;
        }
    }
}
