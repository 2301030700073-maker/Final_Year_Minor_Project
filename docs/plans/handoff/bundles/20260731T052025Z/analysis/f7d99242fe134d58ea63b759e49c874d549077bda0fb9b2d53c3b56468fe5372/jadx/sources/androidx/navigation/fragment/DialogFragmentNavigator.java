package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.lifecycle.LifecycleRegistry;
import androidx.navigation.FloatingWindow;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$NavControllerNavigatorState;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.savedstate.Recreator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Navigator.Name("dialog")
/* loaded from: classes.dex */
public final class DialogFragmentNavigator extends Navigator {
    public final Context context;
    public final FragmentManager fragmentManager;
    public final LinkedHashSet restoredTagsAwaitingAttach = new LinkedHashSet();
    public final Recreator observer = new Recreator(3, this);
    public final LinkedHashMap transitioningFragments = new LinkedHashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Destination extends NavDestination implements FloatingWindow {
        public String _className;

        @Override // androidx.navigation.NavDestination
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && (obj instanceof Destination) && super.equals(obj) && Intrinsics.areEqual(this._className, ((Destination) obj)._className);
        }

        @Override // androidx.navigation.NavDestination
        public final int hashCode() {
            int hashCode = super.hashCode() * 31;
            String str = this._className;
            return hashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.navigation.NavDestination
        public final void onInflate(Context context, AttributeSet attributeSet) {
            context.getClass();
            super.onInflate(context, attributeSet);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.DialogFragmentNavigator);
            obtainAttributes.getClass();
            String string = obtainAttributes.getString(0);
            if (string != null) {
                this._className = string;
            }
            obtainAttributes.recycle();
        }
    }

    public DialogFragmentNavigator(Context context, FragmentManager fragmentManager) {
        this.context = context;
        this.fragmentManager = fragmentManager;
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination createDestination() {
        return new Destination(this);
    }

    public final DialogFragment createDialogFragment(NavBackStackEntry navBackStackEntry) {
        NavDestination navDestination = navBackStackEntry.destination;
        navDestination.getClass();
        Destination destination = (Destination) navDestination;
        String str = destination._className;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("DialogFragment class was not set");
            return null;
        }
        char charAt = str.charAt(0);
        Context context = this.context;
        if (charAt == '.') {
            str = context.getPackageName() + str;
        }
        FragmentManager.AnonymousClass3 fragmentFactory = this.fragmentManager.getFragmentFactory();
        context.getClassLoader();
        Fragment instantiate = fragmentFactory.instantiate(str);
        instantiate.getClass();
        if (DialogFragment.class.isAssignableFrom(instantiate.getClass())) {
            DialogFragment dialogFragment = (DialogFragment) instantiate;
            dialogFragment.setArguments(navBackStackEntry.impl.getArguments$navigation_common_release());
            dialogFragment.mLifecycleRegistry.addObserver(this.observer);
            this.transitioningFragments.put(navBackStackEntry.id, dialogFragment);
            return dialogFragment;
        }
        StringBuilder sb = new StringBuilder("Dialog destination ");
        String str2 = destination._className;
        if (str2 != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(sb, str2, " is not an instance of DialogFragment"));
            return null;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("DialogFragment class was not set");
        return null;
    }

    @Override // androidx.navigation.Navigator
    public final void navigate(List list, NavOptions navOptions) {
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager.isStateSaved()) {
            Log.i("DialogFragmentNavigator", "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            createDialogFragment(navBackStackEntry).show(fragmentManager, navBackStackEntry.id);
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.lastOrNull((List) getState().backStack.$$delegate_0.getValue());
            boolean contains = CollectionsKt.contains((Iterable) getState().transitionsInProgress.$$delegate_0.getValue(), navBackStackEntry2);
            getState().pushWithTransition(navBackStackEntry);
            if (navBackStackEntry2 != null && !contains) {
                getState().markTransitionComplete(navBackStackEntry2);
            }
        }
    }

    @Override // androidx.navigation.Navigator
    public final void onAttach(NavController$NavControllerNavigatorState navController$NavControllerNavigatorState) {
        LifecycleRegistry lifecycleRegistry;
        this._state = navController$NavControllerNavigatorState;
        this.isAttached = true;
        Iterator it = ((List) navController$NavControllerNavigatorState.backStack.$$delegate_0.getValue()).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            FragmentManager fragmentManager = this.fragmentManager;
            if (!hasNext) {
                fragmentManager.mOnAttachListeners.add(new FragmentOnAttachListener() { // from class: androidx.navigation.fragment.DialogFragmentNavigator$$ExternalSyntheticLambda0
                    @Override // androidx.fragment.app.FragmentOnAttachListener
                    public final void onAttachFragment(FragmentManager fragmentManager2, Fragment fragment) {
                        fragmentManager2.getClass();
                        fragment.getClass();
                        DialogFragmentNavigator dialogFragmentNavigator = DialogFragmentNavigator.this;
                        LinkedHashSet linkedHashSet = dialogFragmentNavigator.restoredTagsAwaitingAttach;
                        if (TypeIntrinsics.asMutableCollection(linkedHashSet).remove(fragment.mTag)) {
                            fragment.mLifecycleRegistry.addObserver(dialogFragmentNavigator.observer);
                        }
                        LinkedHashMap linkedHashMap = dialogFragmentNavigator.transitioningFragments;
                        TypeIntrinsics.asMutableMap(linkedHashMap).remove(fragment.mTag);
                    }
                });
                return;
            }
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag(navBackStackEntry.id);
            if (dialogFragment == null || (lifecycleRegistry = dialogFragment.mLifecycleRegistry) == null) {
                this.restoredTagsAwaitingAttach.add(navBackStackEntry.id);
            } else {
                lifecycleRegistry.addObserver(this.observer);
            }
        }
    }

    @Override // androidx.navigation.Navigator
    public final void onLaunchSingleTop(NavBackStackEntry navBackStackEntry) {
        String str = navBackStackEntry.id;
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager.isStateSaved()) {
            Log.i("DialogFragmentNavigator", "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        DialogFragment dialogFragment = (DialogFragment) this.transitioningFragments.get(str);
        if (dialogFragment == null) {
            Fragment findFragmentByTag = fragmentManager.findFragmentByTag(str);
            dialogFragment = findFragmentByTag instanceof DialogFragment ? (DialogFragment) findFragmentByTag : null;
        }
        if (dialogFragment != null) {
            dialogFragment.mLifecycleRegistry.removeObserver(this.observer);
            dialogFragment.dismiss();
        }
        createDialogFragment(navBackStackEntry).show(fragmentManager, str);
        NavController$NavControllerNavigatorState state = getState();
        List list = (List) state.backStack.$$delegate_0.getValue();
        ListIterator listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) listIterator.previous();
            if (Intrinsics.areEqual(navBackStackEntry2.id, str)) {
                StateFlowImpl stateFlowImpl = state._transitionsInProgress;
                stateFlowImpl.updateState(null, Validate.plus(Validate.plus((Set) stateFlowImpl.getValue(), navBackStackEntry2), navBackStackEntry));
                state.onLaunchSingleTop(navBackStackEntry);
                return;
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("List contains no element matching the predicate.");
    }

    @Override // androidx.navigation.Navigator
    public final void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager.isStateSaved()) {
            Log.i("DialogFragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List list = (List) getState().backStack.$$delegate_0.getValue();
        int indexOf = list.indexOf(navBackStackEntry);
        Iterator it = CollectionsKt.reversed(list.subList(indexOf, list.size())).iterator();
        while (it.hasNext()) {
            Fragment findFragmentByTag = fragmentManager.findFragmentByTag(((NavBackStackEntry) it.next()).id);
            if (findFragmentByTag != null) {
                ((DialogFragment) findFragmentByTag).dismiss();
            }
        }
        popWithTransition(indexOf, navBackStackEntry, z);
    }

    public final void popWithTransition(int i, NavBackStackEntry navBackStackEntry, boolean z) {
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.getOrNull(i - 1, (List) getState().backStack.$$delegate_0.getValue());
        boolean contains = CollectionsKt.contains((Iterable) getState().transitionsInProgress.$$delegate_0.getValue(), navBackStackEntry2);
        getState().popWithTransition(navBackStackEntry, z);
        if (navBackStackEntry2 == null || contains) {
            return;
        }
        getState().markTransitionComplete(navBackStackEntry2);
    }
}
