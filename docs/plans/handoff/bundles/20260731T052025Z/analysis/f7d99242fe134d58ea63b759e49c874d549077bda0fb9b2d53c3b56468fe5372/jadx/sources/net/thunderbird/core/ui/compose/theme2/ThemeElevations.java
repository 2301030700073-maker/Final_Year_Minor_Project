package net.thunderbird.core.ui.compose.theme2;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeElevations {
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ThemeElevations) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(1.0f, 1.0f) && Dp.m745equalsimpl0(3.0f, 3.0f) && Dp.m745equalsimpl0(6.0f, 6.0f) && Dp.m745equalsimpl0(8.0f, 8.0f) && Dp.m745equalsimpl0(12.0f, 12.0f);
    }

    public final int hashCode() {
        return Float.floatToIntBits(12.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.0f) * 31, 1.0f, 31), 3.0f, 31), 6.0f, 31), 8.0f, 31);
    }

    public final String toString() {
        String m746toStringimpl = Dp.m746toStringimpl(0.0f);
        String m746toStringimpl2 = Dp.m746toStringimpl(1.0f);
        String m746toStringimpl3 = Dp.m746toStringimpl(3.0f);
        String m746toStringimpl4 = Dp.m746toStringimpl(6.0f);
        String m746toStringimpl5 = Dp.m746toStringimpl(8.0f);
        String m746toStringimpl6 = Dp.m746toStringimpl(12.0f);
        StringBuilder m = Config.CC.m("ThemeElevations(level0=", m746toStringimpl, ", level1=", m746toStringimpl2, ", level2=");
        Modifier.CC.m(m, m746toStringimpl3, ", level3=", m746toStringimpl4, ", level4=");
        m.append(m746toStringimpl5);
        m.append(", level5=");
        m.append(m746toStringimpl6);
        m.append(")");
        return m.toString();
    }
}
