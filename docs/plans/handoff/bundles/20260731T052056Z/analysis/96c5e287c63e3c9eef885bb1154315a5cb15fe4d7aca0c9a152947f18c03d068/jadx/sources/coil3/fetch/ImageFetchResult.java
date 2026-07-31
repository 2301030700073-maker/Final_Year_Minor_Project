package coil3.fetch;

import coil3.Image;
import coil3.decode.DataSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageFetchResult implements FetchResult {
    public final DataSource dataSource;
    public final Image image;
    public final boolean isSampled;

    public ImageFetchResult(Image image, boolean z, DataSource dataSource) {
        this.image = image;
        this.isSampled = z;
        this.dataSource = dataSource;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImageFetchResult)) {
            return false;
        }
        ImageFetchResult imageFetchResult = (ImageFetchResult) obj;
        return this.image.equals(imageFetchResult.image) && this.isSampled == imageFetchResult.isSampled && this.dataSource == imageFetchResult.dataSource;
    }

    public final int hashCode() {
        return this.dataSource.hashCode() + (((this.image.hashCode() * 31) + (this.isSampled ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        return "ImageFetchResult(image=" + this.image + ", isSampled=" + this.isSampled + ", dataSource=" + this.dataSource + ")";
    }
}
