package androidx.compose.ui.graphics;

import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SolidColor extends Brush {
    public final long value;

    public SolidColor(long j) {
        this.value = j;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo475applyToPq9zytI(float f, long j, AndroidPaint androidPaint) {
        androidPaint.setAlpha(1.0f);
        long j2 = this.value;
        if (f != 1.0f) {
            j2 = ColorKt.Color(Color.m487getRedimpl(j2), Color.m486getGreenimpl(j2), Color.m484getBlueimpl(j2), Color.m483getAlphaimpl(j2) * f, Color.m485getColorSpaceimpl(j2));
        }
        androidPaint.m464setColor8_81llA(j2);
        if (androidPaint.internalShader != null) {
            androidPaint.setShader(null);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SolidColor) {
            return Color.m482equalsimpl0(this.value, ((SolidColor) obj).value);
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.value);
    }

    public final String toString() {
        return "SolidColor(value=" + ((Object) Color.m488toStringimpl(this.value)) + ')';
    }
}
