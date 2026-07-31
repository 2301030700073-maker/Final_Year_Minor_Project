package androidx.navigation.fragment;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManager.PopBackStackState;
import androidx.fragment.app.FragmentOnAttachListener;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$NavControllerNavigatorState;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.work.Data;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
@Navigator.Name("fragment")
/* loaded from: classes.dex */
public class FragmentNavigator extends Navigator {
    public final int containerId;
    public final Context context;
    public final FragmentManager fragmentManager;
    public final LinkedHashSet savedIds = new LinkedHashSet();
    public final ArrayList pendingOps = new ArrayList();
    public final FragmentNavigator$$ExternalSyntheticLambda0 fragmentObserver = new FragmentNavigator$$ExternalSyntheticLambda0(0, this);
    public final DiskLruCache$$ExternalSyntheticLambda0 fragmentViewObserver = new DiskLruCache$$ExternalSyntheticLambda0(18, this);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class ClearEntryStateViewModel extends ViewModel {
        public WeakReference completeTransition;

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            WeakReference weakReference = this.completeTransition;
            if (weakReference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("completeTransition");
                throw null;
            }
            Function0 function0 = (Function0) weakReference.get();
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Destination extends NavDestination {
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
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, R$styleable.FragmentNavigator);
            obtainAttributes.getClass();
            String string = obtainAttributes.getString(0);
            if (string != null) {
                this._className = string;
            }
            obtainAttributes.recycle();
        }

