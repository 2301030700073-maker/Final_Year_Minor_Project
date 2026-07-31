package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.svg.internal.AndroidSvg;
import java.util.Map;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {
    public final /* synthetic */ SaveableStateRegistryImpl $$delegate_0;
    public AndroidSvg _controller;
    public LifecycleRegistry _lifecycle;

    public SaveableStateRegistryWrapper(SaveableStateRegistryImpl saveableStateRegistryImpl) {
        this.$$delegate_0 = saveableStateRegistryImpl;
        Object consumeRestored = saveableStateRegistryImpl.consumeRestored("androidx.savedstate.SavedStateRegistry");
        Bundle bundle = consumeRestored instanceof Bundle ? (Bundle) consumeRestored : null;
        if (bundle != null && this._controller == null) {
            AndroidSvg androidSvg = new AndroidSvg(new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(9, this)));
            this._controller = androidSvg;
            androidSvg.performRestore(bundle);
        }
        saveableStateRegistryImpl.registerProvider("androidx.savedstate.SavedStateRegistry", new NavBackStackEntry$$ExternalSyntheticLambda0(25, this));
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
    public final LifecycleRegistry getLifecycle() {
        LifecycleRegistry lifecycleRegistry = this._lifecycle;
        if (lifecycleRegistry != null) {
            return lifecycleRegistry;
        }
        LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this, false);
        this._lifecycle = lifecycleRegistry2;
        return lifecycleRegistry2;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final AndroidSvg getSavedStateRegistry() {
        AndroidSvg androidSvg = this._controller;
        if (androidSvg == null) {
            AndroidSvg androidSvg2 = new AndroidSvg(new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(9, this)));
            this._controller = androidSvg2;
            androidSvg2.performRestore(null);
            androidSvg = androidSvg2;
        }
        return (AndroidSvg) androidSvg.renderOptions;
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
