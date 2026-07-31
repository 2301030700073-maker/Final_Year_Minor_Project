package androidx.savedstate;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.lifecycle.GeneratedAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.SavedStateHandlesProvider;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Recreator implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final Object owner;

    public /* synthetic */ Recreator(Object obj, int i) {
        this.$r8$classId = i;
        this.owner = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.$r8$classId;
        Object obj = this.owner;
        switch (i) {
            case 0:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) obj;
                if (event != Lifecycle.Event.ON_CREATE) {
                    throw new AssertionError("Next event must be ON_CREATE");
                }
                lifecycleOwner.getLifecycle().removeObserver(this);
                Bundle consumeRestoredStateForKey = savedStateRegistryOwner.getSavedStateRegistry().consumeRestoredStateForKey("androidx.savedstate.Restarter");
                if (consumeRestoredStateForKey == null) {
                    return;
                }
                ArrayList<String> stringArrayList = consumeRestoredStateForKey.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                    return;
                }
                for (String str : stringArrayList) {
                    try {
                        Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
                        asSubclass.getClass();
                        try {
                            Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                            declaredConstructor.setAccessible(true);
                            try {
                                Object newInstance = declaredConstructor.newInstance(null);
                                newInstance.getClass();
                                if (!(savedStateRegistryOwner instanceof ViewModelStoreOwner)) {
                                    _UtilJvmKt$$ExternalSyntheticLambda1.m(savedStateRegistryOwner, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ");
                                    return;
                                }
                                ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getViewModelStore();
                                SavedStateRegistry savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                                LinkedHashMap linkedHashMap = viewModelStore.map;
                                LinkedHashMap linkedHashMap2 = viewModelStore.map;
                                Iterator it = CollectionsKt.toSet(linkedHashMap.keySet()).iterator();
                                while (it.hasNext()) {
                                    ViewModel viewModel = (ViewModel) linkedHashMap2.get(it.next());
                                    if (viewModel != null) {
                                        ViewModelKt.attachHandleIfNeeded(viewModel, savedStateRegistry, savedStateRegistryOwner.getLifecycle());
                                    }
                                }
                                if (!CollectionsKt.toSet(linkedHashMap2.keySet()).isEmpty()) {
                                    savedStateRegistry.runOnNextRecreation();
                                }
                            } catch (Exception e) {
                                DecodeUtils$$ExternalSyntheticBUOutline0.m(Owner.CC.m("Failed to instantiate ", str), e);
                                return;
                            }
                        } catch (NoSuchMethodException e2) {
                            throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                        }
                    } catch (ClassNotFoundException e3) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m(Modifier.CC.m("Class ", str, " wasn't found"), e3);
                        return;
                    }
                }
                return;
            case 1:
                ComponentActivity componentActivity = (ComponentActivity) obj;
                if (componentActivity._viewModelStore == null) {
                    ComponentActivity.NonConfigurationInstances nonConfigurationInstances = (ComponentActivity.NonConfigurationInstances) componentActivity.getLastNonConfigurationInstance();
                    if (nonConfigurationInstances != null) {
                        componentActivity._viewModelStore = nonConfigurationInstances.viewModelStore;
                    }
                    if (componentActivity._viewModelStore == null) {
                        componentActivity._viewModelStore = new ViewModelStore();
                    }
                }
                componentActivity.lifecycleRegistry.removeObserver(this);
                return;
            case 2:
                new HashMap();
                GeneratedAdapter[] generatedAdapterArr = (GeneratedAdapter[]) obj;
                if (generatedAdapterArr.length > 0) {
                    GeneratedAdapter generatedAdapter = generatedAdapterArr[0];
                    throw null;
                }
                if (generatedAdapterArr.length <= 0) {
                    return;
                }
                GeneratedAdapter generatedAdapter2 = generatedAdapterArr[0];
                throw null;
            default:
                if (event != Lifecycle.Event.ON_CREATE) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m(event, "Next event must be ON_CREATE, it was ");
                    return;
                } else {
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    ((SavedStateHandlesProvider) obj).performRestore();
                    return;
                }
        }
    }
}
