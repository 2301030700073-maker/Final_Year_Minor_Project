package net.thunderbird.core.ui.compose.theme2;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColorRoles {
    public final long accent;
    public final long accentContainer;
    public final long onAccent;
    public final long onAccentContainer;

    public ColorRoles(long j, long j2, long j3, long j4) {
        this.accent = j;
        this.onAccent = j2;
        this.accentContainer = j3;
        this.onAccentContainer = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorRoles)) {
            return false;
        }
        ColorRoles colorRoles = (ColorRoles) obj;
        return Color.m482equalsimpl0(this.accent, colorRoles.accent) && Color.m482equalsimpl0(this.onAccent, colorRoles.onAccent) && Color.m482equalsimpl0(this.accentContainer, colorRoles.accentContainer) && Color.m482equalsimpl0(this.onAccentContainer, colorRoles.onAccentContainer);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.onAccentContainer) + Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.accent) * 31, 31, this.onAccent), 31, this.accentContainer);
    }

    public final String toString() {
        String m488toStringimpl = Color.m488toStringimpl(this.accent);
        String m488toStringimpl2 = Color.m488toStringimpl(this.onAccent);
        String m488toStringimpl3 = Color.m488toStringimpl(this.accentContainer);
        String m488toStringimpl4 = Color.m488toStringimpl(this.onAccentContainer);
        StringBuilder m = Config.CC.m("ColorRoles(accent=", m488toStringimpl, ", onAccent=", m488toStringimpl2, ", accentContainer=");
        m.append(m488toStringimpl3);
        m.append(", onAccentContainer=");
        m.append(m488toStringimpl4);
        m.append(")");
        return m.toString();
    }
}
