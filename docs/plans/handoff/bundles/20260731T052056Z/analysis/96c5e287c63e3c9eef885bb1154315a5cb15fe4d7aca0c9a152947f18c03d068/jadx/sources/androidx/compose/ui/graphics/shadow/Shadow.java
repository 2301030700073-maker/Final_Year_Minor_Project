package androidx.compose.ui.graphics.shadow;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ULong;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Shadow {
    public final float alpha;
    public final long color;
    public final long offset;

    public Shadow(long j, long j2, float f) {
        this.offset = j;
        this.color = j2;
        this.alpha = RegexKt.coerceIn(f, RecyclerView.DECELERATION_RATE, 1.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Shadow) {
            Shadow shadow = (Shadow) obj;
            if (Dp.m693equalsimpl0(12.0f, 12.0f) && Dp.m693equalsimpl0(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE) && this.offset == shadow.offset && this.alpha == shadow.alpha) {
                long j = shadow.color;
                int i = Color.$r8$clinit;
                if (ULong.m820equalsimpl0(this.color, j)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int m = Animation.CC.m(Float.floatToIntBits(12.0f) * 31, RecyclerView.DECELERATION_RATE, 31);
        long j = this.offset;
        int floatToIntBits = (((Float.floatToIntBits(this.alpha) + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31) + 3) * 31;
        int i = Color.$r8$clinit;
        return Animation.CC.m(floatToIntBits, 31, this.color);
    }

    public final String toString() {
        return "Shadow(radius=" + ((Object) Dp.m694toStringimpl(12.0f)) + ", spread=" + ((Object) Dp.m694toStringimpl(RecyclerView.DECELERATION_RATE)) + ", offset=" + ((Object) DpOffset.m710toStringimpl(this.offset)) + ", alpha=" + this.alpha + ", blendMode=" + ((Object) ColorKt.m445toStringimpl(3)) + ", color=" + ((Object) Color.m434toStringimpl(this.color)) + ", brush=null)";
    }
}
