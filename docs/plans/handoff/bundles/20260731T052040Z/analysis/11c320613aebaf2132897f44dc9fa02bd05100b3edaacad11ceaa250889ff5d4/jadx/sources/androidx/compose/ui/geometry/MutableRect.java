package androidx.compose.ui.geometry;

import androidx.core.os.BundleKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MutableRect {
    public float left = 0.0f;
    public float top = 0.0f;
    public float right = 0.0f;
    public float bottom = 0.0f;

    public final void intersect(float f, float f2, float f3, float f4) {
        this.left = Math.max(f, this.left);
        this.top = Math.max(f2, this.top);
        this.right = Math.min(f3, this.right);
        this.bottom = Math.min(f4, this.bottom);
    }

    public final boolean isEmpty() {
        return (this.left >= this.right) | (this.top >= this.bottom);
    }

    public final String toString() {
        return "MutableRect(" + BundleKt.toStringAsFixed(this.left) + ", " + BundleKt.toStringAsFixed(this.top) + ", " + BundleKt.toStringAsFixed(this.right) + ", " + BundleKt.toStringAsFixed(this.bottom) + ')';
    }

    /* renamed from: translate-k-4lQ0M, reason: not valid java name */
    public final void m194translatek4lQ0M(long j) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
        this.left += intBitsToFloat;
        this.top += intBitsToFloat2;
        this.right += intBitsToFloat;
        this.bottom += intBitsToFloat2;
    }
}
