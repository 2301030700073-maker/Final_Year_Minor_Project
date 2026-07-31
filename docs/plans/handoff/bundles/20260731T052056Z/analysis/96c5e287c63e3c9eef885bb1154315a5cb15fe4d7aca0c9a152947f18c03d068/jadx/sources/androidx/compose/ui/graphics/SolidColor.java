package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SolidColor extends Brush {
    public final long value;

    public SolidColor(long j) {
        this.value = j;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public final void mo421applyToPq9zytI(float f, long j, AndroidPaint androidPaint) {
        androidPaint.setAlpha(1.0f);
        long j2 = this.value;
        if (f != 1.0f) {
            j2 = ColorKt.Color(Color.m433getRedimpl(j2), Color.m432getGreenimpl(j2), Color.m430getBlueimpl(j2), Color.m429getAlphaimpl(j2) * f, Color.m431getColorSpaceimpl(j2));
        }
        androidPaint.m411setColor8_81llA(j2);
        if (androidPaint.internalShader != null) {
            androidPaint.setShader(null);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SolidColor)) {
            return false;
        }
        long j = ((SolidColor) obj).value;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.value, j);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.value);
    }

    public final String toString() {
        return "SolidColor(value=" + ((Object) Color.m434toStringimpl(this.value)) + ')';
    }
}
