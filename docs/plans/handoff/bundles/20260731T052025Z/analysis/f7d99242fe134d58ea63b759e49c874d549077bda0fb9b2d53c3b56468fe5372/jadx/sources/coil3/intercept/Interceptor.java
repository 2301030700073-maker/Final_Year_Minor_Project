package coil3.intercept;

import coil3.request.ImageRequest;
import coil3.size.Size;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Interceptor {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Chain {
        ImageRequest getRequest();

        Size getSize();

        Object proceed(Continuation continuation);

        Chain withRequest(ImageRequest imageRequest);

        Chain withSize(Size size);
    }

    Object intercept(Chain chain, Continuation continuation);
}
