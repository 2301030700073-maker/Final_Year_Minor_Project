package androidx.compose.foundation;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OverscrollConfiguration {
    public final PaddingValuesImpl drawPadding;
    public final long glowColor;

    public OverscrollConfiguration() {
        long Color = ColorKt.Color(4284900966L);
        PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(3, 0.0f);
        this.glowColor = Color;
        this.drawPadding = m213PaddingValuesYgX7TsA$default;
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
        return Color.m482equalsimpl0(this.glowColor, overscrollConfiguration.glowColor) && Intrinsics.areEqual(this.drawPadding, overscrollConfiguration.drawPadding);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return this.drawPadding.hashCode() + (ULong.m980hashCodeimpl(this.glowColor) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverscrollConfiguration(glowColor=");
        Config.CC.m(this.glowColor, sb, ", drawPadding=");
        sb.append(this.drawPadding);
        sb.append(')');
        return sb.toString();
    }
}
