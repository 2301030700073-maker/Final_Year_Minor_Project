package coil3.request;

import coil3.Image;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ErrorResult implements ImageResult {
    private final Image image;
    private final ImageRequest request;
    private final Throwable throwable;

    public ErrorResult(Image image, ImageRequest imageRequest, Throwable th) {
        this.image = image;
        this.request = imageRequest;
        this.throwable = th;
    }

    public static /* synthetic */ ErrorResult copy$default(ErrorResult errorResult, Image image, ImageRequest imageRequest, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            image = errorResult.getImage();
        }
        if ((i & 2) != 0) {
            imageRequest = errorResult.getRequest();
        }
        if ((i & 4) != 0) {
            th = errorResult.throwable;
        }
        return errorResult.copy(image, imageRequest, th);
    }

    public final ErrorResult copy(Image image, ImageRequest imageRequest, Throwable th) {
        return new ErrorResult(image, imageRequest, th);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ErrorResult)) {
            return false;
        }
        ErrorResult errorResult = (ErrorResult) obj;
        return Intrinsics.areEqual(this.image, errorResult.image) && Intrinsics.areEqual(this.request, errorResult.request) && Intrinsics.areEqual(this.throwable, errorResult.throwable);
    }

    @Override // coil3.request.ImageResult
    public Image getImage() {
        return this.image;
    }

    @Override // coil3.request.ImageResult
    public ImageRequest getRequest() {
        return this.request;
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public int hashCode() {
        Image image = this.image;
        int hashCode = image == null ? 0 : image.hashCode();
        return this.throwable.hashCode() + ((this.request.hashCode() + (hashCode * 31)) * 31);
    }

    public String toString() {
        return "ErrorResult(image=" + this.image + ", request=" + this.request + ", throwable=" + this.throwable + ")";
    }
}
