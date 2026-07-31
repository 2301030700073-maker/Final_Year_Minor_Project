package coil3.size;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final Object size(Continuation continuation) {
        return Size.ORIGINAL;
    }

    public final String toString() {
        return "RealSizeResolver(size=" + Size.ORIGINAL + ")";
    }
}
