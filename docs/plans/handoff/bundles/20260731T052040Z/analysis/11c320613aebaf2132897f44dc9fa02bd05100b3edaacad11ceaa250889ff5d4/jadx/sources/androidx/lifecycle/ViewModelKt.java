package androidx.lifecycle;

import android.os.Bundle;
import android.view.View;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.DefaultViewModelProviderFactory;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.transition.Transition;
import coil3.ComponentRegistry;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.noties.markwon.BlockHandlerDef;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.MapBuilder;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Reflection;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ViewModelKt {
    public static final BlockHandlerDef SAVED_STATE_REGISTRY_OWNER_KEY = new BlockHandlerDef(14);
    public static final Transition.AnonymousClass1 VIEW_MODEL_STORE_OWNER_KEY = new Transition.AnonymousClass1(15);
    public static final BlockHandlerDef DEFAULT_ARGS_KEY = new BlockHandlerDef(15);
    public static final SynchronizedObject VIEW_MODEL_SCOPE_LOCK = new SynchronizedObject();
    public static final BlockHandlerDef VIEW_MODEL_KEY = new BlockHandlerDef(16);

    public static final void attachHandleIfNeeded(ViewModel viewModel, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        savedStateRegistry.getClass();
        lifecycle.getClass();
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getCloseable("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.isAttached) {
            return;
        }
        savedStateHandleController.attachToLifecycle(lifecycle, savedStateRegistry);
        Lifecycle.State state = ((LifecycleRegistry) lifecycle).state;
        if (state == Lifecycle.State.INITIALIZED || state.compareTo(Lifecycle.State.STARTED) >= 0) {
            savedStateRegistry.runOnNextRecreation();
        } else {
            lifecycle.addObserver(new DefaultLifecycleObserverAdapter(lifecycle, savedStateRegistry));
        }
    }

    public static SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
        if (bundle == null) {
            bundle = bundle2;
        }
        if (bundle == null) {
            SavedStateHandle savedStateHandle = new SavedStateHandle();
            new LinkedHashMap();
            savedStateHandle.impl = new ComponentRegistry.Builder(EmptyMap.INSTANCE);
            return savedStateHandle;
        }
        ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
        classLoader.getClass();
        bundle.setClassLoader(classLoader);
        MapBuilder mapBuilder = new MapBuilder(bundle.size());
        for (String str : bundle.keySet()) {
            str.getClass();
            mapBuilder.put(str, bundle.get(str));
        }
        MapBuilder build = mapBuilder.build();
        SavedStateHandle savedStateHandle2 = new SavedStateHandle();
        new LinkedHashMap();
        savedStateHandle2.impl = new ComponentRegistry.Builder(build);
        return savedStateHandle2;
    }

    public static final SavedStateHandle createSavedStateHandle(MutableCreationExtras mutableCreationExtras) {
        mutableCreationExtras.getClass();
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) linkedHashMap.get(SAVED_STATE_REGISTRY_OWNER_KEY);
        Bundle bundle = null;
        if (savedStateRegistryOwner == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
            return null;
        }
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) linkedHashMap.get(VIEW_MODEL_STORE_OWNER_KEY);
        if (viewModelStoreOwner == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        Bundle bundle2 = (Bundle) linkedHashMap.get(DEFAULT_ARGS_KEY);
        String str = (String) linkedHashMap.get(VIEW_MODEL_KEY);
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            return null;
        }
        SavedStateRegistry.SavedStateProvider savedStateProvider = savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider");
        SavedStateHandlesProvider savedStateHandlesProvider = savedStateProvider instanceof SavedStateHandlesProvider ? (SavedStateHandlesProvider) savedStateProvider : null;
        if (savedStateHandlesProvider == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
            return null;
        }
        LinkedHashMap linkedHashMap2 = getSavedStateHandlesVM(viewModelStoreOwner).handles;
        SavedStateHandle savedStateHandle = (SavedStateHandle) linkedHashMap2.get(str);
        if (savedStateHandle != null) {
            return savedStateHandle;
        }
        savedStateHandlesProvider.performRestore();
        Bundle bundle3 = savedStateHandlesProvider.restoredState;
        if (bundle3 != null && bundle3.containsKey(str)) {
            Bundle bundle4 = bundle3.getBundle(str);
            if (bundle4 == null) {
                bundle4 = BundleKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            bundle3.remove(str);
            if (bundle3.isEmpty()) {
                savedStateHandlesProvider.restoredState = null;
            }
            bundle = bundle4;
        }
        SavedStateHandle createHandle = createHandle(bundle, bundle2);
        linkedHashMap2.put(str, createHandle);
        return createHandle;
    }

    public static final void enableSavedStateHandles(SavedStateRegistryOwner savedStateRegistryOwner) {
        Lifecycle.State state = ((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state;
        if (state != Lifecycle.State.INITIALIZED && state != Lifecycle.State.CREATED) {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("Failed to enable `SavedStateHandle` for `", savedStateRegistryOwner, "`. The `Lifecycle.State` must be `INITIALIZED` or `CREATED`, but was `", state, "`. You must call `enableSavedStateHandles()` before the `Lifecycle.State` moves to `STARTED`.");
        } else if (savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(savedStateRegistryOwner.getSavedStateRegistry(), (ViewModelStoreOwner) savedStateRegistryOwner);
            savedStateRegistryOwner.getSavedStateRegistry().registerSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(savedStateHandlesProvider, 3));
        }
    }

    /* renamed from: get, reason: collision with other method in class */
    public static final ViewModelStoreOwner m464get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
            ViewModelStoreOwner viewModelStoreOwner = tag instanceof ViewModelStoreOwner ? (ViewModelStoreOwner) tag : null;
            if (viewModelStoreOwner != null) {
                return viewModelStoreOwner;
            }
            Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final SavedStateHandlesVM getSavedStateHandlesVM(ViewModelStoreOwner viewModelStoreOwner) {
        FragmentManagerViewModel.AnonymousClass1 anonymousClass1 = new FragmentManagerViewModel.AnonymousClass1(1);
        CreationExtras viewModelCreationExtras = getViewModelCreationExtras(viewModelStoreOwner);
        viewModelCreationExtras.getClass();
        ViewModelStore viewModelStore = viewModelStoreOwner.getViewModelStore();
        viewModelStore.getClass();
        return (SavedStateHandlesVM) new Dispatcher(viewModelStore, anonymousClass1, viewModelCreationExtras).getViewModel$lifecycle_viewmodel("androidx.lifecycle.internal.SavedStateHandlesVM", Reflection.getOrCreateKotlinClass(SavedStateHandlesVM.class));
    }

    public static final CreationExtras getViewModelCreationExtras(ViewModelStoreOwner viewModelStoreOwner) {
        return viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
    }

    public static final ViewModelProvider$Factory getViewModelProviderFactory(ViewModelStoreOwner viewModelStoreOwner) {
        return viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory() : DefaultViewModelProviderFactory.INSTANCE;
    }

    public static final LifecycleOwner get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
            LifecycleOwner lifecycleOwner = tag instanceof LifecycleOwner ? (LifecycleOwner) tag : null;
            if (lifecycleOwner != null) {
                return lifecycleOwner;
            }
            Object parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }
}
