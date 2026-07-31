package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {
    public final /* synthetic */ SaveableStateRegistryImpl $$delegate_0;
    public SavedStateRegistryController _controller;
    public LifecycleRegistry _lifecycle;

    public SaveableStateRegistryWrapper(SaveableStateRegistryImpl saveableStateRegistryImpl) {
        this.$$delegate_0 = saveableStateRegistryImpl;
        Object consumeRestored = saveableStateRegistryImpl.consumeRestored("androidx.savedstate.SavedStateRegistry");
        Bundle bundle = consumeRestored instanceof Bundle ? (Bundle) consumeRestored : null;
        if (bundle != null && this._controller == null) {
            SavedStateRegistryController savedStateRegistryController = new SavedStateRegistryController(new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(this, 18)));
            this._controller = savedStateRegistryController;
            savedStateRegistryController.performRestore(bundle);
        }
        saveableStateRegistryImpl.registerProvider("androidx.savedstate.SavedStateRegistry", new Worker$$ExternalSyntheticLambda0(this, 7));
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean canBeSaved(Object obj) {
        return this.$$delegate_0.canBeSaved(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object consumeRestored(String str) {
        return this.$$delegate_0.consumeRestored(str);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        LifecycleRegistry lifecycleRegistry = this._lifecycle;
        if (lifecycleRegistry != null) {
            return lifecycleRegistry;
        }
        LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this, false);
        this._lifecycle = lifecycleRegistry2;
        return lifecycleRegistry2;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        SavedStateRegistryController savedStateRegistryController = this._controller;
        if (savedStateRegistryController == null) {
            SavedStateRegistryController savedStateRegistryController2 = new SavedStateRegistryController(new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(this, 18)));
            this._controller = savedStateRegistryController2;
            savedStateRegistryController2.performRestore(null);
            savedStateRegistryController = savedStateRegistryController2;
        }
        return savedStateRegistryController.savedStateRegistry;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map performSave() {
        return this.$$delegate_0.performSave();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final ProcessFinisher registerProvider(String str, Function0 function0) {
        return this.$$delegate_0.registerProvider(str, function0);
    }
}
