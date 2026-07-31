package androidx.navigation.internal;

import android.os.Bundle;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavDestination;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import com.beetstra.jutf7.Base64Util;
import java.util.Arrays;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Reflection;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavBackStackEntryImpl {
    public final SavedStateViewModelFactory defaultViewModelProviderFactory;
    public final NavDestination destination;
    public final NavBackStackEntry entry;
    public Lifecycle.State hostLifecycleState;
    public final String id;
    public final Bundle immutableArgs;
    public final LifecycleRegistry lifecycle;
    public Lifecycle.State maxLifecycle;
    public final SynchronizedLazyImpl navResultSavedStateFactory$delegate;
    public final Bundle savedState;
    public boolean savedStateRegistryAttached;
    public final Base64Util savedStateRegistryController;
    public final NavControllerViewModel viewModelStoreProvider;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        this.savedStateRegistryController = new Base64Util(new SavedStateRegistryImpl(navBackStackEntry, new ImageLoader$Builder$$ExternalSyntheticLambda1(20, navBackStackEntry)), 4);
        SynchronizedLazyImpl synchronizedLazyImpl = new SynchronizedLazyImpl(new TextKt$$ExternalSyntheticLambda4(24));
        this.lifecycle = new LifecycleRegistry(navBackStackEntry, true);
        this.maxLifecycle = Lifecycle.State.INITIALIZED;
        this.defaultViewModelProviderFactory = (SavedStateViewModelFactory) synchronizedLazyImpl.getValue();
        this.navResultSavedStateFactory$delegate = new SynchronizedLazyImpl(new TextKt$$ExternalSyntheticLambda4(25));
    }

    public final Bundle getArguments$navigation_common_release() {
        Bundle bundle = this.immutableArgs;
        if (bundle == null) {
            return null;
        }
        Bundle bundleOf = Util.bundleOf((Pair[]) Arrays.copyOf(new Pair[0], 0));
        bundleOf.putAll(bundle);
        return bundleOf;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.getOrCreateKotlinClass(NavBackStackEntry.class).getSimpleName());
        sb.append("(" + this.id + ')');
        sb.append(" destination=");
        sb.append(this.destination);
        return sb.toString();
    }

    public final void updateState$navigation_common_release() {
        if (!this.savedStateRegistryAttached) {
            Base64Util base64Util = this.savedStateRegistryController;
            base64Util.performAttach();
            this.savedStateRegistryAttached = true;
            if (this.viewModelStoreProvider != null) {
                ViewModelKt.enableSavedStateHandles(this.entry);
            }
            base64Util.performRestore(this.savedState);
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
