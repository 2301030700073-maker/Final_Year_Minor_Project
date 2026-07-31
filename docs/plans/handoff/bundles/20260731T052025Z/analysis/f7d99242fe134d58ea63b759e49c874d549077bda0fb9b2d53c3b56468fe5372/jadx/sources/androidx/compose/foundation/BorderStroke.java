package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BorderStroke {
    public final Brush brush;
    public final float width;

    public BorderStroke(float f, Brush brush) {
        this.width = f;
        this.brush = brush;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) obj;
        return Dp.m745equalsimpl0(this.width, borderStroke.width) && Intrinsics.areEqual(this.brush, borderStroke.brush);
    }

    public final int hashCode() {
        return this.brush.hashCode() + (Float.floatToIntBits(this.width) * 31);
    }

    public final String toString() {
        return "BorderStroke(width=" + ((Object) Dp.m746toStringimpl(this.width)) + ", brush=" + this.brush + ')';
    }
}
