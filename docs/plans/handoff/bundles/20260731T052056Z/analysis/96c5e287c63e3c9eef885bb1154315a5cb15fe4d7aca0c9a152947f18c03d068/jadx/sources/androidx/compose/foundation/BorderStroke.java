package androidx.compose.foundation;

import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BorderStroke {
    public final SolidColor brush;
    public final float width;

    public BorderStroke(float f, SolidColor solidColor) {
        this.width = f;
        this.brush = solidColor;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) obj;
        return Dp.m693equalsimpl0(this.width, borderStroke.width) && this.brush.equals(borderStroke.brush);
    }

    public final int hashCode() {
        return this.brush.hashCode() + (Float.floatToIntBits(this.width) * 31);
    }

    public final String toString() {
        return "BorderStroke(width=" + ((Object) Dp.m694toStringimpl(this.width)) + ", brush=" + this.brush + ')';
    }
}
