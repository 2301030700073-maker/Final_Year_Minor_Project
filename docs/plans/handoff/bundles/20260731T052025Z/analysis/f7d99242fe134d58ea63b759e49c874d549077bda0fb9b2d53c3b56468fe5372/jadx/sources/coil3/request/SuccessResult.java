package coil3.request;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.Image;
import coil3.decode.DataSource;
import coil3.memory.MemoryCache;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SuccessResult implements ImageResult {
    private final DataSource dataSource;
    private final String diskCacheKey;
    private final Image image;
    private final boolean isPlaceholderCached;
    private final boolean isSampled;
    private final MemoryCache.Key memoryCacheKey;
    private final ImageRequest request;

    public /* synthetic */ SuccessResult(Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache.Key key, String str, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(image, imageRequest, (i & 4) != 0 ? DataSource.MEMORY : dataSource, (i & 8) != 0 ? null : key, (i & 16) != 0 ? null : str, (i & 32) != 0 ? false : z, (i & 64) != 0 ? false : z2);
    }

    public static /* synthetic */ SuccessResult copy$default(SuccessResult successResult, Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache.Key key, String str, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            image = successResult.getImage();
        }
        if ((i & 2) != 0) {
            imageRequest = successResult.getRequest();
        }
        if ((i & 4) != 0) {
            dataSource = successResult.dataSource;
        }
        if ((i & 8) != 0) {
            key = successResult.memoryCacheKey;
        }
        if ((i & 16) != 0) {
            str = successResult.diskCacheKey;
        }
        if ((i & 32) != 0) {
            z = successResult.isSampled;
        }
        if ((i & 64) != 0) {
            z2 = successResult.isPlaceholderCached;
        }
        boolean z3 = z;
        boolean z4 = z2;
        String str2 = str;
        DataSource dataSource2 = dataSource;
        return successResult.copy(image, imageRequest, dataSource2, key, str2, z3, z4);
    }

    public final SuccessResult copy(Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache.Key key, String str, boolean z, boolean z2) {
        return new SuccessResult(image, imageRequest, dataSource, key, str, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SuccessResult)) {
            return false;
        }
        SuccessResult successResult = (SuccessResult) obj;
        return Intrinsics.areEqual(this.image, successResult.image) && Intrinsics.areEqual(this.request, successResult.request) && this.dataSource == successResult.dataSource && Intrinsics.areEqual(this.memoryCacheKey, successResult.memoryCacheKey) && Intrinsics.areEqual(this.diskCacheKey, successResult.diskCacheKey) && this.isSampled == successResult.isSampled && this.isPlaceholderCached == successResult.isPlaceholderCached;
    }

    public final DataSource getDataSource() {
        return this.dataSource;
    }

    public final String getDiskCacheKey() {
        return this.diskCacheKey;
    }

    @Override // coil3.request.ImageResult
    public Image getImage() {
        return this.image;
    }

    public final MemoryCache.Key getMemoryCacheKey() {
        return this.memoryCacheKey;
    }

    @Override // coil3.request.ImageResult
    public ImageRequest getRequest() {
        return this.request;
    }

    public int hashCode() {
        int hashCode = (this.dataSource.hashCode() + ((this.request.hashCode() + (this.image.hashCode() * 31)) * 31)) * 31;
        MemoryCache.Key key = this.memoryCacheKey;
        int hashCode2 = (hashCode + (key == null ? 0 : key.hashCode())) * 31;
        String str = this.diskCacheKey;
        return ((((hashCode2 + (str != null ? str.hashCode() : 0)) * 31) + (this.isSampled ? 1231 : 1237)) * 31) + (this.isPlaceholderCached ? 1231 : 1237);
    }

    public final boolean isPlaceholderCached() {
        return this.isPlaceholderCached;
    }

    public final boolean isSampled() {
        return this.isSampled;
    }

    public String toString() {
        Image image = this.image;
        ImageRequest imageRequest = this.request;
        DataSource dataSource = this.dataSource;
        MemoryCache.Key key = this.memoryCacheKey;
        String str = this.diskCacheKey;
        boolean z = this.isSampled;
        boolean z2 = this.isPlaceholderCached;
        StringBuilder sb = new StringBuilder("SuccessResult(image=");
        sb.append(image);
        sb.append(", request=");
        sb.append(imageRequest);
        sb.append(", dataSource=");
        sb.append(dataSource);
        sb.append(", memoryCacheKey=");
        sb.append(key);
        sb.append(", diskCacheKey=");
        sb.append(str);
        sb.append(", isSampled=");
        sb.append(z);
        sb.append(", isPlaceholderCached=");
        return CameraDevices$CC.m(")", sb, z2);
    }

    public SuccessResult(Image image, ImageRequest imageRequest, DataSource dataSource, MemoryCache.Key key, String str, boolean z, boolean z2) {
        this.image = image;
        this.request = imageRequest;
        this.dataSource = dataSource;
        this.memoryCacheKey = key;
        this.diskCacheKey = str;
        this.isSampled = z;
        this.isPlaceholderCached = z2;
    }
}
