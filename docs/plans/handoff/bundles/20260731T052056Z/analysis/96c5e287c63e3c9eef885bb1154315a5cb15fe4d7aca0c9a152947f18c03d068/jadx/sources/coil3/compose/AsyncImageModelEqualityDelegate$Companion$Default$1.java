package coil3.compose;

import coil3.request.ImageRequest;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AsyncImageModelEqualityDelegate$Companion$Default$1 {
    public static final AsyncImageModelEqualityDelegate$Companion$Default$1 Default = new AsyncImageModelEqualityDelegate$Companion$Default$1();

    public final boolean equals(Object obj, Object obj2) {
        if (this == obj2) {
            return true;
        }
        if (!(obj instanceof ImageRequest) || !(obj2 instanceof ImageRequest)) {
            return Intrinsics.areEqual(obj, obj2);
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        ImageRequest imageRequest2 = (ImageRequest) obj2;
        return Intrinsics.areEqual(imageRequest.context, imageRequest2.context) && imageRequest.data.equals(imageRequest2.data) && imageRequest.memoryCacheKeyExtras.equals(imageRequest2.memoryCacheKeyExtras) && Intrinsics.areEqual(imageRequest.sizeResolver, imageRequest2.sizeResolver) && imageRequest.scale == imageRequest2.scale && imageRequest.precision == imageRequest2.precision;
    }

    public final int hashCode(Object obj) {
        if (!(obj instanceof ImageRequest)) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        return imageRequest.precision.hashCode() + ((imageRequest.scale.hashCode() + ((imageRequest.sizeResolver.hashCode() + ((imageRequest.memoryCacheKeyExtras.hashCode() + ((imageRequest.data.hashCode() + (imageRequest.context.hashCode() * 31)) * 961)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        return "AsyncImageModelEqualityDelegate.Default";
    }
}
