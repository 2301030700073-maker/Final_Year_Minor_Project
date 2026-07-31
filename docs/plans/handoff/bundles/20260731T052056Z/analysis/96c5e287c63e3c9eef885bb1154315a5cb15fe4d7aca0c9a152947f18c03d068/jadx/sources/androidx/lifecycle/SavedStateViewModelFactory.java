package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.impl.AutoMigration_14_15;
import coil3.svg.internal.AndroidSvg;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.util.LinkedHashMap;
import kotlin.UnsignedKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.reflect.KClass;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedStateViewModelFactory implements ViewModelProvider$Factory {
    public final Application application;
    public final Bundle defaultArgs;
    public final ViewModelProvider$AndroidViewModelFactory factory;
    public final LifecycleRegistry lifecycle;
    public final AndroidSvg savedStateRegistry;

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner savedStateRegistryOwner, Bundle bundle) {
        ViewModelProvider$AndroidViewModelFactory viewModelProvider$AndroidViewModelFactory;
        this.savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
        this.lifecycle = savedStateRegistryOwner.getLifecycle();
        this.defaultArgs = bundle;
        this.application = application;
        if (application != null) {
            viewModelProvider$AndroidViewModelFactory = ViewModelProvider$AndroidViewModelFactory._instance;
            if (viewModelProvider$AndroidViewModelFactory == null) {
                viewModelProvider$AndroidViewModelFactory = new ViewModelProvider$AndroidViewModelFactory(application);
                ViewModelProvider$AndroidViewModelFactory._instance = viewModelProvider$AndroidViewModelFactory;
            }
        } else {
            viewModelProvider$AndroidViewModelFactory = new ViewModelProvider$AndroidViewModelFactory(null);
        }
        this.factory = viewModelProvider$AndroidViewModelFactory;
    }

    public final ViewModel create(Class cls, String str) {
        SavedStateHandle savedStateHandle;
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        if (lifecycleRegistry == null) {
            Gson$$ExternalSyntheticBUOutline0.m("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
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
            FragmentManagerViewModel.AnonymousClass1 anonymousClass1 = FragmentManagerViewModel.AnonymousClass1._instance;
            if (anonymousClass1 == null) {
                anonymousClass1 = new FragmentManagerViewModel.AnonymousClass1(i);
                FragmentManagerViewModel.AnonymousClass1._instance = anonymousClass1;
            }
            return anonymousClass1.create(cls);
        }
        AndroidSvg androidSvg = this.savedStateRegistry;
        androidSvg.getClass();
        Bundle consumeRestoredStateForKey = androidSvg.consumeRestoredStateForKey(str);
        if (consumeRestoredStateForKey == null) {
            consumeRestoredStateForKey = this.defaultArgs;
        }
        if (consumeRestoredStateForKey == null) {
            savedStateHandle = new SavedStateHandle();
        } else {
            ClassLoader classLoader = SavedStateHandle.class.getClassLoader();
            classLoader.getClass();
            consumeRestoredStateForKey.setClassLoader(classLoader);
            MapBuilder mapBuilder = new MapBuilder(consumeRestoredStateForKey.size());
            for (String str2 : consumeRestoredStateForKey.keySet()) {
                str2.getClass();
                mapBuilder.put(str2, consumeRestoredStateForKey.get(str2));
            }
            savedStateHandle = new SavedStateHandle(mapBuilder.build());
        }
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, savedStateHandle);
        savedStateHandleController.attachToLifecycle(androidSvg, lifecycleRegistry);
        Lifecycle$State lifecycle$State = lifecycleRegistry.state;
        if (lifecycle$State == Lifecycle$State.INITIALIZED || lifecycle$State.isAtLeast(Lifecycle$State.STARTED)) {
            androidSvg.runOnNextRecreation();
        } else {
            lifecycleRegistry.addObserver(new DefaultLifecycleObserverAdapter(i, lifecycleRegistry, androidSvg));
        }
        ViewModel newInstance = (!isAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, savedStateHandle) : SavedStateViewModelFactory_androidKt.newInstance(cls, findMatchingConstructor, application, savedStateHandle);
        newInstance.addCloseable("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return newInstance;
    }

    public SavedStateViewModelFactory() {
        this.factory = new ViewModelProvider$AndroidViewModelFactory(null);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        Constructor findMatchingConstructor;
        AutoMigration_14_15 autoMigration_14_15 = ViewModelKt.VIEW_MODEL_KEY;
        LinkedHashMap linkedHashMap = mutableCreationExtras.extras;
        String str = (String) linkedHashMap.get(autoMigration_14_15);
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(KClass kClass, MutableCreationExtras mutableCreationExtras) {
        kClass.getClass();
        return create(UnsignedKt.getJavaClass(kClass), mutableCreationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return create(cls, canonicalName);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Local and anonymous classes can not be ViewModels");
        return null;
    }
}
