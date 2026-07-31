package androidx.compose.ui.geometry;

import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Rect {
    public static final Rect Zero = new Rect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
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

    public static Rect copy$default(Rect rect, float f, float f2, float f3, int i) {
        if ((i & 1) != 0) {
            f = rect.left;
        }
        float f4 = rect.top;
        if ((i & 4) != 0) {
            f2 = rect.right;
        }
        if ((i & 8) != 0) {
            f3 = rect.bottom;
        }
        return new Rect(f, f4, f2, f3);
    }

    /* renamed from: contains-k-4lQ0M, reason: not valid java name */
    public final boolean m389containsk4lQ0M(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        return (intBitsToFloat >= this.left) & (intBitsToFloat < this.right) & (intBitsToFloat2 >= this.top) & (intBitsToFloat2 < this.bottom);
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
    public final long m390getCenterF1C5BW0() {
        float f = this.right;
        float f2 = this.left;
        float f3 = ((f - f2) / 2.0f) + f2;
        float f4 = this.bottom;
        float f5 = this.top;
        return (Float.floatToRawIntBits(((f4 - f5) / 2.0f) + f5) & 4294967295L) | (Float.floatToRawIntBits(f3) << 32);
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m391getSizeNHjbRc() {
        float f = this.right - this.left;
        float f2 = this.bottom - this.top;
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    /* renamed from: getTopLeft-F1C5BW0, reason: not valid java name */
    public final long m392getTopLeftF1C5BW0() {
        return (Float.floatToRawIntBits(this.left) << 32) | (Float.floatToRawIntBits(this.top) & 4294967295L);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.left) * 31, this.top, 31), this.right, 31);
    }

    public final Rect intersect(Rect rect) {
        return new Rect(Math.max(this.left, rect.left), Math.max(this.top, rect.top), Math.min(this.right, rect.right), Math.min(this.bottom, rect.bottom));
    }

    public final boolean isEmpty() {
        return (this.left >= this.right) | (this.top >= this.bottom);
    }

    public final boolean overlaps(Rect rect) {
        return (this.left < rect.right) & (rect.left < this.right) & (this.top < rect.bottom) & (rect.top < this.bottom);
    }

    public final String toString() {
        return "Rect.fromLTRB(" + UnsignedKt.toStringAsFixed(this.left) + ", " + UnsignedKt.toStringAsFixed(this.top) + ", " + UnsignedKt.toStringAsFixed(this.right) + ", " + UnsignedKt.toStringAsFixed(this.bottom) + ')';
    }

    public final Rect translate(float f, float f2) {
        return new Rect(this.left + f, this.top + f2, this.right + f, this.bottom + f2);
    }

    /* renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final Rect m393translatek4lQ0M(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        return new Rect(Float.intBitsToFloat(i) + this.left, Float.intBitsToFloat(i2) + this.top, Float.intBitsToFloat(i) + this.right, Float.intBitsToFloat(i2) + this.bottom);
    }
}
