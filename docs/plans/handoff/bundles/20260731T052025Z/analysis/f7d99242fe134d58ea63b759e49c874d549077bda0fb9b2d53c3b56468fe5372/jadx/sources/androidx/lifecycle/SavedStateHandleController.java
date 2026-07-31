package androidx.lifecycle;

import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda6;
import androidx.lifecycle.Lifecycle;
import com.beetstra.jutf7.Base64Util;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SavedStateHandleController implements LifecycleEventObserver, AutoCloseable {
    public final SavedStateHandle handle;
    public boolean isAttached;
    public final String key;

    public SavedStateHandleController(String str, SavedStateHandle savedStateHandle) {
        this.key = str;
        this.handle = savedStateHandle;
    }

    public final void attachToLifecycle(Base64Util base64Util, Lifecycle lifecycle) {
        base64Util.getClass();
        lifecycle.getClass();
        if (this.isAttached) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Already attached to lifecycleOwner");
            return;
        }
        this.isAttached = true;
        lifecycle.addObserver(this);
        base64Util.registerSavedStateProvider(this.key, (FragmentManager$$ExternalSyntheticLambda6) this.handle.impl.this$0);
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
