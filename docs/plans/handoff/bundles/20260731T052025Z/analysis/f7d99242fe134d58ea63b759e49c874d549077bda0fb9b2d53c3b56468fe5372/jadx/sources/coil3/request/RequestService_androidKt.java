package coil3.request;

import coil3.ImageLoader;
import coil3.util.Logger;
import coil3.util.SystemCallbacks;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RequestService_androidKt {
    public static final RequestService RequestService(ImageLoader imageLoader, SystemCallbacks systemCallbacks, Logger logger) {
        return new AndroidRequestService(imageLoader, systemCallbacks, logger);
    }
}
