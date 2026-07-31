package androidx.lifecycle.viewmodel.internal;

import coil3.size.ViewSizeResolver;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewModelImpl {
    public volatile boolean isCleared;
    public final SynchronizedObject lock = new SynchronizedObject();
    public final LinkedHashMap keyToCloseables = new LinkedHashMap();
    public final LinkedHashSet closeables = new LinkedHashSet();

    public ViewModelImpl(CoroutineScope coroutineScope) {
        addCloseable("androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY", new CloseableCoroutineScope(coroutineScope.getCoroutineContext()));
    }

    public static void closeWithRuntimeException(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                ViewSizeResolver.CC.m(autoCloseable);
            } catch (Exception e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            }
        }
    }

    public final void addCloseable(String str, AutoCloseable autoCloseable) {
        AutoCloseable autoCloseable2;
        if (this.isCleared) {
            closeWithRuntimeException(autoCloseable);
            return;
        }
        synchronized (this.lock) {
            autoCloseable2 = (AutoCloseable) this.keyToCloseables.put(str, autoCloseable);
        }
        closeWithRuntimeException(autoCloseable2);
    }

    public ViewModelImpl() {
    }
}
