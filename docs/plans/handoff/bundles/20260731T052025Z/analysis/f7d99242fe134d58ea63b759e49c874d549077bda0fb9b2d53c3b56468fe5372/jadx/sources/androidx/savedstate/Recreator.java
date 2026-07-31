package androidx.savedstate;

import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.DialogFragmentNavigator;
import androidx.navigation.fragment.DialogFragmentNavigator$observer$1$WhenMappings;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.state.debug.CommonStatePrettyPrinter;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Recreator implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final Object owner;

    public /* synthetic */ Recreator(int i, Object obj) {
        this.$r8$classId = i;
        this.owner = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        View view;
        int i;
        int i2 = this.$r8$classId;
        Object obj = null;
        Object obj2 = this.owner;
        switch (i2) {
            case 0:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) obj2;
                if (event != Lifecycle.Event.ON_CREATE) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Next event must be ON_CREATE");
                    return;
                }
                lifecycleOwner.getLifecycle().removeObserver(this);
                Bundle consumeRestoredStateForKey = savedStateRegistryOwner.getSavedStateRegistry().consumeRestoredStateForKey("androidx.savedstate.Restarter");
                if (consumeRestoredStateForKey == null) {
                    return;
                }
                ArrayList<String> stringArrayList = consumeRestoredStateForKey.getStringArrayList("classes_to_restore");
                if (stringArrayList == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
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
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) savedStateRegistryOwner, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: ");
                                    return;
                                }
                                ViewModelStore viewModelStore = ((ViewModelStoreOwner) savedStateRegistryOwner).getViewModelStore();
                                Base64Util savedStateRegistry = savedStateRegistryOwner.getSavedStateRegistry();
                                viewModelStore.getClass();
                                LinkedHashMap linkedHashMap = viewModelStore.map;
                                Iterator it = new HashSet(linkedHashMap.keySet()).iterator();
                                while (it.hasNext()) {
                                    String str2 = (String) it.next();
                                    str2.getClass();
                                    ViewModel viewModel = (ViewModel) linkedHashMap.get(str2);
                                    if (viewModel != null) {
                                        ViewModelKt.attachHandleIfNeeded(viewModel, savedStateRegistry, savedStateRegistryOwner.getLifecycle());
                                    }
                                }
                                if (!new HashSet(linkedHashMap.keySet()).isEmpty()) {
                                    savedStateRegistry.runOnNextRecreation();
                                }
                            } catch (Exception e) {
                                DBUtil$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Failed to instantiate ", str), (Throwable) e);
                                return;
                            }
                        } catch (NoSuchMethodException e2) {
                            throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                        }
                    } catch (ClassNotFoundException e3) {
                        DBUtil$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Class ", str, " wasn't found"), (Throwable) e3);
                        return;
                    }
                }
                return;
            case 1:
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj2;
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
                if (event != Lifecycle.Event.ON_STOP || (view = ((Fragment) obj2).mView) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
                return;
            case 3:
                DialogFragmentNavigator dialogFragmentNavigator = (DialogFragmentNavigator) obj2;
                int i3 = DialogFragmentNavigator$observer$1$WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                if (i3 == 1) {
                    DialogFragment dialogFragment = (DialogFragment) lifecycleOwner;
                    Iterable iterable = (Iterable) dialogFragmentNavigator.getState().backStack.$$delegate_0.getValue();
                    if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                        Iterator it2 = iterable.iterator();
                        while (it2.hasNext()) {
                            if (Intrinsics.areEqual(((NavBackStackEntry) it2.next()).id, dialogFragment.mTag)) {
                                return;
                            }
                        }
                    }
                    dialogFragment.dismiss();
                    return;
                }
                if (i3 == 2) {
                    DialogFragment dialogFragment2 = (DialogFragment) lifecycleOwner;
                    for (Object obj3 : (Iterable) dialogFragmentNavigator.getState().transitionsInProgress.$$delegate_0.getValue()) {
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj3).id, dialogFragment2.mTag)) {
                            obj = obj3;
                        }
                    }
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                    if (navBackStackEntry != null) {
                        dialogFragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
                        return;
                    }
                    return;
                }
                if (i3 != 3) {
                    if (i3 != 4) {
                        return;
                    }
                    DialogFragment dialogFragment3 = (DialogFragment) lifecycleOwner;
                    for (Object obj4 : (Iterable) dialogFragmentNavigator.getState().transitionsInProgress.$$delegate_0.getValue()) {
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj4).id, dialogFragment3.mTag)) {
                            obj = obj4;
                        }
                    }
                    NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
                    if (navBackStackEntry2 != null) {
                        dialogFragmentNavigator.getState().markTransitionComplete(navBackStackEntry2);
                    }
                    dialogFragment3.mLifecycleRegistry.removeObserver(this);
                    return;
                }
                DialogFragment dialogFragment4 = (DialogFragment) lifecycleOwner;
                Dialog dialog = dialogFragment4.getDialog();
                if (dialog == null) {
                    DBUtil$$ExternalSyntheticBUOutline0.m$1(dialogFragment4, " does not have a Dialog.", "DialogFragment ");
                    return;
                }
                if (dialog.isShowing()) {
                    return;
                }
                List list = (List) dialogFragmentNavigator.getState().backStack.$$delegate_0.getValue();
                ListIterator listIterator = list.listIterator(list.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        i = -1;
                    } else if (Intrinsics.areEqual(((NavBackStackEntry) listIterator.previous()).id, dialogFragment4.mTag)) {
                        i = listIterator.nextIndex();
                    }
                }
                NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) CollectionsKt.getOrNull(i, list);
                if (!Intrinsics.areEqual(CollectionsKt.lastOrNull(list), navBackStackEntry3)) {
                    Log.i("DialogFragmentNavigator", "Dialog " + dialogFragment4 + " was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog");
                }
                if (navBackStackEntry3 != null) {
                    dialogFragmentNavigator.popWithTransition(i, navBackStackEntry3, false);
                    return;
                }
                return;
            default:
                ((CommonStatePrettyPrinter) obj2).updateFragmentMaxLifecycle(false);
                return;
        }
    }
}
