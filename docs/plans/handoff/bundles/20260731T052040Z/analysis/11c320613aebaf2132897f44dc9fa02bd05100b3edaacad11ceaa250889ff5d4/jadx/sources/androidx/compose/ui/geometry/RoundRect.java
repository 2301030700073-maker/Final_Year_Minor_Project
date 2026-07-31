package androidx.compose.ui.geometry;

import androidx.compose.ui.Modifier;
import androidx.core.os.BundleKt;
import kotlin.math.MathKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        Jsoup.m731RoundRectgG7oq9Y(0.0f, 0.0f, 0.0f, 0.0f, 0L);
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
        return Float.compare(this.left, roundRect.left) == 0 && Float.compare(this.top, roundRect.top) == 0 && Float.compare(this.right, roundRect.right) == 0 && Float.compare(this.bottom, roundRect.bottom) == 0 && MathKt.m663equalsimpl0(this.topLeftCornerRadius, roundRect.topLeftCornerRadius) && MathKt.m663equalsimpl0(this.topRightCornerRadius, roundRect.topRightCornerRadius) && MathKt.m663equalsimpl0(this.bottomRightCornerRadius, roundRect.bottomRightCornerRadius) && MathKt.m663equalsimpl0(this.bottomLeftCornerRadius, roundRect.bottomLeftCornerRadius);
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.bottom, Modifier.CC.m(this.right, Modifier.CC.m(this.top, Float.floatToIntBits(this.left) * 31, 31), 31), 31);
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        int i = (((int) (j2 ^ (j2 >>> 32))) + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31;
        long j3 = this.bottomRightCornerRadius;
        int i2 = (((int) (j3 ^ (j3 >>> 32))) + i) * 31;
        long j4 = this.bottomLeftCornerRadius;
        return ((int) (j4 ^ (j4 >>> 32))) + i2;
    }

    public final String toString() {
        String str = BundleKt.toStringAsFixed(this.left) + ", " + BundleKt.toStringAsFixed(this.top) + ", " + BundleKt.toStringAsFixed(this.right) + ", " + BundleKt.toStringAsFixed(this.bottom);
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        boolean m663equalsimpl0 = MathKt.m663equalsimpl0(j, j2);
        long j3 = this.bottomRightCornerRadius;
        long j4 = this.bottomLeftCornerRadius;
        if (!m663equalsimpl0 || !MathKt.m663equalsimpl0(j2, j3) || !MathKt.m663equalsimpl0(j3, j4)) {
            StringBuilder m180m = Modifier.CC.m180m("RoundRect(rect=", str, ", topLeft=");
            m180m.append((Object) MathKt.m667toStringimpl(j));
            m180m.append(", topRight=");
            m180m.append((Object) MathKt.m667toStringimpl(j2));
            m180m.append(", bottomRight=");
            m180m.append((Object) MathKt.m667toStringimpl(j3));
            m180m.append(", bottomLeft=");
            m180m.append((Object) MathKt.m667toStringimpl(j4));
            m180m.append(')');
            return m180m.toString();
        }
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            StringBuilder m180m2 = Modifier.CC.m180m("RoundRect(rect=", str, ", radius=");
            m180m2.append(BundleKt.toStringAsFixed(Float.intBitsToFloat(i)));
            m180m2.append(')');
            return m180m2.toString();
        }
        StringBuilder m180m3 = Modifier.CC.m180m("RoundRect(rect=", str, ", x=");
        m180m3.append(BundleKt.toStringAsFixed(Float.intBitsToFloat(i)));
        m180m3.append(", y=");
        m180m3.append(BundleKt.toStringAsFixed(Float.intBitsToFloat(i2)));
        m180m3.append(')');
        return m180m3.toString();
    }
}
