package coil3.decode;

import coil3.Image;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DecodeResult {
    public final Image image;
    public final boolean isSampled;

    public DecodeResult(Image image, boolean z) {
        this.image = image;
        this.isSampled = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DecodeResult)) {
            return false;
        }
        DecodeResult decodeResult = (DecodeResult) obj;
        return this.image.equals(decodeResult.image) && this.isSampled == decodeResult.isSampled;
    }

    public final int hashCode() {
        return (this.image.hashCode() * 31) + (this.isSampled ? 1231 : 1237);
    }

    public final String toString() {
        return "DecodeResult(image=" + this.image + ", isSampled=" + this.isSampled + ")";
    }
}
