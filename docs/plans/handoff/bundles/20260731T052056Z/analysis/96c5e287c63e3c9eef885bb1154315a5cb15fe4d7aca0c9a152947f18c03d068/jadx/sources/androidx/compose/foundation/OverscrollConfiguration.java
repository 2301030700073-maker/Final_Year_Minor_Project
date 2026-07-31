package androidx.compose.foundation;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OverscrollConfiguration {
    public final PaddingValuesImpl drawPadding;
    public final long glowColor;

    public OverscrollConfiguration() {
        long Color = ColorKt.Color(4284900966L);
        PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(3, RecyclerView.DECELERATION_RATE);
        this.glowColor = Color;
        this.drawPadding = m125PaddingValuesYgX7TsA$default;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!OverscrollConfiguration.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        OverscrollConfiguration overscrollConfiguration = (OverscrollConfiguration) obj;
        long j = overscrollConfiguration.glowColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.glowColor, j) && this.drawPadding.equals(overscrollConfiguration.drawPadding);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return this.drawPadding.hashCode() + (Modifier.CC.m(this.glowColor) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverscrollConfiguration(glowColor=");
        Animation.CC.m(this.glowColor, sb, ", drawPadding=");
        sb.append(this.drawPadding);
        sb.append(')');
        return sb.toString();
    }
}
