package app.k9mail.core.ui.compose.designsystem.atom.button;

import androidx.compose.ui.graphics.Shape;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ButtonShape {
    public final ButtonBorderStroke borderStroke;
    public final Shape shape;

    public ButtonShape(Shape shape, ButtonBorderStroke buttonBorderStroke) {
        shape.getClass();
        this.shape = shape;
        this.borderStroke = buttonBorderStroke;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ButtonShape)) {
            return false;
        }
        ButtonShape buttonShape = (ButtonShape) obj;
        return Intrinsics.areEqual(this.shape, buttonShape.shape) && Intrinsics.areEqual(this.borderStroke, buttonShape.borderStroke);
    }

    public final int hashCode() {
        int hashCode = this.shape.hashCode() * 31;
        ButtonBorderStroke buttonBorderStroke = this.borderStroke;
        return hashCode + (buttonBorderStroke == null ? 0 : buttonBorderStroke.hashCode());
    }

    public final String toString() {
        return "ButtonShape(shape=" + this.shape + ", borderStroke=" + this.borderStroke + ")";
    }
}
