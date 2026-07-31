package androidx.lifecycle;

import androidx.lifecycle.viewmodel.internal.ViewModelImpl;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ViewModel {
    public final ViewModelImpl impl = new ViewModelImpl();

    public final void addCloseable(String str, AutoCloseable autoCloseable) {
        AutoCloseable autoCloseable2;
        ViewModelImpl viewModelImpl = this.impl;
        if (viewModelImpl.isCleared) {
            ViewModelImpl.closeWithRuntimeException(autoCloseable);
            return;
        }
        synchronized (viewModelImpl.lock) {
            autoCloseable2 = (AutoCloseable) viewModelImpl.keyToCloseables.put(str, autoCloseable);
        }
        ViewModelImpl.closeWithRuntimeException(autoCloseable2);
    }

    public final void clear$lifecycle_viewmodel() {
        ViewModelImpl viewModelImpl = this.impl;
        if (!viewModelImpl.isCleared) {
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
        synchronized (viewModelImpl.lock) {
            autoCloseable = (AutoCloseable) viewModelImpl.keyToCloseables.get(str);
        }
        return autoCloseable;
    }

    public void onCleared() {
    }
}
