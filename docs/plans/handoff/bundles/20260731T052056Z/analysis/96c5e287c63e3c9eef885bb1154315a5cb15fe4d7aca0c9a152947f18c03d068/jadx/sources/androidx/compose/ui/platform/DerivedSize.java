package androidx.compose.ui.platform;

import androidx.compose.ui.unit.IntSize;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DerivedSize {
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
            return IntSize.m721equalsimpl0(this.pxSize, derivedSize.pxSize) && this.dpSize == derivedSize.dpSize;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.pxSize;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.dpSize;
        return ((int) ((j2 >>> 32) ^ j2)) + i;
    }
}
