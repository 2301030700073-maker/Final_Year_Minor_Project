package androidx.compose.ui.graphics;

import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SolidColor extends Brush {
    public final long value;

    public SolidColor(long j) {
        this.value = j;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo238applyToPq9zytI(float f, long j, AndroidPaint androidPaint) {
        androidPaint.setAlpha(1.0f);
        long j2 = this.value;
        if (f != 1.0f) {
            j2 = Brush.Color(Color.m249getRedimpl(j2), Color.m248getGreenimpl(j2), Color.m246getBlueimpl(j2), Color.m245getAlphaimpl(j2) * f, Color.m247getColorSpaceimpl(j2));
        }
        androidPaint.m220setColor8_81llA(j2);
        if (androidPaint.internalShader != null) {
            androidPaint.setShader(null);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SolidColor) {
            return Color.m244equalsimpl0(this.value, ((SolidColor) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m658hashCodeimpl(this.value);
    }

    public final String toString() {
        return "SolidColor(value=" + ((Object) Color.m250toStringimpl(this.value)) + ')';
    }
}
