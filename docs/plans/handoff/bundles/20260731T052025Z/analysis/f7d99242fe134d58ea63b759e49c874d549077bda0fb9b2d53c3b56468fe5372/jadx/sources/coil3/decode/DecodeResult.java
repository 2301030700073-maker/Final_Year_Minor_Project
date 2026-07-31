package coil3.decode;

import coil3.Image;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DecodeResult {
    private final Image image;
    private final boolean isSampled;

    public DecodeResult(Image image, boolean z) {
        this.image = image;
        this.isSampled = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DecodeResult)) {
            return false;
        }
        DecodeResult decodeResult = (DecodeResult) obj;
        return Intrinsics.areEqual(this.image, decodeResult.image) && this.isSampled == decodeResult.isSampled;
    }

    public final Image getImage() {
        return this.image;
    }

    public int hashCode() {
        return (this.image.hashCode() * 31) + (this.isSampled ? 1231 : 1237);
    }

    public final boolean isSampled() {
        return this.isSampled;
    }

    public String toString() {
        return "DecodeResult(image=" + this.image + ", isSampled=" + this.isSampled + ")";
    }
}
