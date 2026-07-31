package androidx.compose.ui.geometry;

import androidx.compose.ui.Modifier;
import androidx.core.os.BundleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Rect {
    public static final Rect Zero = new Rect(0.0f, 0.0f, 0.0f, 0.0f);
    public final float bottom;
    public final float left;
    public final float right;
    public final float top;

    public Rect(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Rect)) {
            return false;
        }
        Rect rect = (Rect) obj;
        return Float.compare(this.left, rect.left) == 0 && Float.compare(this.top, rect.top) == 0 && Float.compare(this.right, rect.right) == 0 && Float.compare(this.bottom, rect.bottom) == 0;
    }

    /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
    public final long m203getCenterF1C5BW0() {
        float f = this.right;
        float f2 = this.left;
        float f3 = ((f - f2) / 2.0f) + f2;
        float f4 = this.bottom;
        float f5 = this.top;
        return (Float.floatToRawIntBits(((f4 - f5) / 2.0f) + f5) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32);
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m204getSizeNHjbRc() {
        float f = this.right - this.left;
        float f2 = this.bottom - this.top;
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + Modifier.CC.m(this.right, Modifier.CC.m(this.top, Float.floatToIntBits(this.left) * 31, 31), 31);
    }

    public final Rect intersect(Rect rect) {
        return new Rect(Math.max(this.left, rect.left), Math.max(this.top, rect.top), Math.min(this.right, rect.right), Math.min(this.bottom, rect.bottom));
    }

    public final boolean isEmpty() {
        return (this.left >= this.right) | (this.top >= this.bottom);
    }

    public final String toString() {
        return "Rect.fromLTRB(" + BundleKt.toStringAsFixed(this.left) + ", " + BundleKt.toStringAsFixed(this.top) + ", " + BundleKt.toStringAsFixed(this.right) + ", " + BundleKt.toStringAsFixed(this.bottom) + ')';
    }

    public final Rect translate(float f, float f2) {
        return new Rect(this.left + f, this.top + f2, this.right + f, this.bottom + f2);
    }

    /* renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final Rect m205translatek4lQ0M(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new Rect(Float.intBitsToFloat(i) + this.left, Float.intBitsToFloat(i2) + this.top, Float.intBitsToFloat(i) + this.right, Float.intBitsToFloat(i2) + this.bottom);
    }
}
