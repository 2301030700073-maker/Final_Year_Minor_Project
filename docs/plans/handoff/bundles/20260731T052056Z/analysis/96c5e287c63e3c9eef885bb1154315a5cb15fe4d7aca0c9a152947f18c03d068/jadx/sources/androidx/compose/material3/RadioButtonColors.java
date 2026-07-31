package androidx.compose.material3;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        long j = radioButtonColors.selectedColor;
        int i = Color.$r8$clinit;
        return ULong.m820equalsimpl0(this.selectedColor, j) && ULong.m820equalsimpl0(this.unselectedColor, radioButtonColors.unselectedColor) && ULong.m820equalsimpl0(this.disabledSelectedColor, radioButtonColors.disabledSelectedColor) && ULong.m820equalsimpl0(this.disabledUnselectedColor, radioButtonColors.disabledUnselectedColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return Modifier.CC.m(this.disabledUnselectedColor) + Animation.CC.m(Animation.CC.m(Modifier.CC.m(this.selectedColor) * 31, 31, this.unselectedColor), 31, this.disabledSelectedColor);
    }
}
