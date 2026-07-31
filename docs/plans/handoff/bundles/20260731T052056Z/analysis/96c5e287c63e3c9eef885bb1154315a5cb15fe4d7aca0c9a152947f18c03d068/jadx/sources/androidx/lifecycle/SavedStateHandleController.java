package androidx.lifecycle;

import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda5;
import coil3.svg.internal.AndroidSvg;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedStateHandleController implements LifecycleEventObserver, AutoCloseable {
    public final SavedStateHandle handle;
    public boolean isAttached;
    public final String key;

    public SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.key = str;
        this.handle = savedStateHandle;
    }

    public final void attachToLifecycle(AndroidSvg androidSvg, LifecycleRegistry lifecycleRegistry) {
        androidSvg.getClass();
        lifecycleRegistry.getClass();
        if (this.isAttached) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already attached to lifecycleOwner");
            return;
        }
        this.isAttached = true;
        lifecycleRegistry.addObserver(this);
        androidSvg.registerSavedStateProvider(this.key, (FragmentManager$$ExternalSyntheticLambda5) this.handle.impl.tags);
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            this.isAttached = false;
            lifecycleOwner.getLifecycle().removeObserver(this);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }
}
