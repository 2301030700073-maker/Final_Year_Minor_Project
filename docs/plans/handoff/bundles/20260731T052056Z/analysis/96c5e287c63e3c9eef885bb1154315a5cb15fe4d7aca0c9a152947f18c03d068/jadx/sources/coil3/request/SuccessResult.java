package coil3.request;

import coil3.Image;
import coil3.decode.DataSource;
import coil3.memory.MemoryCache$Key;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuccessResult implements ImageResult {
    public final DataSource dataSource;
    public final String diskCacheKey;
    public final Image image;
    public final boolean isPlaceholderCached;
    public final boolean isSampled;
    public final MemoryCache$Key memoryCacheKey;
    public final ImageRequest request;

    public SuccessResult(Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache$Key memoryCache$Key, String str, boolean z, boolean z2) {
        this.image = image;
        this.request = imageRequest;
        this.dataSource = dataSource;
        this.memoryCacheKey = memoryCache$Key;
        this.diskCacheKey = str;
        this.isSampled = z;
        this.isPlaceholderCached = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuccessResult)) {
            return false;
        }
        SuccessResult successResult = (SuccessResult) obj;
        return Intrinsics.areEqual(this.image, successResult.image) && Intrinsics.areEqual(this.request, successResult.request) && this.dataSource == successResult.dataSource && Intrinsics.areEqual(this.memoryCacheKey, successResult.memoryCacheKey) && Intrinsics.areEqual(this.diskCacheKey, successResult.diskCacheKey) && this.isSampled == successResult.isSampled && this.isPlaceholderCached == successResult.isPlaceholderCached;
    }

    @Override // coil3.request.ImageResult
    public final ImageRequest getRequest() {
        return this.request;
    }

    public final int hashCode() {
        int hashCode = (this.dataSource.hashCode() + ((this.request.hashCode() + (this.image.hashCode() * 31)) * 31)) * 31;
        MemoryCache$Key memoryCache$Key = this.memoryCacheKey;
        int hashCode2 = (hashCode + (memoryCache$Key == null ? 0 : memoryCache$Key.hashCode())) * 31;
        String str = this.diskCacheKey;
        return ((((hashCode2 + (str != null ? str.hashCode() : 0)) * 31) + (this.isSampled ? 1231 : 1237)) * 31) + (this.isPlaceholderCached ? 1231 : 1237);
    }

    public final String toString() {
        return "SuccessResult(image=" + this.image + ", request=" + this.request + ", dataSource=" + this.dataSource + ", memoryCacheKey=" + this.memoryCacheKey + ", diskCacheKey=" + this.diskCacheKey + ", isSampled=" + this.isSampled + ", isPlaceholderCached=" + this.isPlaceholderCached + ")";
    }
}
