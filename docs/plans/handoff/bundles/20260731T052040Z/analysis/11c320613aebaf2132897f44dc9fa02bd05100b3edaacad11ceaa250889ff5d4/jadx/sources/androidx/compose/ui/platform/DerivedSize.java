package androidx.compose.ui.platform;

import androidx.compose.ui.unit.IntSize;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        if (!(obj instanceof DerivedSize)) {
            return false;
        }
        DerivedSize derivedSize = (DerivedSize) obj;
        return IntSize.m449equalsimpl0(this.pxSize, derivedSize.pxSize) && this.dpSize == derivedSize.dpSize;
    }

    public final int hashCode() {
        long j = this.pxSize;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.dpSize;
        return i + ((int) ((j2 >>> 32) ^ j2));
    }
}
