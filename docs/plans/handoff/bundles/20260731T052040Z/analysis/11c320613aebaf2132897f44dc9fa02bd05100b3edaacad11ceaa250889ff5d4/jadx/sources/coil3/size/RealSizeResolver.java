package coil3.size;

import coil3.RealImageLoader$execute$3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RealSizeResolver implements SizeResolver {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RealSizeResolver)) {
            return false;
        }
        Size size = Size.ORIGINAL;
        return size.equals(size);
    }

    public final int hashCode() {
        return Size.ORIGINAL.hashCode();
    }

    @Override // coil3.size.SizeResolver
    public final Object size(RealImageLoader$execute$3 realImageLoader$execute$3) {
        return Size.ORIGINAL;
    }

    public final String toString() {
        return "RealSizeResolver(size=" + Size.ORIGINAL + ")";
    }
}
