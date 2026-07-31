package net.thunderbird.feature.mail.message.list.ui.component.organism;

import androidx.compose.ui.graphics.Color;
import coil3.size.ViewSizeResolver;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemColors {
    public final long containerColor;
    public final long contentColor;

    public MessageItemColors(long j, long j2) {
        this.containerColor = j;
        this.contentColor = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageItemColors)) {
            return false;
        }
        MessageItemColors messageItemColors = (MessageItemColors) obj;
        return Color.m482equalsimpl0(this.containerColor, messageItemColors.containerColor) && Color.m482equalsimpl0(this.contentColor, messageItemColors.contentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.contentColor) + (ULong.m980hashCodeimpl(this.containerColor) * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("MessageItemColors(containerColor=", Color.m488toStringimpl(this.containerColor), ", contentColor=", Color.m488toStringimpl(this.contentColor), ")");
    }
}
