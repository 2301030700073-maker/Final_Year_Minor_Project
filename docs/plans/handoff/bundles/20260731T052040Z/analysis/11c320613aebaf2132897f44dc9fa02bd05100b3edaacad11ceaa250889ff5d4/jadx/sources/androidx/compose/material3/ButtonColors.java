package androidx.compose.material3;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ButtonColors {
    public final long containerColor;
    public final long contentColor;
    public final long disabledContainerColor;
    public final long disabledContentColor;

    public ButtonColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ButtonColors)) {
            return false;
        }
        ButtonColors buttonColors = (ButtonColors) obj;
        return Color.m244equalsimpl0(this.containerColor, buttonColors.containerColor) && Color.m244equalsimpl0(this.contentColor, buttonColors.contentColor) && Color.m244equalsimpl0(this.disabledContainerColor, buttonColors.disabledContainerColor) && Color.m244equalsimpl0(this.disabledContentColor, buttonColors.disabledContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m658hashCodeimpl(this.disabledContentColor) + Modifier.CC.m(Modifier.CC.m(ULong.m658hashCodeimpl(this.containerColor) * 31, this.contentColor, 31), this.disabledContainerColor, 31);
    }
}
