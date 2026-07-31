package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.util.Consumer;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import com.beetstra.jutf7.Base64Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FragmentActivity$HostCallbacks extends FragmentContainer implements OnConfigurationChangedProvider, ViewModelStoreOwner, OnBackPressedDispatcherOwner, ActivityResultRegistryOwner, SavedStateRegistryOwner, FragmentOnAttachListener {
    public final AppCompatActivity activity;
    public final AppCompatActivity context;
    public final FragmentManagerImpl fragmentManager;
    public final Handler handler;
    public final /* synthetic */ AppCompatActivity this$0;

    public FragmentActivity$HostCallbacks(AppCompatActivity appCompatActivity) {
        this.this$0 = appCompatActivity;
        Handler handler = new Handler();
        this.activity = appCompatActivity;
        this.context = appCompatActivity;
        this.handler = handler;
        this.fragmentManager = new FragmentManagerImpl();
    }

    @Override // androidx.core.content.OnConfigurationChangedProvider
    public final void addOnConfigurationChangedListener(Consumer consumer) {
        this.this$0.addOnConfigurationChangedListener(consumer);
    }

    @Override // androidx.activity.result.ActivityResultRegistryOwner
    public final ComponentActivity$activityResultRegistry$1 getActivityResultRegistry() {
        return this.this$0.activityResultRegistry;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final Lifecycle getLifecycle() {
        return this.this$0.mFragmentLifecycleRegistry;
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.this$0.getOnBackPressedDispatcher();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final Base64Util getSavedStateRegistry() {
        return (Base64Util) this.this$0.savedStateRegistryController.inverseAlphabet;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        return this.this$0.getViewModelStore();
    }

    @Override // androidx.fragment.app.FragmentContainer
    public final View onFindViewById(int i) {
        return this.this$0.findViewById(i);
    }

    @Override // androidx.fragment.app.FragmentContainer
    public final boolean onHasView() {
        Window window = this.this$0.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.core.content.OnConfigurationChangedProvider
    public final void removeOnConfigurationChangedListener(Consumer consumer) {
        this.this$0.removeOnConfigurationChangedListener(consumer);
    }

    @Override // androidx.fragment.app.FragmentOnAttachListener
    public final void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
    }
}
