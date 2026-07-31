package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Operation$State;
import coil3.svg.internal.AndroidSvg;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FragmentActivity$HostCallbacks extends Operation$State implements ViewModelStoreOwner, OnBackPressedDispatcherOwner, ActivityResultRegistryOwner, SavedStateRegistryOwner, FragmentOnAttachListener {
    public final AppCompatActivity activity;
    public final AppCompatActivity context;
    public final FragmentManagerImpl fragmentManager;
    public final Handler handler;
    public final /* synthetic */ AppCompatActivity this$0;

    public FragmentActivity$HostCallbacks(AppCompatActivity appCompatActivity) {
        super(13);
        this.this$0 = appCompatActivity;
        Handler handler = new Handler();
        this.activity = appCompatActivity;
        this.context = appCompatActivity;
        this.handler = handler;
        this.fragmentManager = new FragmentManagerImpl();
    }

    @Override // androidx.activity.result.ActivityResultRegistryOwner
    public final ComponentActivity$activityResultRegistry$1 getActivityResultRegistry() {
        return this.this$0.activityResultRegistry;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    public final LifecycleRegistry getLifecycle() {
        return this.this$0.mFragmentLifecycleRegistry;
    }

    @Override // androidx.activity.OnBackPressedDispatcherOwner
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.this$0.getOnBackPressedDispatcher();
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    public final AndroidSvg getSavedStateRegistry() {
        return (AndroidSvg) this.this$0.savedStateRegistryController.renderOptions;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public final ViewModelStore getViewModelStore() {
        return this.this$0.getViewModelStore();
    }

    @Override // androidx.work.Operation$State
    public final View onFindViewById(int i) {
        return this.this$0.findViewById(i);
    }

    @Override // androidx.work.Operation$State
    public final boolean onHasView() {
        Window window = this.this$0.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.FragmentOnAttachListener
    public final void onAttachFragment() {
    }
}
