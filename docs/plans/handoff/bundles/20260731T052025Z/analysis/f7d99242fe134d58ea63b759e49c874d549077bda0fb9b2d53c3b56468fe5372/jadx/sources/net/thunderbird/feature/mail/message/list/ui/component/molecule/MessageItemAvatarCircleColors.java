package net.thunderbird.feature.mail.message.list.ui.component.molecule;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemAvatarCircleColors {
    public final long borderColor;
    public final long containerColor;
    public final long contentColor;

    public MessageItemAvatarCircleColors(long j, long j2, long j3) {
        this.borderColor = j;
        this.containerColor = j2;
        this.contentColor = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageItemAvatarCircleColors)) {
            return false;
        }
        MessageItemAvatarCircleColors messageItemAvatarCircleColors = (MessageItemAvatarCircleColors) obj;
        return Color.m482equalsimpl0(this.borderColor, messageItemAvatarCircleColors.borderColor) && Color.m482equalsimpl0(this.containerColor, messageItemAvatarCircleColors.containerColor) && Color.m482equalsimpl0(this.contentColor, messageItemAvatarCircleColors.contentColor);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.contentColor) + Config.CC.m(ULong.m980hashCodeimpl(this.borderColor) * 31, 31, this.containerColor);
    }

    public final String toString() {
        String m488toStringimpl = Color.m488toStringimpl(this.borderColor);
        String m488toStringimpl2 = Color.m488toStringimpl(this.containerColor);
        return CameraDevices$CC.m(Config.CC.m("MessageItemAvatarCircleColors(borderColor=", m488toStringimpl, ", containerColor=", m488toStringimpl2, ", contentColor="), Color.m488toStringimpl(this.contentColor), ")");
    }
}
