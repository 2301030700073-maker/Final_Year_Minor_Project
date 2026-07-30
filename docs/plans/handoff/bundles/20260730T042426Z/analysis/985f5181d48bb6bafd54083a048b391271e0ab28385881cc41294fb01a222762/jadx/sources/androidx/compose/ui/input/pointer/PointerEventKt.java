package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.IntSize;

/* compiled from: PointerEvent.kt */
/* loaded from: classes.dex */
public abstract class PointerEventKt {
    public static final boolean changedToDown(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || pointerInputChange.getPreviousPressed() || !pointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToDownIgnoreConsumed(PointerInputChange pointerInputChange) {
        return !pointerInputChange.getPreviousPressed() && pointerInputChange.getPressed();
    }

    public static final boolean changedToUp(PointerInputChange pointerInputChange) {
        return (pointerInputChange.isConsumed() || !pointerInputChange.getPreviousPressed() || pointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToUpIgnoreConsumed(PointerInputChange pointerInputChange) {
        return pointerInputChange.getPreviousPressed() && !pointerInputChange.getPressed();
    }

    public static final boolean positionChangedIgnoreConsumed(PointerInputChange pointerInputChange) {
        return !Offset.m1164equalsimpl0(positionChangeInternal(pointerInputChange, true), Offset.Companion.m1179getZeroF1C5BW0());
    }

    public static final long positionChange(PointerInputChange pointerInputChange) {
        return positionChangeInternal(pointerInputChange, false);
    }

    public static final long positionChangeIgnoreConsumed(PointerInputChange pointerInputChange) {
        return positionChangeInternal(pointerInputChange, true);
    }

    private static final long positionChangeInternal(PointerInputChange pointerInputChange, boolean z) {
        long m1171minusMKHz9U = Offset.m1171minusMKHz9U(pointerInputChange.m1690getPositionF1C5BW0(), pointerInputChange.m1691getPreviousPositionF1C5BW0());
        return (z || !pointerInputChange.isConsumed()) ? m1171minusMKHz9U : Offset.Companion.m1179getZeroF1C5BW0();
    }

    /* renamed from: isOutOfBounds-O0kMr_c, reason: not valid java name */
    public static final boolean m1665isOutOfBoundsO0kMr_c(PointerInputChange pointerInputChange, long j) {
        long m1690getPositionF1C5BW0 = pointerInputChange.m1690getPositionF1C5BW0();
        float m1167getXimpl = Offset.m1167getXimpl(m1690getPositionF1C5BW0);
        float m1168getYimpl = Offset.m1168getYimpl(m1690getPositionF1C5BW0);
        return m1167getXimpl < 0.0f || m1167getXimpl > ((float) IntSize.m2484getWidthimpl(j)) || m1168getYimpl < 0.0f || m1168getYimpl > ((float) IntSize.m2483getHeightimpl(j));
    }

    /* renamed from: isOutOfBounds-jwHxaWs, reason: not valid java name */
    public static final boolean m1666isOutOfBoundsjwHxaWs(PointerInputChange pointerInputChange, long j, long j2) {
        if (!PointerType.m1709equalsimpl0(pointerInputChange.m1693getTypeT8wyACA(), PointerType.Companion.m1715getTouchT8wyACA())) {
            return m1665isOutOfBoundsO0kMr_c(pointerInputChange, j);
        }
        long m1690getPositionF1C5BW0 = pointerInputChange.m1690getPositionF1C5BW0();
        float m1167getXimpl = Offset.m1167getXimpl(m1690getPositionF1C5BW0);
        float m1168getYimpl = Offset.m1168getYimpl(m1690getPositionF1C5BW0);
        return m1167getXimpl < (-Size.m1204getWidthimpl(j2)) || m1167getXimpl > ((float) IntSize.m2484getWidthimpl(j)) + Size.m1204getWidthimpl(j2) || m1168getYimpl < (-Size.m1202getHeightimpl(j2)) || m1168getYimpl > ((float) IntSize.m2483getHeightimpl(j)) + Size.m1202getHeightimpl(j2);
    }
}
