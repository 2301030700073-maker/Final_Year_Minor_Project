package coil3.request;

import coil3.Image;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ErrorResult implements ImageResult {
    public final Image image;
    public final ImageRequest request;
    public final Throwable throwable;

    public ErrorResult(Image image, ImageRequest imageRequest, Throwable th) {
        this.image = image;
        this.request = imageRequest;
        this.throwable = th;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorResult)) {
            return false;
        }
        ErrorResult errorResult = (ErrorResult) obj;
        return Intrinsics.areEqual(this.image, errorResult.image) && Intrinsics.areEqual(this.request, errorResult.request) && this.throwable.equals(errorResult.throwable);
    }

    @Override // coil3.request.ImageResult
    public final Image getImage() {
        return this.image;
    }

    @Override // coil3.request.ImageResult
    public final ImageRequest getRequest() {
        return this.request;
    }

    public final int hashCode() {
        Image image = this.image;
        int hashCode = image == null ? 0 : image.hashCode();
        return this.throwable.hashCode() + ((this.request.hashCode() + (hashCode * 31)) * 31);
    }

    public final String toString() {
        return "ErrorResult(image=" + this.image + ", request=" + this.request + ", throwable=" + this.throwable + ")";
    }
}
