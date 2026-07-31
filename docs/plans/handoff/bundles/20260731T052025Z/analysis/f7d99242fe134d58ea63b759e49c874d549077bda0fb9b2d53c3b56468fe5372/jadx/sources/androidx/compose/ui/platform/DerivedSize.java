package androidx.compose.ui.platform;

import androidx.compose.ui.unit.IntSize;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DerivedSize {
    public static final DerivedSize Zero = new DerivedSize(0, 0);
    public final long dpSize;
    public final long pxSize;

    public DerivedSize(long j, long j2) {
        this.pxSize = j;
        this.dpSize = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DerivedSize) {
            DerivedSize derivedSize = (DerivedSize) obj;
            return IntSize.m768equalsimpl0(this.pxSize, derivedSize.pxSize) && this.dpSize == derivedSize.dpSize;
        }
        return false;
    }

    public final int hashCode() {
        int m769hashCodeimpl = IntSize.m769hashCodeimpl(this.pxSize) * 31;
        long j = this.dpSize;
        return ((int) (j ^ (j >>> 32))) + m769hashCodeimpl;
    }
}
