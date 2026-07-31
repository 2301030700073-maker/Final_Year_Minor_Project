package androidx.navigation;

import android.os.Bundle;
import android.util.Log;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.material3.MenuKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelStore;
import androidx.navigation.internal.NavControllerImpl;
import androidx.transition.Transition;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavController$NavControllerNavigatorState {
    public final StateFlowImpl _backStack;
    public final StateFlowImpl _transitionsInProgress;
    public final ReadonlyStateFlow backStack;
    public final Transition.AnonymousClass1 backStackLock;
    public boolean isNavigating;
    public final Navigator navigator;
    public final /* synthetic */ NavHostController this$0;
    public final ReadonlyStateFlow transitionsInProgress;

    public NavController$NavControllerNavigatorState(NavHostController navHostController, Navigator navigator) {
        navigator.getClass();
        this.this$0 = navHostController;
        this.backStackLock = new Transition.AnonymousClass1(15, false);
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(EmptyList.INSTANCE);
        this._backStack = MutableStateFlow;
        StateFlowImpl MutableStateFlow2 = StateFlowKt.MutableStateFlow(EmptySet.INSTANCE);
        this._transitionsInProgress = MutableStateFlow2;
        this.backStack = new ReadonlyStateFlow(MutableStateFlow);
        this.transitionsInProgress = new ReadonlyStateFlow(MutableStateFlow2);
        this.navigator = navigator;
    }

    public final void addInternal(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        synchronized (this.backStackLock) {
            StateFlowImpl stateFlowImpl = this._backStack;
            stateFlowImpl.updateState(null, CollectionsKt.plus((Collection) stateFlowImpl.getValue(), (Object) navBackStackEntry));
        }
    }

    public final NavBackStackEntry createBackStackEntry(NavDestination navDestination, Bundle bundle) {
        NavControllerImpl navControllerImpl = this.this$0.impl;
        navControllerImpl.getClass();
        return Lock.create$default(navControllerImpl.navController.navContext, navDestination, bundle, navControllerImpl.getHostLifecycleState$navigation_runtime_release(), navControllerImpl.viewModel);
    }

    public final void markTransitionComplete(NavBackStackEntry navBackStackEntry) {
        NavControllerViewModel navControllerViewModel;
        ViewModelStore viewModelStore;
        navBackStackEntry.getClass();
        NavControllerImpl navControllerImpl = this.this$0.impl;
        StateFlowImpl stateFlowImpl = navControllerImpl._visibleEntries;
        String str = navBackStackEntry.id;
        LinkedHashMap linkedHashMap = navControllerImpl.entrySavedState;
        boolean areEqual = Intrinsics.areEqual(linkedHashMap.get(navBackStackEntry), Boolean.TRUE);
        StateFlowImpl stateFlowImpl2 = this._transitionsInProgress;
        stateFlowImpl2.updateState(null, UuidKt.minus((Set) stateFlowImpl2.getValue(), navBackStackEntry));
        linkedHashMap.remove(navBackStackEntry);
        ArrayDeque arrayDeque = navControllerImpl.backQueue;
        if (arrayDeque.contains(navBackStackEntry)) {
            if (this.isNavigating) {
                return;
            }
            navControllerImpl.updateBackStackLifecycle$navigation_runtime_release();
            StateFlowImpl stateFlowImpl3 = navControllerImpl._currentBackStack;
            ArrayList arrayList = new ArrayList(arrayDeque);
            stateFlowImpl3.getClass();
            stateFlowImpl3.updateState(null, arrayList);
            ArrayList populateVisibleEntries$navigation_runtime_release = navControllerImpl.populateVisibleEntries$navigation_runtime_release();
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, populateVisibleEntries$navigation_runtime_release);
            return;
        }
        navControllerImpl.unlinkChildFromParent$navigation_runtime_release(navBackStackEntry);
        if (navBackStackEntry.impl.lifecycle.state.isAtLeast(Lifecycle$State.CREATED)) {
            navBackStackEntry.setMaxLifecycle(Lifecycle$State.DESTROYED);
        }
        if (!arrayDeque.isEmpty()) {
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((NavBackStackEntry) it.next()).id.equals(str)) {
                    break;
                }
            }
        }
        if (!areEqual && (navControllerViewModel = navControllerImpl.viewModel) != null && (viewModelStore = (ViewModelStore) navControllerViewModel.viewModelStores.remove(str)) != null) {
            viewModelStore.clear();
        }
        navControllerImpl.updateBackStackLifecycle$navigation_runtime_release();
        ArrayList populateVisibleEntries$navigation_runtime_release2 = navControllerImpl.populateVisibleEntries$navigation_runtime_release();
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, populateVisibleEntries$navigation_runtime_release2);
    }

    public final void pop(NavBackStackEntry navBackStackEntry, boolean z) {
        navBackStackEntry.getClass();
        NavControllerImpl navControllerImpl = this.this$0.impl;
        Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(this, navBackStackEntry, z);
        navControllerImpl.getClass();
        Navigator navigator = navControllerImpl._navigatorProvider.getNavigator(navBackStackEntry.destination.navigatorName);
        navControllerImpl.entrySavedState.put(navBackStackEntry, Boolean.valueOf(z));
        if (!navigator.equals(this.navigator)) {
            Object obj = navControllerImpl.navigatorState.get(navigator);
            obj.getClass();
            ((NavController$NavControllerNavigatorState) obj).pop(navBackStackEntry, z);
            return;
        }
        MenuKt$$ExternalSyntheticLambda0 menuKt$$ExternalSyntheticLambda0 = navControllerImpl.popFromBackStackHandler;
        if (menuKt$$ExternalSyntheticLambda0 != null) {
            menuKt$$ExternalSyntheticLambda0.invoke(navBackStackEntry);
            recomposer$$ExternalSyntheticLambda6.invoke();
            return;
        }
        ArrayDeque arrayDeque = navControllerImpl.backQueue;
        int indexOf = arrayDeque.indexOf(navBackStackEntry);
        if (indexOf < 0) {
            Log.i("NavController", "Ignoring pop of " + navBackStackEntry + " as it was not found on the current back stack");
            return;
        }
        int i = indexOf + 1;
        if (i != arrayDeque.size) {
            navControllerImpl.popBackStackInternal$navigation_runtime_release(((NavBackStackEntry) arrayDeque.get(i)).destination.impl.size, true, false);
        }
        NavControllerImpl.popEntryFromBackStack$navigation_runtime_release$default(navControllerImpl, navBackStackEntry);
        recomposer$$ExternalSyntheticLambda6.invoke();
        navControllerImpl.updateOnBackPressedCallbackEnabledCallback.invoke();
        navControllerImpl.dispatchOnDestinationChanged$navigation_runtime_release();
    }

    public final void popWithTransition(NavBackStackEntry navBackStackEntry, boolean z) {
        Object obj;
        navBackStackEntry.getClass();
        StateFlowImpl stateFlowImpl = this.backStack.$$delegate_0;
        StateFlowImpl stateFlowImpl2 = this._transitionsInProgress;
        Iterable iterable = (Iterable) stateFlowImpl2.getValue();
        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
            Iterator it = iterable.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (((NavBackStackEntry) it.next()) == navBackStackEntry) {
                    Iterable iterable2 = (Iterable) stateFlowImpl.getValue();
                    if ((iterable2 instanceof Collection) && ((Collection) iterable2).isEmpty()) {
                        return;
                    }
                    Iterator it2 = iterable2.iterator();
                    while (it2.hasNext()) {
                        if (((NavBackStackEntry) it2.next()) == navBackStackEntry) {
                        }
                    }
                    return;
                }
            }
        }
        stateFlowImpl2.updateState(null, UuidKt.plus((Set) stateFlowImpl2.getValue(), navBackStackEntry));
        List list = (List) stateFlowImpl.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            }
            obj = listIterator.previous();
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) obj;
            if (!Intrinsics.areEqual(navBackStackEntry2, navBackStackEntry) && ((List) stateFlowImpl.getValue()).lastIndexOf(navBackStackEntry2) < ((List) stateFlowImpl.getValue()).lastIndexOf(navBackStackEntry)) {
                break;
            }
        }
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) obj;
        if (navBackStackEntry3 != null) {
            stateFlowImpl2.updateState(null, UuidKt.plus((Set) stateFlowImpl2.getValue(), navBackStackEntry3));
        }
        pop(navBackStackEntry, z);
    }

    public final void push(NavBackStackEntry navBackStackEntry) {
        navBackStackEntry.getClass();
        NavControllerImpl navControllerImpl = this.this$0.impl;
        navControllerImpl.getClass();
        Navigator navigator = navControllerImpl._navigatorProvider.getNavigator(navBackStackEntry.destination.navigatorName);
        if (!navigator.equals(this.navigator)) {
            Object obj = navControllerImpl.navigatorState.get(navigator);
            if (obj != null) {
                ((NavController$NavControllerNavigatorState) obj).push(navBackStackEntry);
                return;
            } else {
                ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m(new StringBuilder("NavigatorBackStack for "), navBackStackEntry.destination.navigatorName, " should already be created"));
                return;
            }
        }
        Function1 function1 = navControllerImpl.addToBackStackHandler;
        if (function1 != null) {
            function1.invoke(navBackStackEntry);
            addInternal(navBackStackEntry);
        } else {
            Log.i("NavController", "Ignoring add of destination " + navBackStackEntry.destination + " outside of the call to navigate(). ");
        }
    }
}
