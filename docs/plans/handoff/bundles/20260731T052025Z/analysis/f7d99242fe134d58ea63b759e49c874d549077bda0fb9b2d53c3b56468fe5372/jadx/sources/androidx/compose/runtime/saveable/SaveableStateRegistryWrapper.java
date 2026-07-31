package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import com.beetstra.jutf7.Base64Util;
import java.util.Map;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {
    public final /* synthetic */ SaveableStateRegistryImpl $$delegate_0;
    public Base64Util _controller;
    public LifecycleRegistry _lifecycle;

    public SaveableStateRegistryWrapper(SaveableStateRegistryImpl saveableStateRegistryImpl) {
        this.$$delegate_0 = saveableStateRegistryImpl;
        Object consumeRestored = saveableStateRegistryImpl.consumeRestored("androidx.savedstate.SavedStateRegistry");
        Bundle bundle = consumeRestored instanceof Bundle ? (Bundle) consumeRestored : null;
        if (bundle != null && this._controller == null) {
            Base64Util base64Util = new Base64Util(new SavedStateRegistryImpl(this, new ImageLoader$Builder$$ExternalSyntheticLambda1(20, this)), 4);
            this._controller = base64Util;
            base64Util.performRestore(bundle);
        }
        saveableStateRegistryImpl.registerProvider("androidx.savedstate.SavedStateRegistry", new ImageLoader$Builder$$ExternalSyntheticLambda1(8, this));
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
    public final Base64Util getSavedStateRegistry() {
        Base64Util base64Util = this._controller;
        if (base64Util == null) {
            Base64Util base64Util2 = new Base64Util(new SavedStateRegistryImpl(this, new ImageLoader$Builder$$ExternalSyntheticLambda1(20, this)), 4);
            this._controller = base64Util2;
            base64Util2.performRestore(null);
            base64Util = base64Util2;
        }
        return (Base64Util) base64Util.inverseAlphabet;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map performSave() {
        return this.$$delegate_0.performSave();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry registerProvider(String str, Function0 function0) {
        return this.$$delegate_0.registerProvider(str, function0);
    }
}
