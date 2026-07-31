package net.thunderbird.feature.mail.message.list.ui.component.molecule;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageConversationCounterBadgeColor {
    public final Color borderColor;
    public final long containerColor;
    public final long contentColor;

    public MessageConversationCounterBadgeColor(long j, long j2, Color color) {
        this.containerColor = j;
        this.contentColor = j2;
        this.borderColor = color;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageConversationCounterBadgeColor)) {
            return false;
        }
        MessageConversationCounterBadgeColor messageConversationCounterBadgeColor = (MessageConversationCounterBadgeColor) obj;
        return Color.m482equalsimpl0(this.containerColor, messageConversationCounterBadgeColor.containerColor) && Color.m482equalsimpl0(this.contentColor, messageConversationCounterBadgeColor.contentColor) && Intrinsics.areEqual(this.borderColor, messageConversationCounterBadgeColor.borderColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        int m = Config.CC.m(ULong.m980hashCodeimpl(this.containerColor) * 31, 31, this.contentColor);
        Color color = this.borderColor;
        return m + (color == null ? 0 : ULong.m980hashCodeimpl(color.value));
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("MessageConversationCounterBadgeColor(containerColor=", Color.m488toStringimpl(this.containerColor), ", contentColor=", Color.m488toStringimpl(this.contentColor), ", borderColor=");
        m.append(this.borderColor);
        m.append(")");
        return m.toString();
    }
}
