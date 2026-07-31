package app.k9mail.core.ui.compose.designsystem.atom.card;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CardColors {
    public final long containerColor;
    public final long contentColor;
    public final long disabledContainerColor;
    public final long disabledContentColor;

    public CardColors(long j, long j2, long j3, long j4) {
        this.containerColor = j;
        this.contentColor = j2;
        this.disabledContainerColor = j3;
        this.disabledContentColor = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CardColors)) {
            return false;
        }
        CardColors cardColors = (CardColors) obj;
        return Color.m482equalsimpl0(this.containerColor, cardColors.containerColor) && Color.m482equalsimpl0(this.contentColor, cardColors.contentColor) && Color.m482equalsimpl0(this.disabledContainerColor, cardColors.disabledContainerColor) && Color.m482equalsimpl0(this.disabledContentColor, cardColors.disabledContentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.disabledContentColor) + Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.containerColor) * 31, 31, this.contentColor), 31, this.disabledContainerColor);
    }

    public final String toString() {
        String m488toStringimpl = Color.m488toStringimpl(this.containerColor);
        String m488toStringimpl2 = Color.m488toStringimpl(this.contentColor);
        String m488toStringimpl3 = Color.m488toStringimpl(this.disabledContainerColor);
        String m488toStringimpl4 = Color.m488toStringimpl(this.disabledContentColor);
        StringBuilder m = Config.CC.m("CardColors(containerColor=", m488toStringimpl, ", contentColor=", m488toStringimpl2, ", disabledContainerColor=");
        m.append(m488toStringimpl3);
        m.append(", disabledContentColor=");
        m.append(m488toStringimpl4);
        m.append(")");
        return m.toString();
    }
}
