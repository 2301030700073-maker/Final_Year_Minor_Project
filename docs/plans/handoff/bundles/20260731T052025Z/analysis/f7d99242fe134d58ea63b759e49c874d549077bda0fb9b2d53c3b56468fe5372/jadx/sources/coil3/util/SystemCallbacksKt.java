package coil3.util;

import coil3.RealImageLoader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SystemCallbacksKt {
    public static final SystemCallbacks SystemCallbacks(RealImageLoader realImageLoader) {
        return new AndroidSystemCallbacks(realImageLoader);
    }
}
