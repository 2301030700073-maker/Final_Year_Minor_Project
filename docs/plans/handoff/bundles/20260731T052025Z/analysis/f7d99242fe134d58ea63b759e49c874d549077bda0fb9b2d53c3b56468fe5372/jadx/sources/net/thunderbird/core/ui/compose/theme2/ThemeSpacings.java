package net.thunderbird.core.ui.compose.theme2;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeSpacings {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ThemeSpacings) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(2.0f, 2.0f) && Dp.m745equalsimpl0(4.0f, 4.0f) && Dp.m745equalsimpl0(8.0f, 8.0f) && Dp.m745equalsimpl0(12.0f, 12.0f) && Dp.m745equalsimpl0(16.0f, 16.0f) && Dp.m745equalsimpl0(24.0f, 24.0f) && Dp.m745equalsimpl0(32.0f, 32.0f);
    }

    public final int hashCode() {
        return Float.floatToIntBits(32.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.0f) * 31, 2.0f, 31), 4.0f, 31), 8.0f, 31), 12.0f, 31), 16.0f, 31), 24.0f, 31);
    }

    public final String toString() {
        String m746toStringimpl = Dp.m746toStringimpl(0.0f);
        String m746toStringimpl2 = Dp.m746toStringimpl(2.0f);
        String m746toStringimpl3 = Dp.m746toStringimpl(4.0f);
        String m746toStringimpl4 = Dp.m746toStringimpl(8.0f);
        String m746toStringimpl5 = Dp.m746toStringimpl(12.0f);
        String m746toStringimpl6 = Dp.m746toStringimpl(16.0f);
        String m746toStringimpl7 = Dp.m746toStringimpl(24.0f);
        String m746toStringimpl8 = Dp.m746toStringimpl(32.0f);
        StringBuilder m = Config.CC.m("ThemeSpacings(zero=", m746toStringimpl, ", quarter=", m746toStringimpl2, ", half=");
        Modifier.CC.m(m, m746toStringimpl3, ", default=", m746toStringimpl4, ", oneHalf=");
        Modifier.CC.m(m, m746toStringimpl5, ", double=", m746toStringimpl6, ", triple=");
        m.append(m746toStringimpl7);
        m.append(", quadruple=");
        m.append(m746toStringimpl8);
        m.append(")");
        return m.toString();
    }
}
