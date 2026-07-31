package app.k9mail.core.ui.compose.designsystem.atom.button;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ButtonColors {
    public final long containerColor;
    public final long contentColor;
    public final long disabledContainerColor;
    public final long disabledContentColor;
    public final long iconColor;
    public final long iconDisabledColor;

    public ButtonColors(long j, long j2, long j3, long j4, long j5, long j6) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
        this.iconColor = j5;
        this.iconDisabledColor = j6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ButtonColors)) {
            return false;
        }
        ButtonColors buttonColors = (ButtonColors) obj;
        return Color.m482equalsimpl0(this.containerColor, buttonColors.containerColor) && Color.m482equalsimpl0(this.contentColor, buttonColors.contentColor) && Color.m482equalsimpl0(this.disabledContainerColor, buttonColors.disabledContainerColor) && Color.m482equalsimpl0(this.disabledContentColor, buttonColors.disabledContentColor) && Color.m482equalsimpl0(this.iconColor, buttonColors.iconColor) && Color.m482equalsimpl0(this.iconDisabledColor, buttonColors.iconDisabledColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.iconDisabledColor) + Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.disabledContainerColor), 31, this.disabledContentColor), 31, this.iconColor);
    }

    public final String toString() {
        String m488toStringimpl = Color.m488toStringimpl(this.containerColor);
        String m488toStringimpl2 = Color.m488toStringimpl(this.contentColor);
        String m488toStringimpl3 = Color.m488toStringimpl(this.disabledContainerColor);
        String m488toStringimpl4 = Color.m488toStringimpl(this.disabledContentColor);
        String m488toStringimpl5 = Color.m488toStringimpl(this.iconColor);
        String m488toStringimpl6 = Color.m488toStringimpl(this.iconDisabledColor);
        StringBuilder m = Config.CC.m("ButtonColors(containerColor=", m488toStringimpl, ", contentColor=", m488toStringimpl2, ", disabledContainerColor=");
        Modifier.CC.m(m, m488toStringimpl3, ", disabledContentColor=", m488toStringimpl4, ", iconColor=");
        m.append(m488toStringimpl5);
        m.append(", iconDisabledColor=");
        m.append(m488toStringimpl6);
        m.append(")");
        return m.toString();
    }
}
