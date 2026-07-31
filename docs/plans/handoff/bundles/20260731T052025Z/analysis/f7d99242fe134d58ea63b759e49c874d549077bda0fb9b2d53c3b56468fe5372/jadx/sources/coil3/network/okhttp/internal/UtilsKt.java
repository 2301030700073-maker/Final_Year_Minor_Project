package coil3.network.okhttp.internal;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UtilsKt {
    public static final void closeQuietly(AutoCloseable autoCloseable) {
        try {
            ViewSizeResolver.CC.m(autoCloseable);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }
}
