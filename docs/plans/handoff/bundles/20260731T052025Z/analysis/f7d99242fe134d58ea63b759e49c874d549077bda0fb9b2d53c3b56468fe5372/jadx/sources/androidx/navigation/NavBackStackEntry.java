package androidx.navigation;

import android.os.Bundle;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.internal.NavBackStackEntryImpl;
import androidx.navigation.internal.NavContext;
import androidx.savedstate.SavedStateRegistryOwner;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import com.beetstra.jutf7.Base64Util;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavBackStackEntry implements LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner {
    public final NavContext context;
    public NavDestination destination;
    public Lifecycle.State hostLifecycleState;
    public final String id;
    public final Bundle immutableArgs;
    public final NavBackStackEntryImpl impl = new NavBackStackEntryImpl(this);
    public final Bundle savedState;
    public final NavControllerViewModel viewModelStoreProvider;

    public NavBackStackEntry(NavContext navContext, NavDestination navDestination, Bundle bundle, Lifecycle.State state, NavControllerViewModel navControllerViewModel, String str, Bundle bundle2) {
        this.context = navContext;
        this.destination = navDestination;
        this.immutableArgs = bundle;
        this.hostLifecycleState = state;
        this.viewModelStoreProvider = navControllerViewModel;
        this.id = str;
        this.savedState = bundle2;
        new SynchronizedLazyImpl(new ImageLoader$Builder$$ExternalSyntheticLambda1(16, this));
    }

    public final boolean equals(Object obj) {
        Set<String> keySet;
        if (obj != null && (obj instanceof NavBackStackEntry)) {
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
            Bundle bundle = navBackStackEntry.immutableArgs;
            if (Intrinsics.areEqual(this.id, navBackStackEntry.id) && Intrinsics.areEqual(this.destination, navBackStackEntry.destination) && Intrinsics.areEqual(this.impl.lifecycle, navBackStackEntry.impl.lifecycle) && Intrinsics.areEqual(getSavedStateRegistry(), navBackStackEntry.getSavedStateRegistry())) {
                Bundle bundle2 = this.immutableArgs;
                if (Intrinsics.areEqual(bundle2, bundle)) {
                    return true;
                }
                if (bundle2 != null && (keySet = bundle2.keySet()) != null) {
                    Set<String> set = keySet;
                    if ((set instanceof Collection) && set.isEmpty()) {
                        return true;
                    }
                    for (String str : set) {
                        if (!Intrinsics.areEqual(bundle2.get(str), bundle != null ? bundle.get(str) : null)) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.lifecycle.viewmodel.MutableCreationExtras getDefaultViewModelCreationExtras() {
        /*
            r5 = this;
            androidx.navigation.internal.NavBackStackEntryImpl r0 = r5.impl
            r0.getClass()
            androidx.lifecycle.viewmodel.MutableCreationExtras r1 = new androidx.lifecycle.viewmodel.MutableCreationExtras
            r2 = 0
            r1.<init>(r2)
            com.jcraft.jzlib.Adler32 r2 = androidx.lifecycle.ViewModelKt.SAVED_STATE_REGISTRY_OWNER_KEY
            androidx.navigation.NavBackStackEntry r3 = r0.entry
            java.util.LinkedHashMap r4 = r1.extras
            r4.put(r2, r3)
            okio.Path$Companion r2 = androidx.lifecycle.ViewModelKt.VIEW_MODEL_STORE_OWNER_KEY
            r4.put(r2, r3)
            android.os.Bundle r0 = r0.getArguments$navigation_common_release()
            if (r0 == 0) goto L24
            com.mikepenz.fastadapter.VerboseLogger r2 = androidx.lifecycle.ViewModelKt.DEFAULT_ARGS_KEY
            r4.put(r2, r0)
        L24:
            r0 = 0
            androidx.navigation.internal.NavContext r5 = r5.context
            if (r5 == 0) goto L3a
            android.content.Context r5 = r5.context
            if (r5 == 0) goto L32
            android.content.Context r5 = r5.getApplicationContext()
            goto L33
        L32:
            r5 = r0
        L33:
            boolean r2 = r5 instanceof android.app.Application
            if (r2 == 0) goto L3a
            android.app.Application r5 = (android.app.Application) r5
            goto L3b
        L3a:
            r5 = r0
        L3b:
            if (r5 == 0) goto L3e
            r0 = r5
        L3e:
            if (r0 == 0) goto L45
            com.bumptech.glide.GlideBuilder$1 r5 = androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory.APPLICATION_KEY
            r4.put(r5, r0)
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavBackStackEntry.getDefaultViewModelCreationExtras():androidx.lifecycle.viewmodel.MutableCreationExtras");
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final ViewModelProvider$Factory getDefaultViewModelProviderFactory() {
        return this.impl.defaultViewModelProviderFactory;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.impl.lifecycle;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final Base64Util getSavedStateRegistry() {
        return (Base64Util) this.impl.savedStateRegistryController.inverseAlphabet;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        NavBackStackEntryImpl navBackStackEntryImpl = this.impl;
        if (!navBackStackEntryImpl.savedStateRegistryAttached) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You cannot access the NavBackStackEntry's ViewModels until it is added to the NavController's back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state).");
            return null;
        }
        if (navBackStackEntryImpl.lifecycle.state == Lifecycle.State.DESTROYED) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You cannot access the NavBackStackEntry's ViewModels after the NavBackStackEntry is destroyed.");
            return null;
        }
        NavControllerViewModel navControllerViewModel = navBackStackEntryImpl.viewModelStoreProvider;
        if (navControllerViewModel == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph.");
            return null;
        }
        String str = navBackStackEntryImpl.id;
        str.getClass();
        LinkedHashMap linkedHashMap = navControllerViewModel.viewModelStores;
        ViewModelStore viewModelStore = (ViewModelStore) linkedHashMap.get(str);
        if (viewModelStore != null) {
            return viewModelStore;
        }
        ViewModelStore viewModelStore2 = new ViewModelStore();
        linkedHashMap.put(str, viewModelStore2);
        return viewModelStore2;
    }

    public final int hashCode() {
        Set<String> keySet;
        int hashCode = this.destination.hashCode() + (this.id.hashCode() * 31);
        Bundle bundle = this.immutableArgs;
        if (bundle != null && (keySet = bundle.keySet()) != null) {
            Iterator<T> it = keySet.iterator();
            while (it.hasNext()) {
                int i = hashCode * 31;
                Object obj = bundle.get((String) it.next());
                hashCode = i + (obj != null ? obj.hashCode() : 0);
            }
        }
        return getSavedStateRegistry().hashCode() + ((this.impl.lifecycle.hashCode() + (hashCode * 31)) * 31);
    }

    public final void setMaxLifecycle(Lifecycle.State state) {
        NavBackStackEntryImpl navBackStackEntryImpl = this.impl;
        navBackStackEntryImpl.getClass();
        navBackStackEntryImpl.maxLifecycle = state;
        navBackStackEntryImpl.updateState$navigation_common_release();
    }

    public final String toString() {
        return this.impl.toString();
    }
}
