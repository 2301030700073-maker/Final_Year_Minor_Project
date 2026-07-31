package androidx.lifecycle;

import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.transition.Transition;
import okhttp3.Dispatcher;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AtomicReference {
    public static final Transition.AnonymousClass1 VIEW_MODEL_KEY = new Transition.AnonymousClass1();
    public final Object base;

    public AtomicReference(ViewModelStore viewModelStore, ViewModelProvider$Factory viewModelProvider$Factory, CreationExtras creationExtras) {
        viewModelStore.getClass();
        viewModelProvider$Factory.getClass();
        creationExtras.getClass();
        this.base = new Dispatcher(viewModelStore, viewModelProvider$Factory, creationExtras);
    }

    public AtomicReference() {
        this.base = new java.util.concurrent.atomic.AtomicReference(null);
    }

    public AtomicReference(ProcessLifecycleOwner processLifecycleOwner) {
        this.base = processLifecycleOwner;
    }
}
