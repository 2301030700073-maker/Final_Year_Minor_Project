package app.k9mail.core.ui.compose.designsystem.atom.card;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CardElevation {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ElevatedCardElevation implements CardElevation {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ElevatedCardElevation) && Dp.m745equalsimpl0(1.0f, 1.0f) && Dp.m745equalsimpl0(1.0f, 1.0f) && Dp.m745equalsimpl0(1.0f, 1.0f) && Dp.m745equalsimpl0(3.0f, 3.0f) && Dp.m745equalsimpl0(8.0f, 8.0f) && Dp.m745equalsimpl0(1.0f, 1.0f);
        }

        public final int hashCode() {
            return Float.floatToIntBits(1.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(1.0f) * 31, 1.0f, 31), 1.0f, 31), 3.0f, 31), 8.0f, 31);
        }

        @Override // app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation
        public final androidx.compose.material3.CardElevation toMaterial3CardElevation(Composer composer) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(1842532725);
            androidx.compose.material3.CardElevation cardElevation = new androidx.compose.material3.CardElevation(false & true ? ListTokens.ContainerElevation : 1.0f, (0 & 2) != 0 ? ListTokens.PressedContainerElevation : 1.0f, (0 & 4) != 0 ? ListTokens.FocusContainerElevation : 1.0f, (0 & 8) != 0 ? ListTokens.HoverContainerElevation : 3.0f, (0 & 16) != 0 ? ListTokens.DraggedContainerElevation : 8.0f, (0 & 32) != 0 ? ListTokens.DisabledContainerElevation : 1.0f);
            gapComposer.end(false);
            return cardElevation;
        }

        public final String toString() {
            String m746toStringimpl = Dp.m746toStringimpl(1.0f);
            String m746toStringimpl2 = Dp.m746toStringimpl(1.0f);
            String m746toStringimpl3 = Dp.m746toStringimpl(1.0f);
            String m746toStringimpl4 = Dp.m746toStringimpl(3.0f);
            String m746toStringimpl5 = Dp.m746toStringimpl(8.0f);
            String m746toStringimpl6 = Dp.m746toStringimpl(1.0f);
            StringBuilder m = Config.CC.m("ElevatedCardElevation(defaultElevation=", m746toStringimpl, ", pressedElevation=", m746toStringimpl2, ", focusedElevation=");
            Modifier.CC.m(m, m746toStringimpl3, ", hoveredElevation=", m746toStringimpl4, ", draggedElevation=");
            m.append(m746toStringimpl5);
            m.append(", disabledElevation=");
            m.append(m746toStringimpl6);
            m.append(")");
            return m.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FilledCardElevation implements CardElevation {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof FilledCardElevation) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(1.0f, 1.0f) && Dp.m745equalsimpl0(6.0f, 6.0f) && Dp.m745equalsimpl0(0.0f, 0.0f);
        }

        public final int hashCode() {
            return Float.floatToIntBits(0.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.0f) * 31, 0.0f, 31), 0.0f, 31), 1.0f, 31), 6.0f, 31);
        }

        @Override // app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation
        public final androidx.compose.material3.CardElevation toMaterial3CardElevation(Composer composer) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(-1330514371);
            androidx.compose.material3.CardElevation cardElevation = new androidx.compose.material3.CardElevation(0.0f, 0.0f, 0.0f, (0 & 8) != 0 ? ListTokens.HoverContainerElevation$1 : 1.0f, (0 & 16) != 0 ? ListTokens.DraggedContainerElevation$1 : 6.0f, 0.0f);
            gapComposer.end(false);
            return cardElevation;
        }

        public final String toString() {
            String m746toStringimpl = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl2 = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl3 = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl4 = Dp.m746toStringimpl(1.0f);
            String m746toStringimpl5 = Dp.m746toStringimpl(6.0f);
            String m746toStringimpl6 = Dp.m746toStringimpl(0.0f);
            StringBuilder m = Config.CC.m("FilledCardElevation(defaultElevation=", m746toStringimpl, ", pressedElevation=", m746toStringimpl2, ", focusedElevation=");
            Modifier.CC.m(m, m746toStringimpl3, ", hoveredElevation=", m746toStringimpl4, ", draggedElevation=");
            m.append(m746toStringimpl5);
            m.append(", disabledElevation=");
            m.append(m746toStringimpl6);
            m.append(")");
            return m.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OutlinedCardElevation implements CardElevation {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OutlinedCardElevation) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(0.0f, 0.0f) && Dp.m745equalsimpl0(6.0f, 6.0f) && Dp.m745equalsimpl0(0.0f, 0.0f);
        }

        public final int hashCode() {
            return Float.floatToIntBits(0.0f) + CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(0.0f) * 31, 0.0f, 31), 0.0f, 31), 0.0f, 31), 6.0f, 31);
        }

        @Override // app.k9mail.core.ui.compose.designsystem.atom.card.CardElevation
        public final androidx.compose.material3.CardElevation toMaterial3CardElevation(Composer composer) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.startReplaceGroup(1687696317);
            androidx.compose.material3.CardElevation cardElevation = new androidx.compose.material3.CardElevation(0.0f, 0.0f, 0.0f, 0.0f, 6.0f, 0.0f);
            gapComposer.end(false);
            return cardElevation;
        }

        public final String toString() {
            String m746toStringimpl = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl2 = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl3 = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl4 = Dp.m746toStringimpl(0.0f);
            String m746toStringimpl5 = Dp.m746toStringimpl(6.0f);
            String m746toStringimpl6 = Dp.m746toStringimpl(0.0f);
            StringBuilder m = Config.CC.m("OutlinedCardElevation(defaultElevation=", m746toStringimpl, ", pressedElevation=", m746toStringimpl2, ", focusedElevation=");
            Modifier.CC.m(m, m746toStringimpl3, ", hoveredElevation=", m746toStringimpl4, ", draggedElevation=");
            m.append(m746toStringimpl5);
            m.append(", disabledElevation=");
            m.append(m746toStringimpl6);
            m.append(")");
            return m.toString();
        }
    }

    androidx.compose.material3.CardElevation toMaterial3CardElevation(Composer composer);
}
