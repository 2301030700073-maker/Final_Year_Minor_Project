package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CardElevation {
    public final float defaultElevation;
    public final float hoveredElevation;

    public CardElevation(float f, float f2, float f3) {
        this.defaultElevation = f;
        this.hoveredElevation = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CardElevation)) {
            return false;
        }
        CardElevation cardElevation = (CardElevation) obj;
        return Dp.m693equalsimpl0(this.defaultElevation, cardElevation.defaultElevation) && Dp.m693equalsimpl0(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) && Dp.m693equalsimpl0(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) && Dp.m693equalsimpl0(this.hoveredElevation, cardElevation.hoveredElevation) && Dp.m693equalsimpl0(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE);
    }

    public final int hashCode() {
        return Float.floatToIntBits(RecyclerView.DECELERATION_RATE) + Animation.CC.m(Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.defaultElevation) * 31, RecyclerView.DECELERATION_RATE, 31), RecyclerView.DECELERATION_RATE, 31), this.hoveredElevation, 31);
    }
}
