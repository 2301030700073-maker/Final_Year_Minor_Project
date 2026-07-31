package androidx.compose.foundation.text.selection;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.work.Operation$State;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final long mo0calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        long mo185provideF1C5BW0 = this.positionProvider.mo185provideF1C5BW0();
        if ((9223372034707292159L & mo185provideF1C5BW0) == 9205357640488583168L) {
            mo185provideF1C5BW0 = this.prevPosition;
        }
        this.prevPosition = mo185provideF1C5BW0;
        return IntOffset.m717plusqkQi6aY(IntOffset.m717plusqkQi6aY(intRect.m720getTopLeftnOccac(), Operation$State.m767roundk4lQ0M(mo185provideF1C5BW0)), this.handleReferencePoint.mo333alignKFBX0sM(j2, 0L, layoutDirection));
    }
}