        @Override // androidx.navigation.NavDestination
        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append(" class=");
            String str = this._className;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            return sb.toString();
        }
    }

    public FragmentNavigator(Context context, FragmentManager fragmentManager, int i) {
        this.context = context;
        this.fragmentManager = fragmentManager;
        this.containerId = i;
    }

    public static void addPendingOps$default(FragmentNavigator fragmentNavigator, String str, int i) {
        boolean z = (i & 2) == 0;
        boolean z2 = (i & 4) != 0;
        ArrayList arrayList = fragmentNavigator.pendingOps;
        if (z2) {
            CollectionsKt.removeAll(arrayList, new IconKt$$ExternalSyntheticLambda1(str, 6));
        }
        arrayList.add(new Pair(str, Boolean.valueOf(z)));
    }

    public static boolean isLoggingEnabled() {
        return Log.isLoggable("FragmentManager", 2) || Log.isLoggable("FragmentNavigator", 2);
    }

    public final void attachClearViewModel$navigation_fragment_release(Fragment fragment, NavBackStackEntry navBackStackEntry, NavController$NavControllerNavigatorState navController$NavControllerNavigatorState) {
        fragment.getClass();
        ViewModelStore viewModelStore = fragment.getViewModelStore();
        Data.Builder builder = new Data.Builder(3);
        builder.addInitializer(Reflection.getOrCreateKotlinClass(ClearEntryStateViewModel.class), new RoomDatabase$$ExternalSyntheticLambda0(24));
        InitializerViewModelFactory build = builder.build();
        CreationExtras.Empty empty = CreationExtras.Empty.INSTANCE;
        empty.getClass();
        Dispatcher dispatcher = new Dispatcher(viewModelStore, build, empty);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClearEntryStateViewModel.class);
        String qualifiedName = orCreateKotlinClass.getQualifiedName();
        if (qualifiedName == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Local and anonymous classes can not be ViewModels");
        } else {
            ((ClearEntryStateViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass)).completeTransition = new WeakReference(new Regex$$ExternalSyntheticLambda1(navBackStackEntry, navController$NavControllerNavigatorState, this, fragment));
        }
    }

    @Override // androidx.navigation.Navigator
    public final NavDestination createDestination() {
        return new Destination(this);
    }

    public final BackStackRecord createFragmentTransaction(NavBackStackEntry navBackStackEntry, NavOptions navOptions) {
        NavDestination navDestination = navBackStackEntry.destination;
        navDestination.getClass();
        Bundle arguments$navigation_common_release = navBackStackEntry.impl.getArguments$navigation_common_release();
        String str = ((Destination) navDestination)._className;
        if (str == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Fragment class was not set");
            return null;
        }
        char charAt = str.charAt(0);
        Context context = this.context;
        if (charAt == '.') {
            str = context.getPackageName() + str;
        }
        FragmentManager fragmentManager = this.fragmentManager;
        FragmentManager.AnonymousClass3 fragmentFactory = fragmentManager.getFragmentFactory();
        context.getClassLoader();
        Fragment instantiate = fragmentFactory.instantiate(str);
        instantiate.getClass();
        instantiate.setArguments(arguments$navigation_common_release);
        BackStackRecord backStackRecord = new BackStackRecord(fragmentManager);
        int i = navOptions != null ? navOptions.enterAnim : -1;
        int i2 = navOptions != null ? navOptions.exitAnim : -1;
        int i3 = navOptions != null ? navOptions.popEnterAnim : -1;
        int i4 = navOptions != null ? navOptions.popExitAnim : -1;
        if (i != -1 || i2 != -1 || i3 != -1 || i4 != -1) {
            if (i == -1) {
                i = 0;
            }
            if (i2 == -1) {
                i2 = 0;
            }
            if (i3 == -1) {
                i3 = 0;
            }
            int i5 = i4 != -1 ? i4 : 0;
            backStackRecord.mEnterAnim = i;
            backStackRecord.mExitAnim = i2;
            backStackRecord.mPopEnterAnim = i3;
            backStackRecord.mPopExitAnim = i5;
        }
        backStackRecord.replace(this.containerId, instantiate, navBackStackEntry.id);
        backStackRecord.setPrimaryNavigationFragment(instantiate);
        backStackRecord.mReorderingAllowed = true;
        return backStackRecord;
    }

    @Override // androidx.navigation.Navigator
    public final void navigate(List list, NavOptions navOptions) {
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager.isStateSaved()) {
            Log.i("FragmentNavigator", "Ignoring navigate() call: FragmentManager has already saved its state");
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) it.next();
            boolean isEmpty = ((List) getState().backStack.$$delegate_0.getValue()).isEmpty();
            if (navOptions == null || isEmpty || !navOptions.restoreState || !this.savedIds.remove(navBackStackEntry.id)) {
                BackStackRecord createFragmentTransaction = createFragmentTransaction(navBackStackEntry, navOptions);
                String str = navBackStackEntry.id;
                if (!isEmpty) {
                    NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.lastOrNull((List) getState().backStack.$$delegate_0.getValue());
                    if (navBackStackEntry2 != null) {
                        addPendingOps$default(this, navBackStackEntry2.id, 6);
                    }
                    addPendingOps$default(this, str, 6);
                    createFragmentTransaction.addToBackStack(str);
                }
                createFragmentTransaction.commit();
                if (isLoggingEnabled()) {
                    Log.v("FragmentNavigator", "Calling pushWithTransition via navigate() on entry " + navBackStackEntry);
                }
                getState().pushWithTransition(navBackStackEntry);
            } else {
                fragmentManager.enqueueAction(new FragmentManager.SaveBackStackState(fragmentManager, navBackStackEntry.id, 1), false);
                getState().pushWithTransition(navBackStackEntry);
            }
        }
    }

    @Override // androidx.navigation.Navigator
    public final void onAttach(final NavController$NavControllerNavigatorState navController$NavControllerNavigatorState) {
        this._state = navController$NavControllerNavigatorState;
        this.isAttached = true;
        if (isLoggingEnabled()) {
            Log.v("FragmentNavigator", "onAttach");
        }
        FragmentOnAttachListener fragmentOnAttachListener = new FragmentOnAttachListener() { // from class: androidx.navigation.fragment.FragmentNavigator$$ExternalSyntheticLambda3
            @Override // androidx.fragment.app.FragmentOnAttachListener
            public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
                Object obj;
                fragmentManager.getClass();
                fragment.getClass();
                NavController$NavControllerNavigatorState navController$NavControllerNavigatorState2 = NavController$NavControllerNavigatorState.this;
                List list = (List) navController$NavControllerNavigatorState2.backStack.$$delegate_0.getValue();
                ListIterator listIterator = list.listIterator(list.size());
                while (true) {
                    if (!listIterator.hasPrevious()) {
                        obj = null;
                        break;
                    } else {
                        obj = listIterator.previous();
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj).id, fragment.mTag)) {
                            break;
                        }
                    }
                }
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                boolean isLoggingEnabled = FragmentNavigator.isLoggingEnabled();
                FragmentNavigator fragmentNavigator = this;
                if (isLoggingEnabled) {
                    Log.v("FragmentNavigator", "Attaching fragment " + fragment + " associated with entry " + navBackStackEntry + " to FragmentManager " + fragmentNavigator.fragmentManager);
                }
                if (navBackStackEntry != null) {
                    fragment.mViewLifecycleOwnerLiveData.observe(fragment, new BaseActivity$sam$androidx_lifecycle_Observer$0(1, new SimpleActor$$ExternalSyntheticLambda0(fragmentNavigator, fragment, navBackStackEntry, 22)));
                    fragment.mLifecycleRegistry.addObserver(fragmentNavigator.fragmentObserver);
                    fragmentNavigator.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, navController$NavControllerNavigatorState2);
                }
            }
        };
        FragmentManager fragmentManager = this.fragmentManager;
        fragmentManager.mOnAttachListeners.add(fragmentOnAttachListener);
        fragmentManager.mBackStackChangeListeners.add(new FragmentManager.OnBackStackChangedListener() { // from class: androidx.navigation.fragment.FragmentNavigator$onAttach$2
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void onBackStackChangeCommitted(Fragment fragment, boolean z) {
                Object obj;
                Object obj2;
                FragmentNavigator fragmentNavigator = this;
                ArrayList arrayList = fragmentNavigator.pendingOps;
                fragment.getClass();
                NavController$NavControllerNavigatorState navController$NavControllerNavigatorState2 = NavController$NavControllerNavigatorState.this;
                ArrayList plus = CollectionsKt.plus((Collection) navController$NavControllerNavigatorState2.backStack.$$delegate_0.getValue(), (Iterable) navController$NavControllerNavigatorState2.transitionsInProgress.$$delegate_0.getValue());
                ListIterator listIterator = plus.listIterator(plus.size());
                while (true) {
                    obj = null;
                    if (!listIterator.hasPrevious()) {
                        obj2 = null;
                        break;
                    } else {
                        obj2 = listIterator.previous();
                        if (Intrinsics.areEqual(((NavBackStackEntry) obj2).id, fragment.mTag)) {
                            break;
                        }
                    }
                }
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                boolean z2 = z && arrayList.isEmpty() && fragment.mRemoving;
                Iterator it = arrayList.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (Intrinsics.areEqual(((Pair) next).first, fragment.mTag)) {
                        obj = next;
                        break;
                    }
                }
                Pair pair = (Pair) obj;
                if (pair != null) {
                    arrayList.remove(pair);
                }
                if (!z2 && FragmentNavigator.isLoggingEnabled()) {
                    Log.v("FragmentNavigator", "OnBackStackChangedCommitted for fragment " + fragment + " associated with entry " + navBackStackEntry);
                }
                boolean z3 = pair != null && ((Boolean) pair.second).booleanValue();
                if (!z && !z3 && navBackStackEntry == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) Modifier.CC.m("The fragment ", fragment, " is unknown to the FragmentNavigator. Please use the navigate() function to add fragments to the FragmentNavigator managed FragmentManager."));
                    return;
                }
                if (navBackStackEntry != null) {
                    fragmentNavigator.attachClearViewModel$navigation_fragment_release(fragment, navBackStackEntry, navController$NavControllerNavigatorState2);
                    if (z2) {
                        if (FragmentNavigator.isLoggingEnabled()) {
                            Log.v("FragmentNavigator", "OnBackStackChangedCommitted for fragment " + fragment + " popping associated entry " + navBackStackEntry + " via system back");
                        }
                        navController$NavControllerNavigatorState2.popWithTransition(navBackStackEntry, false);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void onBackStackChangeStarted(Fragment fragment, boolean z) {
                Object obj;
                fragment.getClass();
                if (z) {
                    NavController$NavControllerNavigatorState navController$NavControllerNavigatorState2 = NavController$NavControllerNavigatorState.this;
                    List list = (List) navController$NavControllerNavigatorState2.backStack.$$delegate_0.getValue();
                    ListIterator listIterator = list.listIterator(list.size());
                    while (true) {
                        if (!listIterator.hasPrevious()) {
                            obj = null;
                            break;
                        } else {
                            obj = listIterator.previous();
                            if (Intrinsics.areEqual(((NavBackStackEntry) obj).id, fragment.mTag)) {
                                break;
                            }
                        }
                    }
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                    if (FragmentNavigator.isLoggingEnabled()) {
                        Log.v("FragmentNavigator", "OnBackStackChangedStarted for fragment " + fragment + " associated with entry " + navBackStackEntry);
                    }
                    if (navBackStackEntry != null) {
                        navController$NavControllerNavigatorState2.prepareForTransition(navBackStackEntry);
                    }
                }
            }

            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public final void onBackStackChanged() {
            }
        });
    }

    @Override // androidx.navigation.Navigator
    public final void onLaunchSingleTop(NavBackStackEntry navBackStackEntry) {
        String str = navBackStackEntry.id;
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager.isStateSaved()) {
            Log.i("FragmentNavigator", "Ignoring onLaunchSingleTop() call: FragmentManager has already saved its state");
            return;
        }
        BackStackRecord createFragmentTransaction = createFragmentTransaction(navBackStackEntry, null);
        List list = (List) getState().backStack.$$delegate_0.getValue();
        if (list.size() > 1) {
            NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.getOrNull(list.size() - 2, list);
            if (navBackStackEntry2 != null) {
                addPendingOps$default(this, navBackStackEntry2.id, 6);
            }
            addPendingOps$default(this, str, 4);
            fragmentManager.enqueueAction(fragmentManager.new PopBackStackState(str, -1), false);
            addPendingOps$default(this, str, 2);
            createFragmentTransaction.addToBackStack(str);
        }
        createFragmentTransaction.commit();
        getState().onLaunchSingleTop(navBackStackEntry);
    }

    @Override // androidx.navigation.Navigator
    public final void onRestoreState(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("androidx-nav-fragment:navigator:savedIds");
        if (stringArrayList != null) {
            LinkedHashSet linkedHashSet = this.savedIds;
            linkedHashSet.clear();
            CollectionsKt.addAll(stringArrayList, linkedHashSet);
        }
    }

    @Override // androidx.navigation.Navigator
    public final Bundle onSaveState() {
        LinkedHashSet linkedHashSet = this.savedIds;
        if (linkedHashSet.isEmpty()) {
            return null;
        }
        return Util.bundleOf(new Pair("androidx-nav-fragment:navigator:savedIds", new ArrayList(linkedHashSet)));
    }

    @Override // androidx.navigation.Navigator
    public final void popBackStack(NavBackStackEntry navBackStackEntry, boolean z) {
        FragmentManager fragmentManager = this.fragmentManager;
        if (fragmentManager.isStateSaved()) {
            Log.i("FragmentNavigator", "Ignoring popBackStack() call: FragmentManager has already saved its state");
            return;
        }
        List list = (List) getState().backStack.$$delegate_0.getValue();
        int indexOf = list.indexOf(navBackStackEntry);
        List subList = list.subList(indexOf, list.size());
        NavBackStackEntry navBackStackEntry2 = (NavBackStackEntry) CollectionsKt.first(list);
        NavBackStackEntry navBackStackEntry3 = (NavBackStackEntry) CollectionsKt.getOrNull(indexOf - 1, list);
        if (navBackStackEntry3 != null) {
            addPendingOps$default(this, navBackStackEntry3.id, 6);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = subList.iterator();
        while (true) {
            int i = -1;
            int i2 = 0;
            if (!it.hasNext()) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    addPendingOps$default(this, ((NavBackStackEntry) it2.next()).id, 4);
                }
                if (z) {
                    for (NavBackStackEntry navBackStackEntry4 : CollectionsKt.reversed(subList)) {
                        if (Intrinsics.areEqual(navBackStackEntry4, navBackStackEntry2)) {
                            Log.i("FragmentNavigator", "FragmentManager cannot save the state of the initial destination " + navBackStackEntry4);
                        } else {
                            fragmentManager.enqueueAction(new FragmentManager.SaveBackStackState(fragmentManager, navBackStackEntry4.id, i2), false);
                            this.savedIds.add(navBackStackEntry4.id);
                        }
                    }
                } else {
                    fragmentManager.enqueueAction(fragmentManager.new PopBackStackState(navBackStackEntry.id, -1), false);
                }
                if (isLoggingEnabled()) {
                    Log.v("FragmentNavigator", "Calling popWithTransition via popBackStack() on entry " + navBackStackEntry + " with savedState " + z);
                }
                getState().popWithTransition(navBackStackEntry, z);
                return;
            }
            Object next = it.next();
            NavBackStackEntry navBackStackEntry5 = (NavBackStackEntry) next;
            StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 asSequence = CollectionsKt.asSequence(this.pendingOps);
            String str = navBackStackEntry5.id;
            Iterator it3 = asSequence.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                Pair pair = (Pair) it3.next();
                pair.getClass();
                String str2 = (String) pair.first;
                if (i2 < 0) {
                    IntOffsetKt.throwIndexOverflow();
                    throw null;
                }
                if (Intrinsics.areEqual(str, str2)) {
                    i = i2;
                    break;
                }
                i2++;
            }
            if (i >= 0 || !Intrinsics.areEqual(navBackStackEntry5.id, navBackStackEntry2.id)) {
                arrayList.add(next);
            }
        }
    }
}
