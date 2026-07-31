package androidx.lifecycle.viewmodel;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import io.noties.markwon.BlockHandlerDef;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.Pair;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewModelStoreOwnerFactory$ViewModelStoreOwner$2 implements ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public final /* synthetic */ Bundle $defaultArgs;
    public final /* synthetic */ CreationExtras $defaultCreationExtras;
    public final /* synthetic */ ViewModelProvider$Factory $defaultFactory;
    public final /* synthetic */ Lifecycle $lifecycle;
    public final /* synthetic */ SavedStateRegistry $savedStateRegistry;
    public final /* synthetic */ ViewModelStore $viewModelStore;

    public ViewModelStoreOwnerFactory$ViewModelStoreOwner$2(SavedStateRegistry savedStateRegistry, ViewModelStore viewModelStore, Lifecycle lifecycle, ViewModelProvider$Factory viewModelProvider$Factory, CreationExtras creationExtras, Bundle bundle) {
        this.$savedStateRegistry = savedStateRegistry;
        this.$viewModelStore = viewModelStore;
        this.$lifecycle = lifecycle;
        this.$defaultFactory = viewModelProvider$Factory;
        this.$defaultCreationExtras = creationExtras;
        this.$defaultArgs = bundle;
        if (savedStateRegistry.getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            ViewModelKt.enableSavedStateHandles(this);
        }
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.$defaultCreationExtras);
        BlockHandlerDef blockHandlerDef = ViewModelKt.DEFAULT_ARGS_KEY;
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        Bundle bundle = (Bundle) linkedHashMap.get(blockHandlerDef);
        if (bundle != null) {
            bundleOf.putAll(bundle);
        }
        Bundle bundle2 = this.$defaultArgs;
        bundle2.getClass();
        bundleOf.putAll(bundle2);
        linkedHashMap.put(blockHandlerDef, bundleOf);
        linkedHashMap.put(ViewModelKt.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        linkedHashMap.put(ViewModelKt.VIEW_MODEL_STORE_OWNER_KEY, this);
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider$Factory getDefaultViewModelProviderFactory() {
        return this.$defaultFactory;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.$lifecycle;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.$savedStateRegistry;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        return this.$viewModelStore;
    }
}
