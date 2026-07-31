package androidx.lifecycle;

import android.os.Bundle;
import android.view.View;
import androidx.collection.internal.Lock;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.paging.HintHandler;
import androidx.room.Room;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import androidx.work.impl.AutoMigration_14_15;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ViewModelKt {
    public static final Transition.AnonymousClass1 SAVED_STATE_REGISTRY_OWNER_KEY = new Transition.AnonymousClass1(13, false);
    public static final AutoMigration_14_15 VIEW_MODEL_STORE_OWNER_KEY = new AutoMigration_14_15(14);
    public static final Lock DEFAULT_ARGS_KEY = new Lock(13);
    public static final SynchronizedObject VIEW_MODEL_SCOPE_LOCK = new SynchronizedObject();
    public static final AutoMigration_14_15 VIEW_MODEL_KEY = new AutoMigration_14_15(15);

    public static final void attachHandleIfNeeded(ViewModel viewModel, AndroidSvg androidSvg, LifecycleRegistry lifecycleRegistry) {
        androidSvg.getClass();
        lifecycleRegistry.getClass();
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getCloseable("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.isAttached) {
            return;
        }
        savedStateHandleController.attachToLifecycle(androidSvg, lifecycleRegistry);
        Lifecycle$State lifecycle$State = lifecycleRegistry.state;
        if (lifecycle$State == Lifecycle$State.INITIALIZED || lifecycle$State.isAtLeast(Lifecycle$State.STARTED)) {
            androidSvg.runOnNextRecreation();
        } else {
            lifecycleRegistry.addObserver(new DefaultLifecycleObserverAdapter(2, lifecycleRegistry, androidSvg));
        }
    }

    public static final SavedStateHandle createSavedStateHandle(CreationExtras creationExtras) {
        SavedStateHandle savedStateHandle;
        creationExtras.getClass();
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) creationExtras.get(SAVED_STATE_REGISTRY_OWNER_KEY);
        Bundle bundle = null;
        if (savedStateRegistryOwner == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
            return null;
        }
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) creationExtras.get(VIEW_MODEL_STORE_OWNER_KEY);
        if (viewModelStoreOwner == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        Bundle bundle2 = (Bundle) creationExtras.get(DEFAULT_ARGS_KEY);
        String str = (String) creationExtras.get(VIEW_MODEL_KEY);
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            return null;
        }
        SavedStateRegistry$SavedStateProvider savedStateProvider = savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider");
        SavedStateHandlesProvider savedStateHandlesProvider = savedStateProvider instanceof SavedStateHandlesProvider ? (SavedStateHandlesProvider) savedStateProvider : null;
        if (savedStateHandlesProvider == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
            return null;
        }
        LinkedHashMap linkedHashMap = getSavedStateHandlesVM(viewModelStoreOwner).handles;
        SavedStateHandle savedStateHandle2 = (SavedStateHandle) linkedHashMap.get(str);
        if (savedStateHandle2 != null) {
            return savedStateHandle2;
        }
        savedStateHandlesProvider.performRestore();
        Bundle bundle3 = savedStateHandlesProvider.restoredState;
        if (bundle3 != null && bundle3.containsKey(str)) {
            Bundle bundle4 = bundle3.getBundle(str);
            if (bundle4 == null) {
                bundle4 = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
            }
            bundle3.remove(str);
            if (bundle3.isEmpty()) {
                savedStateHandlesProvider.restoredState = null;
            }
            bundle = bundle4;
        }
        if (bundle != null) {
            bundle2 = bundle;
        }
        if (bundle2 == null) {
            savedStateHandle = new SavedStateHandle();
        } else {
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            classLoader.getClass();
            bundle2.setClassLoader(classLoader);
            MapBuilder mapBuilder = new MapBuilder(bundle2.size());
            for (String str2 : bundle2.keySet()) {
                str2.getClass();
                mapBuilder.put(str2, bundle2.get(str2));
            }
            savedStateHandle = new SavedStateHandle(mapBuilder.build());
        }
        linkedHashMap.put(str, savedStateHandle);
        return savedStateHandle;
    }

    public static final void enableSavedStateHandles(SavedStateRegistryOwner savedStateRegistryOwner) {
        Lifecycle$State lifecycle$State = savedStateRegistryOwner.getLifecycle().state;
        if (lifecycle$State != Lifecycle$State.INITIALIZED && lifecycle$State != Lifecycle$State.CREATED) {
            Gson$$ExternalSyntheticBUOutline0.m("Failed to enable `SavedStateHandle` for `", savedStateRegistryOwner, "`. The `Lifecycle.State` must be `INITIALIZED` or `CREATED`, but was `", lifecycle$State, "`. You must call `enableSavedStateHandles()` before the `Lifecycle.State` moves to `STARTED`.");
        } else if (savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(savedStateRegistryOwner.getSavedStateRegistry(), (ViewModelStoreOwner) savedStateRegistryOwner);
            savedStateRegistryOwner.getSavedStateRegistry().registerSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(4, savedStateHandlesProvider));
        }
    }

    /* renamed from: get, reason: collision with other method in class */
    public static final ViewModelStoreOwner m752get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
            ViewModelStoreOwner viewModelStoreOwner = tag instanceof ViewModelStoreOwner ? (ViewModelStoreOwner) tag : null;
            if (viewModelStoreOwner != null) {
                return viewModelStoreOwner;
            }
            Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final LifecycleCoroutineScopeImpl getLifecycleScope(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        LifecycleRegistry lifecycle = lifecycleOwner.getLifecycle();
        lifecycle.getClass();
        HintHandler hintHandler = lifecycle.internalScopeRef;
        while (true) {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) ((AtomicReference) hintHandler.state).get();
            if (lifecycleCoroutineScopeImpl != null) {
                return lifecycleCoroutineScopeImpl;
            }
            SupervisorJobImpl SupervisorJob$default = AwaitKt.SupervisorJob$default();
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = new LifecycleCoroutineScopeImpl(lifecycle, OperationKt.plus(SupervisorJob$default, MainDispatcherLoader.dispatcher.immediate));
            AtomicReference atomicReference = (AtomicReference) hintHandler.state;
            do {
                Continuation continuation = null;
                if (atomicReference.compareAndSet(null, lifecycleCoroutineScopeImpl2)) {
                    DefaultScheduler defaultScheduler2 = Dispatchers.Default;
                    AwaitKt.launch$default(lifecycleCoroutineScopeImpl2, MainDispatcherLoader.dispatcher.immediate, null, new DonateDialog$onCreateView$3.AnonymousClass1(7, lifecycleCoroutineScopeImpl2, continuation), 2);
                    return lifecycleCoroutineScopeImpl2;
                }
            } while (atomicReference.get() == null);
        }
    }

    public static final SavedStateHandlesVM getSavedStateHandlesVM(ViewModelStoreOwner viewModelStoreOwner) {
        FragmentManagerViewModel.AnonymousClass1 anonymousClass1 = new FragmentManagerViewModel.AnonymousClass1(1);
        CreationExtras viewModelCreationExtras = getViewModelCreationExtras(viewModelStoreOwner);
        viewModelCreationExtras.getClass();
        ViewModelStore viewModelStore = viewModelStoreOwner.getViewModelStore();
        viewModelStore.getClass();
        return (SavedStateHandlesVM) new ImageLoader$Builder(viewModelStore, anonymousClass1, viewModelCreationExtras).getViewModel$lifecycle_viewmodel("androidx.lifecycle.internal.SavedStateHandlesVM", Reflection.factory.getOrCreateKotlinClass(SavedStateHandlesVM.class));
    }

    public static final CreationExtras getViewModelCreationExtras(ViewModelStoreOwner viewModelStoreOwner) {
        return viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
    }

    public static final CloseableCoroutineScope getViewModelScope(ViewModel viewModel) {
        CloseableCoroutineScope closeableCoroutineScope;
        viewModel.getClass();
        synchronized (VIEW_MODEL_SCOPE_LOCK) {
            closeableCoroutineScope = (CloseableCoroutineScope) viewModel.getCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY");
            if (closeableCoroutineScope == null) {
                CoroutineContext coroutineContext = EmptyCoroutineContext.INSTANCE;
                try {
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    coroutineContext = MainDispatcherLoader.dispatcher.immediate;
                } catch (IllegalStateException | NotImplementedError unused) {
                }
                CloseableCoroutineScope closeableCoroutineScope2 = new CloseableCoroutineScope(coroutineContext.plus(AwaitKt.SupervisorJob$default()));
                viewModel.addCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", closeableCoroutineScope2);
                closeableCoroutineScope = closeableCoroutineScope2;
            }
        }
        return closeableCoroutineScope;
    }

    public static final Object repeatOnLifecycle(LifecycleRegistry lifecycleRegistry, Lifecycle$State lifecycle$State, Function2 function2, Continuation continuation) {
        Object coroutineScope;
        if (lifecycle$State != Lifecycle$State.INITIALIZED) {
            return (lifecycleRegistry.state != Lifecycle$State.DESTROYED && (coroutineScope = AwaitKt.coroutineScope(new FlowExtKt$simpleScan$1(lifecycleRegistry, lifecycle$State, function2, (Continuation) null, 17), continuation)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? coroutineScope : Unit.INSTANCE;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
        return null;
    }

    public static final LifecycleOwner get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
            LifecycleOwner lifecycleOwner = tag instanceof LifecycleOwner ? (LifecycleOwner) tag : null;
            if (lifecycleOwner != null) {
                return lifecycleOwner;
            }
            Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle$State lifecycle$State, Function2 function2, Continuation continuation) {
        Object repeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), lifecycle$State, function2, continuation);
        return repeatOnLifecycle == CoroutineSingletons.COROUTINE_SUSPENDED ? repeatOnLifecycle : Unit.INSTANCE;
    }
}
