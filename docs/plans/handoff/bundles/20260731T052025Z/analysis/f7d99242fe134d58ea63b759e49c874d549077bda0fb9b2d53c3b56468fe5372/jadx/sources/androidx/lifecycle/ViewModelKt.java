package androidx.lifecycle;

import android.os.Bundle;
import android.view.View;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.datastore.core.DataStoreImpl$data$1$3;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.bumptech.glide.load.Option;
import com.eygraber.uri.Uri;
import com.fsck.k9.R;
import com.jcraft.jzlib.Adler32;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.Arrays;
import java.util.LinkedHashMap;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ViewModelKt {
    public static final Adler32 SAVED_STATE_REGISTRY_OWNER_KEY = new Adler32(7);
    public static final Path.Companion VIEW_MODEL_STORE_OWNER_KEY = new Path.Companion();
    public static final VerboseLogger DEFAULT_ARGS_KEY = new VerboseLogger();
    public static final SynchronizedObject VIEW_MODEL_SCOPE_LOCK = new SynchronizedObject();

    public static CoroutineLiveData asLiveData$default(Flow flow) {
        flow.getClass();
        CoroutineLiveData liveData = liveData(EmptyCoroutineContext.INSTANCE, new BlockRunner$maybeRun$1(flow, (Continuation) null, 13));
        if (flow instanceof StateFlow) {
            if (ArchTaskExecutor.getInstance().isMainThread()) {
                liveData.setValue(((StateFlow) flow).getValue());
                return liveData;
            }
            liveData.postValue(((StateFlow) flow).getValue());
        }
        return liveData;
    }

    public static final void attachHandleIfNeeded(ViewModel viewModel, Base64Util base64Util, Lifecycle lifecycle) {
        base64Util.getClass();
        lifecycle.getClass();
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) viewModel.getCloseable("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.isAttached) {
            return;
        }
        savedStateHandleController.attachToLifecycle(base64Util, lifecycle);
        Lifecycle.State state = ((LifecycleRegistry) lifecycle).state;
        if (state == Lifecycle.State.INITIALIZED || state.compareTo(Lifecycle.State.STARTED) >= 0) {
            base64Util.runOnNextRecreation();
        } else {
            lifecycle.addObserver(new DefaultLifecycleObserverAdapter(2, lifecycle, base64Util));
        }
    }

    public static final SavedStateHandle createSavedStateHandle(CreationExtras creationExtras) {
        SavedStateHandle savedStateHandle;
        creationExtras.getClass();
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) creationExtras.get(SAVED_STATE_REGISTRY_OWNER_KEY);
        Bundle bundle = null;
        if (savedStateRegistryOwner == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
            return null;
        }
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) creationExtras.get(VIEW_MODEL_STORE_OWNER_KEY);
        if (viewModelStoreOwner == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
            return null;
        }
        Bundle bundle2 = (Bundle) creationExtras.get(DEFAULT_ARGS_KEY);
        String str = (String) creationExtras.get(AtomicReference.VIEW_MODEL_KEY);
        if (str == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            return null;
        }
        SavedStateRegistry$SavedStateProvider savedStateProvider = savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider");
        SavedStateHandlesProvider savedStateHandlesProvider = savedStateProvider instanceof SavedStateHandlesProvider ? (SavedStateHandlesProvider) savedStateProvider : null;
        if (savedStateHandlesProvider == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
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
                bundle4 = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
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
            savedStateHandle = new SavedStateHandle(Operation$State.m834toMapimpl(bundle2));
        }
        linkedHashMap.put(str, savedStateHandle);
        return savedStateHandle;
    }

    public static final void enableSavedStateHandles(SavedStateRegistryOwner savedStateRegistryOwner) {
        Lifecycle.State state = ((LifecycleRegistry) savedStateRegistryOwner.getLifecycle()).state;
        if (state != Lifecycle.State.INITIALIZED && state != Lifecycle.State.CREATED) {
            UriKt$$ExternalSyntheticBUOutline0.m("Failed requirement.");
        } else if (savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider") == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(savedStateRegistryOwner.getSavedStateRegistry(), (ViewModelStoreOwner) savedStateRegistryOwner);
            savedStateRegistryOwner.getSavedStateRegistry().registerSavedStateProvider("androidx.lifecycle.internal.SavedStateHandlesProvider", savedStateHandlesProvider);
            savedStateRegistryOwner.getLifecycle().addObserver(new SavedStateHandleAttacher(0, savedStateHandlesProvider));
        }
    }

    /* renamed from: get, reason: collision with other method in class */
    public static final ViewModelStoreOwner m801get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
            ViewModelStoreOwner viewModelStoreOwner = tag instanceof ViewModelStoreOwner ? (ViewModelStoreOwner) tag : null;
            if (viewModelStoreOwner != null) {
                return viewModelStoreOwner;
            }
            Object parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final LifecycleCoroutineScopeImpl getLifecycleScope(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        lifecycle.getClass();
        AtomicReference atomicReference = lifecycle.internalScopeRef;
        while (true) {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl = (LifecycleCoroutineScopeImpl) ((java.util.concurrent.atomic.AtomicReference) atomicReference.base).get();
            if (lifecycleCoroutineScopeImpl != null) {
                return lifecycleCoroutineScopeImpl;
            }
            SupervisorJobImpl SupervisorJob$default = JobKt.SupervisorJob$default();
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = new LifecycleCoroutineScopeImpl(lifecycle, UuidKt.plus(SupervisorJob$default, MainDispatcherLoader.dispatcher.immediate));
            java.util.concurrent.atomic.AtomicReference atomicReference2 = (java.util.concurrent.atomic.AtomicReference) atomicReference.base;
            do {
                Continuation continuation = null;
                if (atomicReference2.compareAndSet(null, lifecycleCoroutineScopeImpl2)) {
                    DefaultScheduler defaultScheduler2 = Dispatchers.Default;
                    JobKt.launch$default(lifecycleCoroutineScopeImpl2, MainDispatcherLoader.dispatcher.immediate, null, new DataStoreImpl$data$1$3(lifecycleCoroutineScopeImpl2, continuation, 16), 2);
                    return lifecycleCoroutineScopeImpl2;
                }
            } while (atomicReference2.get() == null);
        }
    }

    public static final SavedStateHandlesVM getSavedStateHandlesVM(ViewModelStoreOwner viewModelStoreOwner) {
        AtomicReference create$default = Option.AnonymousClass1.create$default(viewModelStoreOwner, new FragmentManagerViewModel.AnonymousClass1(1), 4);
        return (SavedStateHandlesVM) ((Dispatcher) create$default.base).getViewModel$lifecycle_viewmodel("androidx.lifecycle.internal.SavedStateHandlesVM", Reflection.getOrCreateKotlinClass(SavedStateHandlesVM.class));
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
                CloseableCoroutineScope closeableCoroutineScope2 = new CloseableCoroutineScope(coroutineContext.plus(JobKt.SupervisorJob$default()));
                ViewModelImpl viewModelImpl = viewModel.impl;
                if (viewModelImpl != null) {
                    viewModelImpl.addCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", closeableCoroutineScope2);
                }
                closeableCoroutineScope = closeableCoroutineScope2;
            }
        }
        return closeableCoroutineScope;
    }

    public static final CoroutineLiveData liveData(CoroutineContext coroutineContext, Function2 function2) {
        coroutineContext.getClass();
        CoroutineLiveData coroutineLiveData = new CoroutineLiveData(1);
        SupervisorJobImpl supervisorJobImpl = new SupervisorJobImpl((Job) coroutineContext.get(Job.Key.$$INSTANCE));
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        coroutineLiveData.blockRunner = new Uri.Builder(coroutineLiveData, function2, JobKt.CoroutineScope(MainDispatcherLoader.dispatcher.immediate.plus(coroutineContext).plus(supervisorJobImpl)), new ImageLoader$Builder$$ExternalSyntheticLambda1(14, coroutineLiveData));
        return coroutineLiveData;
    }

    public static final Object repeatOnLifecycle(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, SuspendLambda suspendLambda) {
        Object coroutineScope;
        if (state != Lifecycle.State.INITIALIZED) {
            return (((LifecycleRegistry) lifecycle).state != Lifecycle.State.DESTROYED && (coroutineScope = JobKt.coroutineScope(new NavHostKt$NavHost$29$1(lifecycle, state, function2, (Continuation) null, 14), suspendLambda)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? coroutineScope : Unit.INSTANCE;
        }
        UriKt$$ExternalSyntheticBUOutline0.m("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
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
            Object parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final Object repeatOnLifecycle(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function2 function2, SuspendLambda suspendLambda) {
        Object repeatOnLifecycle = repeatOnLifecycle(lifecycleOwner.getLifecycle(), state, function2, suspendLambda);
        return repeatOnLifecycle == CoroutineSingletons.COROUTINE_SUSPENDED ? repeatOnLifecycle : Unit.INSTANCE;
    }
}
