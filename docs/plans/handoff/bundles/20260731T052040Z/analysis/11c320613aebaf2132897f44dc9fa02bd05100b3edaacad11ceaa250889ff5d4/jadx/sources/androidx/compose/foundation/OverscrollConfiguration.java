package androidx.compose.foundation;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OverscrollConfiguration {
    public final PaddingValuesImpl drawPadding;
    public final long glowColor;

    public OverscrollConfiguration() {
        long Color = Brush.Color(4284900966L);
        PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f);
        this.glowColor = Color;
        this.drawPadding = paddingValuesImpl;
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
        return Color.m244equalsimpl0(this.glowColor, overscrollConfiguration.glowColor) && Intrinsics.areEqual(this.drawPadding, overscrollConfiguration.drawPadding);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return this.drawPadding.hashCode() + (ULong.m658hashCodeimpl(this.glowColor) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverscrollConfiguration(glowColor=");
        Modifier.CC.m181m(this.glowColor, ", drawPadding=", sb);
        sb.append(this.drawPadding);
        sb.append(')');
        return sb.toString();
    }
}
