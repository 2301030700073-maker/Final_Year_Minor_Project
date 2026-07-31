package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.ClassReference;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedStateViewModelFactory implements ViewModelProvider$Factory {
    public final Application application;
    public final Bundle defaultArgs;
    public final ViewModelProvider$AndroidViewModelFactory factory;
    public final Lifecycle lifecycle;
    public final Base64Util savedStateRegistry;

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner savedStateRegistryOwner, Bundle bundle) {
        ViewModelProvider$AndroidViewModelFactory viewModelProvider$AndroidViewModelFactory;
        this.savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
        this.lifecycle = savedStateRegistryOwner.getLifecycle();
        this.defaultArgs = bundle;
        this.application = application;
        if (application != null) {
            if (ViewModelProvider$AndroidViewModelFactory._instance == null) {
                ViewModelProvider$AndroidViewModelFactory._instance = new ViewModelProvider$AndroidViewModelFactory(application);
            }
            viewModelProvider$AndroidViewModelFactory = ViewModelProvider$AndroidViewModelFactory._instance;
            viewModelProvider$AndroidViewModelFactory.getClass();
        } else {
            viewModelProvider$AndroidViewModelFactory = new ViewModelProvider$AndroidViewModelFactory(null);
        }
        this.factory = viewModelProvider$AndroidViewModelFactory;
    }

    public final ViewModel create(Class cls, String str) {
        SavedStateHandle savedStateHandle;
        Lifecycle lifecycle = this.lifecycle;
        if (lifecycle == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }
        boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
        Application application = this.application;
        Constructor findMatchingConstructor = (!isAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.findMatchingConstructor(cls, SavedStateViewModelFactory_androidKt.VIEWMODEL_SIGNATURE) : SavedStateViewModelFactory_androidKt.findMatchingConstructor(cls, SavedStateViewModelFactory_androidKt.ANDROID_VIEWMODEL_SIGNATURE);
        int i = 2;
        if (findMatchingConstructor == null) {
            if (application != null) {
                return this.factory.create(cls);
            }
            if (FragmentManagerViewModel.AnonymousClass1._instance == null) {
                FragmentManagerViewModel.AnonymousClass1._instance = new FragmentManagerViewModel.AnonymousClass1(i);
            }
            FragmentManagerViewModel.AnonymousClass1._instance.getClass();
            return Utf8.SafeProcessor.createViewModel(cls);
        }
        Base64Util base64Util = this.savedStateRegistry;
        base64Util.getClass();
        Bundle consumeRestoredStateForKey = base64Util.consumeRestoredStateForKey(str);
        if (consumeRestoredStateForKey == null) {
            consumeRestoredStateForKey = this.defaultArgs;
        }
        if (consumeRestoredStateForKey == null) {
            savedStateHandle = new SavedStateHandle();
        } else {
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            classLoader.getClass();
            consumeRestoredStateForKey.setClassLoader(classLoader);
            savedStateHandle = new SavedStateHandle(Operation$State.m834toMapimpl(consumeRestoredStateForKey));
        }
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, savedStateHandle);
        savedStateHandleController.attachToLifecycle(base64Util, lifecycle);
        Lifecycle.State state = ((LifecycleRegistry) lifecycle).state;
        if (state == Lifecycle.State.INITIALIZED || state.compareTo(Lifecycle.State.STARTED) >= 0) {
            base64Util.runOnNextRecreation();
        } else {
            lifecycle.addObserver(new DefaultLifecycleObserverAdapter(i, lifecycle, base64Util));
        }
        ViewModel newInstance = (!isAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, savedStateHandle) : SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, application, savedStateHandle);
        ViewModelImpl viewModelImpl = newInstance.impl;
        if (viewModelImpl != null) {
            viewModelImpl.addCloseable("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        }
        return newInstance;
    }

    public SavedStateViewModelFactory() {
        this.factory = new ViewModelProvider$AndroidViewModelFactory(null);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        return create(Handshake.Companion.getJavaClass(classReference), mutableCreationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        Constructor findMatchingConstructor;
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        String str = (String) linkedHashMap.get(AtomicReference.VIEW_MODEL_KEY);
        if (str != null) {
            if (linkedHashMap.get(ViewModelKt.SAVED_STATE_REGISTRY_OWNER_KEY) != null && linkedHashMap.get(ViewModelKt.VIEW_MODEL_STORE_OWNER_KEY) != null) {
                Application application = (Application) linkedHashMap.get(ViewModelProvider$AndroidViewModelFactory.APPLICATION_KEY);
                boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
                if (isAssignableFrom && application != null) {
                    findMatchingConstructor = SavedStateViewModelFactory_androidKt.findMatchingConstructor(cls, SavedStateViewModelFactory_androidKt.ANDROID_VIEWMODEL_SIGNATURE);
                } else {
                    findMatchingConstructor = SavedStateViewModelFactory_androidKt.findMatchingConstructor(cls, SavedStateViewModelFactory_androidKt.VIEWMODEL_SIGNATURE);
                }
                if (findMatchingConstructor == null) {
                    return this.factory.create(cls, mutableCreationExtras);
                }
                return (!isAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, ViewModelKt.createSavedStateHandle(mutableCreationExtras)) : SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, application, ViewModelKt.createSavedStateHandle(mutableCreationExtras));
            }
            if (this.lifecycle != null) {
                return create(cls, str);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return create(cls, canonicalName);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
        return null;
    }
}
