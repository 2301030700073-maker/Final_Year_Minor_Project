package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.OperationKt;
import io.noties.markwon.BlockHandlerDef;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.ClassReference;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateViewModelFactory implements ViewModelProvider$Factory {
    public final Application application;
    public final Bundle defaultArgs;
    public final ViewModelProvider$AndroidViewModelFactory factory;
    public final Lifecycle lifecycle;
    public final SavedStateRegistry savedStateRegistry;

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
        Lifecycle lifecycle = this.lifecycle;
        if (lifecycle == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
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
            return MathKt.createViewModel(cls);
        }
        SavedStateRegistry savedStateRegistry = this.savedStateRegistry;
        savedStateRegistry.getClass();
        SavedStateHandle createHandle = ViewModelKt.createHandle(savedStateRegistry.consumeRestoredStateForKey(str), this.defaultArgs);
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, createHandle);
        savedStateHandleController.attachToLifecycle(lifecycle, savedStateRegistry);
        Lifecycle.State state = ((LifecycleRegistry) lifecycle).state;
        if (state == Lifecycle.State.INITIALIZED || state.compareTo(Lifecycle.State.STARTED) >= 0) {
            savedStateRegistry.runOnNextRecreation();
        } else {
            lifecycle.addObserver(new DefaultLifecycleObserverAdapter(lifecycle, savedStateRegistry));
        }
        ViewModel newInstance = (!isAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, createHandle) : SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, application, createHandle);
        newInstance.addCloseable("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return newInstance;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        Constructor findMatchingConstructor;
        BlockHandlerDef blockHandlerDef = ViewModelKt.VIEW_MODEL_KEY;
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        String str = (String) linkedHashMap.get(blockHandlerDef);
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
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        return create(OperationKt.getJavaClass(classReference), mutableCreationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return create(cls, canonicalName);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
        return null;
    }
}
