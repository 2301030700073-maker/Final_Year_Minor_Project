package androidx.lifecycle.viewmodel.internal;

import coil3.size.ViewSizeResolver$CC;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewModelImpl {
    public volatile boolean isCleared;
    public final SynchronizedObject lock = new SynchronizedObject();
    public final LinkedHashMap keyToCloseables = new LinkedHashMap();
    public final LinkedHashSet closeables = new LinkedHashSet();

    public static void closeWithRuntimeException(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                ViewSizeResolver$CC.m(autoCloseable);
            } catch (Exception e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            }
        }
    }
}
