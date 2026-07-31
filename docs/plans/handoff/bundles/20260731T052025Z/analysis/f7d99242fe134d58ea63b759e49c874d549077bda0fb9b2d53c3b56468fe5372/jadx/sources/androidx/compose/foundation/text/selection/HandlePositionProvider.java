package androidx.compose.foundation.text.selection;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HandlePositionProvider implements PopupPositionProvider {
    public final Alignment handleReferencePoint;
    public final OffsetProvider positionProvider;
    public long prevPosition = 0;

    public HandlePositionProvider(Alignment alignment, OffsetProvider offsetProvider) {
        this.handleReferencePoint = alignment;
        this.positionProvider = offsetProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public final long mo96calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        long mo272provideF1C5BW0 = this.positionProvider.mo272provideF1C5BW0();
        if ((9223372034707292159L & mo272provideF1C5BW0) == 9205357640488583168L) {
            mo272provideF1C5BW0 = this.prevPosition;
        }
        this.prevPosition = mo272provideF1C5BW0;
        return IntOffset.m754plusqkQi6aY(IntOffset.m754plusqkQi6aY(intRect.m763getTopLeftnOccac(), IntOffsetKt.m760roundk4lQ0M(mo272provideF1C5BW0)), this.handleReferencePoint.mo387alignKFBX0sM(j2, 0L, layoutDirection));
    }
}
