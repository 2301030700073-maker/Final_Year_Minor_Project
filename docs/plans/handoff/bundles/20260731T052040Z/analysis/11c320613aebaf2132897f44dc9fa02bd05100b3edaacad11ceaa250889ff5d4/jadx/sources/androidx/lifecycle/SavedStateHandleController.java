package androidx.lifecycle;

import androidx.activity.ComponentActivity$$ExternalSyntheticLambda5;
import androidx.lifecycle.Lifecycle;
import androidx.savedstate.SavedStateRegistry;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SavedStateHandleController implements LifecycleEventObserver, AutoCloseable {
    public final SavedStateHandle handle;
    public boolean isAttached;
    public final String key;

    public SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.key = str;
        this.handle = savedStateHandle;
    }

    public final void attachToLifecycle(Lifecycle lifecycle, SavedStateRegistry savedStateRegistry) {
        savedStateRegistry.getClass();
        lifecycle.getClass();
        if (this.isAttached) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Already attached to lifecycleOwner");
            return;
        }
        this.isAttached = true;
        lifecycle.addObserver(this);
        savedStateRegistry.registerSavedStateProvider(this.key, (ComponentActivity$$ExternalSyntheticLambda5) this.handle.impl.lazyDecoderFactories);
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.isAttached = false;
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }
}
