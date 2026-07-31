package androidx.savedstate;

import android.os.Bundle;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.GeneratedAdapter;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.SavedStateHandlesProvider;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Recreator implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final Object owner;

    public /* synthetic */ Recreator(int i, Object obj) {
        this.$r8$classId = i;
        this.owner = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        View view;
        int i = this.$r8$classId;
        Object obj = this.owner;
        switch (i) {
            case 0:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) obj;
                if (lifecycle$Event != Lifecycle$Event.ON_CREATE) {
                    throw new AssertionError("Next event must be ON_CREATE");
                }
                lifecycleOwner.getLifecycle().removeObserver(this);
                Bundle consumeRestoredStateForKey = savedStateRegistryOwner.getSavedStateRegistry().consumeRestoredStateForKey("androidx.savedstate.Restarter");
                if (consumeRestoredStateForKey == null) {
                    return;
                }
                ArrayList<String> stringArrayList = consumeRestoredStateForKey.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                    return;
                }
                for (String str : stringArrayList) {
                    try {
                        Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry$AutoRecreated.class);
                        asSubclass.getClass();
                        try {
                            Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                            declaredConstructor.setAccessible(true);
                            try {
                                Object newInstance = declaredConstructor.newInstance(null);
                                newInstance.getClass();
                                if (!(savedStateRegistryOwner instanceof ViewModelStoreOwner)) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ", savedStateRegistryOwner);
                                    return;
                                }
                                ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getViewModelStore();
                                AndroidSvg savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
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
                                ContextsKt$$ExternalSyntheticBUOutline0.m(Modifier.CC.m("Failed to instantiate ", str), (Throwable) e);
                                return;
                            }
                        } catch (NoSuchMethodException e2) {
                            throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                        }
                    } catch (ClassNotFoundException e3) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m(Animation.CC.m("Class ", str, " wasn't found"), (Throwable) e3);
                        return;
                    }
                }
                return;
            case 1:
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj;
                if (appCompatActivity._viewModelStore == null) {
                    ComponentActivity.NonConfigurationInstances nonConfigurationInstances = (ComponentActivity.NonConfigurationInstances) appCompatActivity.getLastNonConfigurationInstance();
                    if (nonConfigurationInstances != null) {
                        appCompatActivity._viewModelStore = nonConfigurationInstances.viewModelStore;
                    }
                    if (appCompatActivity._viewModelStore == null) {
                        appCompatActivity._viewModelStore = new ViewModelStore();
                    }
                }
                appCompatActivity.lifecycleRegistry.removeObserver(this);
                return;
            case 2:
                if (lifecycle$Event != Lifecycle$Event.ON_STOP || (view = ((Fragment) obj).mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
                return;
            case 3:
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
            case 4:
                if (lifecycle$Event != Lifecycle$Event.ON_CREATE) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Next event must be ON_CREATE, it was ", lifecycle$Event);
                    return;
                } else {
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    ((SavedStateHandlesProvider) obj).performRestore();
                    return;
                }
            default:
                ((FragmentStateAdapter.FragmentMaxLifecycleEnforcer) obj).updateFragmentMaxLifecycle(false);
                return;
        }
    }
}
