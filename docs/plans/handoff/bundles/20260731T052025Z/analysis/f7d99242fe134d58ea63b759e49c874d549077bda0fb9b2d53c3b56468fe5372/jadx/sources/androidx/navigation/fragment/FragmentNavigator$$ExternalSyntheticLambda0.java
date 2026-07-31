package androidx.navigation.fragment;

import android.util.Log;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavControllerImpl;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FragmentNavigator$$ExternalSyntheticLambda0 implements LifecycleEventObserver {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FragmentNavigator$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                FragmentNavigator fragmentNavigator = (FragmentNavigator) obj;
                if (event == Lifecycle.Event.ON_DESTROY) {
                    Fragment fragment = (Fragment) lifecycleOwner;
                    Object obj2 = null;
                    for (Object obj3 : (Iterable) fragmentNavigator.getState().transitionsInProgress.$$delegate_0.getValue()) {
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj3).id, fragment.mTag)) {
                            obj2 = obj3;
                        }
                    }
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                    if (navBackStackEntry != null) {
                        if (FragmentNavigator.isLoggingEnabled()) {
                            Log.v("FragmentNavigator", "Marking transition complete for entry " + navBackStackEntry + " due to fragment " + lifecycleOwner + " lifecycle reaching DESTROYED");
                        }
                        fragmentNavigator.getState().markTransitionComplete(navBackStackEntry);
                        break;
                    }
                }
                break;
            case 1:
                AbstractComposeView abstractComposeView = (AbstractComposeView) obj;
                if (event == Lifecycle.Event.ON_DESTROY) {
                    abstractComposeView.disposeComposition();
                    break;
                }
                break;
            case 2:
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj;
                navControllerImpl.hostLifecycleState = event.getTargetState();
                if (navControllerImpl._graph != null) {
                    Iterator it = CollectionsKt.toMutableList((Collection) navControllerImpl.backQueue).iterator();
                    while (it.hasNext()) {
                        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) it.next();
                        navBackStackEntry2.getClass();
                        NavBackStackEntryImpl navBackStackEntryImpl = navBackStackEntry2.impl;
                        navBackStackEntryImpl.getClass();
                        navBackStackEntryImpl.entry.hostLifecycleState = event.getTargetState();
                        navBackStackEntryImpl.hostLifecycleState = event.getTargetState();
                        navBackStackEntryImpl.updateState$navigation_common_release();
                    }
                    break;
                }
                break;
            default:
                SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) obj;
                if (event == Lifecycle.Event.ON_START) {
                    savedStateRegistryImpl.isAllowingSavingState = true;
                    break;
                } else if (event == Lifecycle.Event.ON_STOP) {
                    savedStateRegistryImpl.isAllowingSavingState = false;
                    break;
                }
                break;
        }
    }
}
