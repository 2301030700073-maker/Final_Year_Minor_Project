package androidx.recyclerview.widget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewBoundsCheck$BoundFlags {
    public int mBoundFlags;
    public int mChildEnd;
    public int mChildStart;
    public int mRvEnd;
    public int mRvStart;

    public final boolean boundsMatch() {
        int i = this.mBoundFlags;
        int i2 = 2;
        if ((i & 7) != 0) {
            int i3 = this.mChildStart;
            int i4 = this.mRvStart;
            if (((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 112) != 0) {
            int i5 = this.mChildStart;
            int i6 = this.mRvEnd;
            if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 1792) != 0) {
            int i7 = this.mChildEnd;
            int i8 = this.mRvStart;
            if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                return false;
            }
        }
        if ((i & 28672) != 0) {
            int i9 = this.mChildEnd;
            int i10 = this.mRvEnd;
            if (i9 > i10) {
                i2 = 1;
            } else if (i9 != i10) {
                i2 = 4;
            }
            if (((i2 << 12) & i) == 0) {
                return false;
            }
        }
        return true;
    }
}
