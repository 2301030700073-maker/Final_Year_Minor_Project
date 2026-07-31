package coil3.size;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealSizeResolver implements SizeResolver {
    private final Size size;

    public RealSizeResolver(Size size) {
        this.size = size;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RealSizeResolver) && Intrinsics.areEqual(this.size, ((RealSizeResolver) obj).size);
    }

    public int hashCode() {
        return this.size.hashCode();
    }

    @Override // coil3.size.SizeResolver
    public Object size(Continuation continuation) {
        return this.size;
    }

    public String toString() {
        return "RealSizeResolver(size=" + this.size + ")";
    }
}
