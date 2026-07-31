package androidx.compose.material3;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RadioButtonColors {
    public final long disabledSelectedColor;
    public final long disabledUnselectedColor;
    public final long selectedColor;
    public final long unselectedColor;

    public RadioButtonColors(long j, long j2, long j3, long j4) {
        this.selectedColor = j;
        this.unselectedColor = j2;
        this.disabledSelectedColor = j3;
        this.disabledUnselectedColor = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RadioButtonColors)) {
            return false;
        }
        RadioButtonColors radioButtonColors = (RadioButtonColors) obj;
        return Color.m482equalsimpl0(this.selectedColor, radioButtonColors.selectedColor) && Color.m482equalsimpl0(this.unselectedColor, radioButtonColors.unselectedColor) && Color.m482equalsimpl0(this.disabledSelectedColor, radioButtonColors.disabledSelectedColor) && Color.m482equalsimpl0(this.disabledUnselectedColor, radioButtonColors.disabledUnselectedColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.disabledUnselectedColor) + Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.selectedColor) * 31, 31, this.unselectedColor), 31, this.disabledSelectedColor);
    }
}
