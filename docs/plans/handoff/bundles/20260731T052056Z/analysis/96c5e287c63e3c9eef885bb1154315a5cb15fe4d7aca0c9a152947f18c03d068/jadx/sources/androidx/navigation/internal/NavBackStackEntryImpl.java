package androidx.navigation.internal;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda1;
import coil3.svg.internal.AndroidSvg;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Reflection;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavBackStackEntryImpl {
    public final SavedStateViewModelFactory defaultViewModelProviderFactory;
    public final NavDestination destination;
    public final NavBackStackEntry entry;
    public Lifecycle$State hostLifecycleState;
    public final String id;
    public final Bundle immutableArgs;
    public final LifecycleRegistry lifecycle;
    public Lifecycle$State maxLifecycle;
    public final SynchronizedLazyImpl navResultSavedStateFactory$delegate;
    public final Bundle savedState;
    public boolean savedStateRegistryAttached;
    public final AndroidSvg savedStateRegistryController;
    public final NavControllerViewModel viewModelStoreProvider;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SavedStateViewModel extends ViewModel {
        public final SavedStateHandle handle;

        public SavedStateViewModel(SavedStateHandle savedStateHandle) {
            savedStateHandle.getClass();
            this.handle = savedStateHandle;
        }
    }

    public NavBackStackEntryImpl(NavBackStackEntry navBackStackEntry) {
        this.entry = navBackStackEntry;
        this.destination = navBackStackEntry.destination;
        this.immutableArgs = navBackStackEntry.immutableArgs;
        this.hostLifecycleState = navBackStackEntry.hostLifecycleState;
        this.viewModelStoreProvider = navBackStackEntry.viewModelStoreProvider;
        this.id = navBackStackEntry.id;
        this.savedState = navBackStackEntry.savedState;
        this.savedStateRegistryController = new AndroidSvg(new SavedStateRegistryImpl(navBackStackEntry, new Worker$$ExternalSyntheticLambda0(9, navBackStackEntry)));
        SynchronizedLazyImpl synchronizedLazyImpl = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda1(18));
        this.lifecycle = new LifecycleRegistry(navBackStackEntry, true);
        this.maxLifecycle = Lifecycle$State.INITIALIZED;
        this.defaultViewModelProviderFactory = (SavedStateViewModelFactory) synchronizedLazyImpl.getValue();
        this.navResultSavedStateFactory$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda1(19));
    }

    public final Bundle getArguments$navigation_common_release() {
        Bundle bundle = this.immutableArgs;
        if (bundle == null) {
            return null;
        }
        Bundle bundleOf = UStringsKt.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        bundleOf.putAll(bundle);
        return bundleOf;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.factory.getOrCreateKotlinClass(NavBackStackEntry.class).getSimpleName());
        sb.append("(" + this.id + ')');
        sb.append(" destination=");
        sb.append(this.destination);
        return sb.toString();
    }

    public final void updateState$navigation_common_release() {
        if (!this.savedStateRegistryAttached) {
            AndroidSvg androidSvg = this.savedStateRegistryController;
            ((SavedStateRegistryImpl) androidSvg.svg).performAttach();
            this.savedStateRegistryAttached = true;
            if (this.viewModelStoreProvider != null) {
                ViewModelKt.enableSavedStateHandles(this.entry);
            }
            androidSvg.performRestore(this.savedState);
        }
        int ordinal = this.hostLifecycleState.ordinal();
        int ordinal2 = this.maxLifecycle.ordinal();
        LifecycleRegistry lifecycleRegistry = this.lifecycle;
        if (ordinal < ordinal2) {
            lifecycleRegistry.setCurrentState(this.hostLifecycleState);
        } else {
            lifecycleRegistry.setCurrentState(this.maxLifecycle);
        }
    }
}
