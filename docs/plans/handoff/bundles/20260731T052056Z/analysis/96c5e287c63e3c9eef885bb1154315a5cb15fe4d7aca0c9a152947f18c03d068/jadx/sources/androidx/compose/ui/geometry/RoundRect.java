package androidx.compose.ui.geometry;

import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.TuplesKt;
import kotlin.UnsignedKt;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RoundRect {
    public final float bottom;
    public final long bottomLeftCornerRadius;
    public final long bottomRightCornerRadius;
    public final float left;
    public final float right;
    public final float top;
    public final long topLeftCornerRadius;
    public final long topRightCornerRadius;

    static {
        RegexKt.m839RoundRectgG7oq9Y(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0L);
    }

    public RoundRect(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
        this.topLeftCornerRadius = j;
        this.topRightCornerRadius = j2;
        this.bottomRightCornerRadius = j3;
        this.bottomLeftCornerRadius = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundRect)) {
            return false;
        }
        RoundRect roundRect = (RoundRect) obj;
        return Float.compare(this.left, roundRect.left) == 0 && Float.compare(this.top, roundRect.top) == 0 && Float.compare(this.right, roundRect.right) == 0 && Float.compare(this.bottom, roundRect.bottom) == 0 && TuplesKt.m817equalsimpl0(this.topLeftCornerRadius, roundRect.topLeftCornerRadius) && TuplesKt.m817equalsimpl0(this.topRightCornerRadius, roundRect.topRightCornerRadius) && TuplesKt.m817equalsimpl0(this.bottomRightCornerRadius, roundRect.bottomRightCornerRadius) && TuplesKt.m817equalsimpl0(this.bottomLeftCornerRadius, roundRect.bottomLeftCornerRadius);
    }

    public final float getHeight() {
        return this.bottom - this.top;
    }

    public final float getWidth() {
        return this.right - this.left;
    }

    public final int hashCode() {
        int m = Animation.CC.m(Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.left) * 31, this.top, 31), this.right, 31), this.bottom, 31);
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        int i = (((int) (j2 ^ (j2 >>> 32))) + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31;
        long j3 = this.bottomRightCornerRadius;
        int i2 = (((int) (j3 ^ (j3 >>> 32))) + i) * 31;
        long j4 = this.bottomLeftCornerRadius;
        return ((int) (j4 ^ (j4 >>> 32))) + i2;
    }

    public final String toString() {
        String str = UnsignedKt.toStringAsFixed(this.left) + ", " + UnsignedKt.toStringAsFixed(this.top) + ", " + UnsignedKt.toStringAsFixed(this.right) + ", " + UnsignedKt.toStringAsFixed(this.bottom);
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        boolean m817equalsimpl0 = TuplesKt.m817equalsimpl0(j, j2);
        long j3 = this.bottomRightCornerRadius;
        long j4 = this.bottomLeftCornerRadius;
        if (!m817equalsimpl0 || !TuplesKt.m817equalsimpl0(j2, j3) || !TuplesKt.m817equalsimpl0(j3, j4)) {
            StringBuilder m21m = Animation.CC.m21m("RoundRect(rect=", str, ", topLeft=");
            m21m.append((Object) TuplesKt.m819toStringimpl(j));
            m21m.append(", topRight=");
            m21m.append((Object) TuplesKt.m819toStringimpl(j2));
            m21m.append(", bottomRight=");
            m21m.append((Object) TuplesKt.m819toStringimpl(j3));
            m21m.append(", bottomLeft=");
            m21m.append((Object) TuplesKt.m819toStringimpl(j4));
            m21m.append(')');
            return m21m.toString();
        }
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            StringBuilder m21m2 = Animation.CC.m21m("RoundRect(rect=", str, ", radius=");
            m21m2.append(UnsignedKt.toStringAsFixed(Float.intBitsToFloat(i)));
            m21m2.append(')');
            return m21m2.toString();
        }
        StringBuilder m21m3 = Animation.CC.m21m("RoundRect(rect=", str, ", x=");
        m21m3.append(UnsignedKt.toStringAsFixed(Float.intBitsToFloat(i)));
        m21m3.append(", y=");
        m21m3.append(UnsignedKt.toStringAsFixed(Float.intBitsToFloat(i2)));
        m21m3.append(')');
        return m21m3.toString();
    }
}
