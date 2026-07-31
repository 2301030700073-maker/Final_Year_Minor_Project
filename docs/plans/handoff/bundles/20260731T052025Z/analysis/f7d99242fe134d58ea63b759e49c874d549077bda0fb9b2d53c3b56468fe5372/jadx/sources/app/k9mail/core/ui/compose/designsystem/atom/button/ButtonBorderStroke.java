package app.k9mail.core.ui.compose.designsystem.atom.button;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ButtonBorderStroke {
    public final Brush brush;
    public final float width;

    public ButtonBorderStroke(float f, Brush brush) {
        brush.getClass();
        this.width = f;
        this.brush = brush;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ButtonBorderStroke)) {
            return false;
        }
        ButtonBorderStroke buttonBorderStroke = (ButtonBorderStroke) obj;
        return Dp.m745equalsimpl0(this.width, buttonBorderStroke.width) && Intrinsics.areEqual(this.brush, buttonBorderStroke.brush);
    }

    public final int hashCode() {
        return this.brush.hashCode() + (Float.floatToIntBits(this.width) * 31);
    }

    public final String toString() {
        return "ButtonBorderStroke(width=" + Dp.m746toStringimpl(this.width) + ", brush=" + this.brush + ")";
    }
}
