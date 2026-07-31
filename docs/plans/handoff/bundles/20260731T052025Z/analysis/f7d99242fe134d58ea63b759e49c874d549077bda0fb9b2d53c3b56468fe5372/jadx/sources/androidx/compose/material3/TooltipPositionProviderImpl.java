package androidx.compose.material3;

import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TooltipPositionProviderImpl implements PopupPositionProvider {
    public final int tooltipAnchorSpacing;

    public TooltipPositionProviderImpl(int i) {
        this.tooltipAnchorSpacing = i;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public final long mo96calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        int i = (int) (j2 >> 32);
        int width = ((intRect.getWidth() - i) / 2) + intRect.left;
        if (width < 0) {
            width = intRect.left;
        } else if (width + i > ((int) (j >> 32))) {
            width = intRect.right - i;
        }
        int i2 = intRect.top - ((int) (j2 & 4294967295L));
        int i3 = this.tooltipAnchorSpacing;
        int i4 = i2 - i3;
        if (i4 < 0) {
            i4 = intRect.bottom + i3;
        }
        return (width << 32) | (4294967295L & i4);
    }
}
