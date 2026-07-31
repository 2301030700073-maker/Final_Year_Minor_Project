package net.thunderbird.feature.mail.message.list.ui.component.config;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemAccountIndicator {
    public final long color;

    public MessageItemAccountIndicator(long j) {
        this.color = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageItemAccountIndicator) && Color.m482equalsimpl0(this.color, ((MessageItemAccountIndicator) obj).color);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.color);
    }

    public final String toString() {
        return CameraDevices$CC.m("MessageItemAccountIndicator(color=", Color.m488toStringimpl(this.color), ")");
    }
}
