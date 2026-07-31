package coil3.svg;

import androidx.compose.animation.core.Animation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Svg$ViewBox {
    public final float bottom;
    public final float left;
    public final float right;
    public final float top;

    public Svg$ViewBox(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Svg$ViewBox)) {
            return false;
        }
        Svg$ViewBox svg$ViewBox = (Svg$ViewBox) obj;
        return Float.compare(this.left, svg$ViewBox.left) == 0 && Float.compare(this.top, svg$ViewBox.top) == 0 && Float.compare(this.right, svg$ViewBox.right) == 0 && Float.compare(this.bottom, svg$ViewBox.bottom) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.left) * 31, this.top, 31), this.right, 31);
    }

    public final String toString() {
        return "ViewBox(left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ")";
    }
}
