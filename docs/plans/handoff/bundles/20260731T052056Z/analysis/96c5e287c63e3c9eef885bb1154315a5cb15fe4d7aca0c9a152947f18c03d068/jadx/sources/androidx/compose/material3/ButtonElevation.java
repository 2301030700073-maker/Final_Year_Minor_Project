package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ButtonElevation {
    public final float defaultElevation;
    public final float focusedElevation;
    public final float hoveredElevation;
    public final float pressedElevation;

    public ButtonElevation(float f, float f2, float f3, float f4) {
        this.defaultElevation = f;
        this.pressedElevation = f2;
        this.focusedElevation = f3;
        this.hoveredElevation = f4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ButtonElevation)) {
            return false;
        }
        ButtonElevation buttonElevation = (ButtonElevation) obj;
        return Dp.m693equalsimpl0(this.defaultElevation, buttonElevation.defaultElevation) && Dp.m693equalsimpl0(this.pressedElevation, buttonElevation.pressedElevation) && Dp.m693equalsimpl0(this.focusedElevation, buttonElevation.focusedElevation) && Dp.m693equalsimpl0(this.hoveredElevation, buttonElevation.hoveredElevation) && Dp.m693equalsimpl0(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
    }

    public final int hashCode() {
        return Float.floatToIntBits(RecyclerView.DECELERATION_RATE) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.defaultElevation) * 31, this.pressedElevation, 31), this.focusedElevation, 31), this.hoveredElevation, 31);
    }
}
