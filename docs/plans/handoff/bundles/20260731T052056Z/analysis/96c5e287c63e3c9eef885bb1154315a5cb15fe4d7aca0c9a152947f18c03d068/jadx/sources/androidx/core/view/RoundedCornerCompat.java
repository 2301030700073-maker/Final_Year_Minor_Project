package androidx.core.view;

import android.graphics.Point;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RoundedCornerCompat {
    public final Point mCenter;
    public final int mPosition;
    public final int mRadius;

    public RoundedCornerCompat(int i, int i2, Point point) {
        int i3 = point.x;
        int i4 = point.y;
        this.mPosition = i;
        this.mRadius = i2;
        this.mCenter = new Point(i3, i4);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RoundedCornerCompat)) {
            return false;
        }
        RoundedCornerCompat roundedCornerCompat = (RoundedCornerCompat) obj;
        return this.mPosition == roundedCornerCompat.mPosition && this.mRadius == roundedCornerCompat.mRadius && this.mCenter.equals(roundedCornerCompat.mCenter);
    }

    public final int hashCode() {
        return this.mCenter.hashCode() + (((this.mPosition * 31) + this.mRadius) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RoundedCornerCompat{position=");
        int i = this.mPosition;
        sb.append(i != 0 ? i != 1 ? i != 2 ? i != 3 ? "Invalid" : "BottomLeft" : "BottomRight" : "TopRight" : "TopLeft");
        sb.append(", radius=");
        sb.append(this.mRadius);
        sb.append(", center=");
        sb.append(this.mCenter);
        sb.append('}');
        return sb.toString();
    }
}
