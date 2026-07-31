package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import java.util.Iterator;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ViewModel {
    public final ViewModelImpl impl;

    public ViewModel() {
        this.impl = new ViewModelImpl();
    }

    public final void clear$lifecycle_viewmodel() {
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl != null && !viewModelImpl.isCleared) {
            viewModelImpl.isCleared = true;
            synchronized (viewModelImpl.lock) {
                try {
                    Iterator it = viewModelImpl.keyToCloseables.values().iterator();
                    while (it.hasNext()) {
                        ViewModelImpl.closeWithRuntimeException((AutoCloseable) it.next());
                    }
                    Iterator it2 = viewModelImpl.closeables.iterator();
                    while (it2.hasNext()) {
                        ViewModelImpl.closeWithRuntimeException((AutoCloseable) it2.next());
                    }
                    viewModelImpl.closeables.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        onCleared();
    }

    public final AutoCloseable getCloseable(String str) {
        AutoCloseable autoCloseable;
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl == null) {
            return null;
        }
        synchronized (viewModelImpl.lock) {
            autoCloseable = (AutoCloseable) viewModelImpl.keyToCloseables.get(str);
        }
        return autoCloseable;
    }

    public ViewModel(CoroutineScope coroutineScope) {
        this.impl = new ViewModelImpl(coroutineScope);
    }

    public void onCleared() {
    }
}
