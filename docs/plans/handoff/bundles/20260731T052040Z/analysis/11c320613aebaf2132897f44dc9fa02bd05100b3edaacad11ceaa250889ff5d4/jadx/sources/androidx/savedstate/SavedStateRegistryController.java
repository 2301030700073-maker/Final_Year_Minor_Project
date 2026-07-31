package androidx.savedstate;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import java.util.Arrays;
import java.util.Map;
import kotlin.Pair;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateRegistryController {
    public final SavedStateRegistryImpl impl;
    public final SavedStateRegistry savedStateRegistry;

    public SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.impl = savedStateRegistryImpl;
        this.savedStateRegistry = new SavedStateRegistry(savedStateRegistryImpl);
    }

    public final void performRestore(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.impl;
        SavedStateRegistryOwner savedStateRegistryOwner = savedStateRegistryImpl.owner;
        if (!savedStateRegistryImpl.attached) {
            savedStateRegistryImpl.performAttach();
        }
        if (((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state.compareTo(Lifecycle.State.STARTED) >= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m(((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state, "performRestore cannot be called when owner is ");
            return;
        }
        if (savedStateRegistryImpl.isRestored) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("SavedStateRegistry was already restored.");
            return;
        }
        Bundle bundle2 = null;
        if (bundle != null && bundle.containsKey("androidx.lifecycle.BundlableSavedStateRegistry.key")) {
            bundle2 = MathKt.m666getSavedStateimpl(bundle, "androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        savedStateRegistryImpl.restoredState = bundle2;
        savedStateRegistryImpl.isRestored = true;
    }

    public final void performSave(Bundle bundle) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.impl;
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        Bundle bundle2 = savedStateRegistryImpl.restoredState;
        if (bundle2 != null) {
            bundleOf.putAll(bundle2);
        }
        synchronized (savedStateRegistryImpl.lock) {
            for (Map.Entry entry : savedStateRegistryImpl.keyToProviders.entrySet()) {
                String str = (String) entry.getKey();
                Bundle saveState = ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState();
                str.getClass();
                bundleOf.putBundle(str, saveState);
            }
        }
        if (bundleOf.isEmpty()) {
            return;
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundleOf);
    }
}
