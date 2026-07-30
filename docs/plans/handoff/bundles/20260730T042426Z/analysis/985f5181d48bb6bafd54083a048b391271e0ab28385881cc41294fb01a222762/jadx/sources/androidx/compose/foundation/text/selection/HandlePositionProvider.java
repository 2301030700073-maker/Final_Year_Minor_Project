package androidx.compose.foundation.text.selection;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: SelectionHandles.kt */
/* loaded from: classes.dex */
public final class HandlePositionProvider implements PopupPositionProvider {
    private final Alignment handleReferencePoint;
    private final OffsetProvider positionProvider;
    private long prevPosition = Offset.Companion.m1179getZeroF1C5BW0();

    public HandlePositionProvider(Alignment alignment, OffsetProvider offsetProvider) {
        this.handleReferencePoint = alignment;
        this.positionProvider = offsetProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public long mo154calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        long mo388provideF1C5BW0 = this.positionProvider.mo388provideF1C5BW0();
        if (!OffsetKt.m1181isSpecifiedk4lQ0M(mo388provideF1C5BW0)) {
            mo388provideF1C5BW0 = this.prevPosition;
        }
        this.prevPosition = mo388provideF1C5BW0;
        return IntOffset.m2469plusqkQi6aY(IntOffset.m2469plusqkQi6aY(intRect.m2477getTopLeftnOccac(), IntOffsetKt.m2475roundk4lQ0M(mo388provideF1C5BW0)), this.handleReferencePoint.mo1074alignKFBX0sM(j2, IntSize.Companion.m2488getZeroYbymL2g(), layoutDirection));
    }
}
