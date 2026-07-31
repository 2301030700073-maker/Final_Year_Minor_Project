package coil3;

import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImageLoaders {
    public static final ImageResult executeBlocking(ImageLoader imageLoader, ImageRequest imageRequest) {
        return (ImageResult) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new ImageLoaders$executeBlocking$1(imageLoader, imageRequest, null));
    }
}
