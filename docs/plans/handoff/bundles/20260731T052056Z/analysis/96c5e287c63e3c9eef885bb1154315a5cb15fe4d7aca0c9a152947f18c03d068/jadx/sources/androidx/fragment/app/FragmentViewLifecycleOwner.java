package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.svg.internal.AndroidSvg;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentViewLifecycleOwner implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {
    public ViewModelProvider$Factory mDefaultFactory;
    public final Fragment mFragment;
    public final Task$$ExternalSyntheticLambda0 mRestoreViewSavedStateRunnable;
    public final ViewModelStore mViewModelStore;
    public LifecycleRegistry mLifecycleRegistry = null;
    public AndroidSvg mSavedStateRegistryController = null;

    public FragmentViewLifecycleOwner(Fragment fragment, ViewModelStore viewModelStore, Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda0) {
        this.mFragment = fragment;
        this.mViewModelStore = viewModelStore;
        this.mRestoreViewSavedStateRunnable = task$$ExternalSyntheticLambda0;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final MutableCreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        Fragment fragment = this.mFragment;
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(0);
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        if (application != null) {
            linkedHashMap.put(ViewModelProvider$AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        linkedHashMap.put(ViewModelKt.SAVED_STATE_REGISTRY_OWNER_KEY, fragment);
        linkedHashMap.put(ViewModelKt.VIEW_MODEL_STORE_OWNER_KEY, this);
        Bundle bundle = fragment.mArguments;
        if (bundle != null) {
            linkedHashMap.put(ViewModelKt.DEFAULT_ARGS_KEY, bundle);
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider$Factory getDefaultViewModelProviderFactory() {
        Application application;
        Fragment fragment = this.mFragment;
        ViewModelProvider$Factory defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
        if (defaultViewModelProviderFactory != fragment.mDefaultFactory) {
            this.mDefaultFactory = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        ViewModelProvider$Factory viewModelProvider$Factory = this.mDefaultFactory;
        if (viewModelProvider$Factory != null) {
            return viewModelProvider$Factory;
        }
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        SavedStateViewModelFactory savedStateViewModelFactory = new SavedStateViewModelFactory(application, fragment, fragment.mArguments);
        this.mDefaultFactory = savedStateViewModelFactory;
        return savedStateViewModelFactory;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        initialize$1();
        return this.mLifecycleRegistry;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final AndroidSvg getSavedStateRegistry() {
        initialize$1();
        return (AndroidSvg) this.mSavedStateRegistryController.renderOptions;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        initialize$1();
        return this.mViewModelStore;
    }

    public final void handleLifecycleEvent(Lifecycle$Event lifecycle$Event) {
        this.mLifecycleRegistry.handleLifecycleEvent(lifecycle$Event);
    }

    public final void initialize$1() {
        if (this.mLifecycleRegistry == null) {
            this.mLifecycleRegistry = new LifecycleRegistry(this, true);
            SavedStateRegistryImpl savedStateRegistryImpl = new SavedStateRegistryImpl(this, new Worker$$ExternalSyntheticLambda0(9, this));
            this.mSavedStateRegistryController = new AndroidSvg(savedStateRegistryImpl);
            savedStateRegistryImpl.performAttach();
            this.mRestoreViewSavedStateRunnable.run();
        }
    }
}
