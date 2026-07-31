package androidx.compose.foundation.text.contextmenu.internal;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MaintainWindowPositionPopupPositionProvider implements PopupPositionProvider {
    public final PopupMenu$1 popupPositionProvider;
    public LayoutDirection previousLayoutDirection;
    public IntSize previousPopupContentSize;
    public IntOffset previousPosition;
    public IntSize previousWindowSize;

    public MaintainWindowPositionPopupPositionProvider(PopupMenu$1 popupMenu$1) {
        this.popupPositionProvider = popupMenu$1;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public final long mo0calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        IntOffset intOffset = this.previousPosition;
        if (intOffset != null) {
            IntSize intSize = this.previousWindowSize;
            if ((intSize == null ? false : IntSize.m721equalsimpl0(intSize.packedValue, j)) && this.previousLayoutDirection == layoutDirection) {
                IntSize intSize2 = this.previousPopupContentSize;
                if (intSize2 != null ? IntSize.m721equalsimpl0(intSize2.packedValue, j2) : false) {
                    return intOffset.packedValue;
                }
            }
        }
        long mo0calculatePositionllwVHH4 = this.popupPositionProvider.mo0calculatePositionllwVHH4(intRect, j, layoutDirection, j2);
        this.previousWindowSize = new IntSize(j);
        this.previousLayoutDirection = layoutDirection;
        this.previousPopupContentSize = new IntSize(j2);
        this.previousPosition = new IntOffset(mo0calculatePositionllwVHH4);
        return mo0calculatePositionllwVHH4;
    }
}
