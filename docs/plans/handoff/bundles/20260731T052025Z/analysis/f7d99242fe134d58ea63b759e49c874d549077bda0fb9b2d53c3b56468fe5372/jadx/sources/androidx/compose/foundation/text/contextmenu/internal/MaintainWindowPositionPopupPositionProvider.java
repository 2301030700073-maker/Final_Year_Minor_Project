package androidx.compose.foundation.text.contextmenu.internal;

import androidx.camera.view.PreviewView;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MaintainWindowPositionPopupPositionProvider implements PopupPositionProvider {
    public final PreviewView.AnonymousClass1 popupPositionProvider;
    public LayoutDirection previousLayoutDirection;
    public IntSize previousPopupContentSize;
    public IntOffset previousPosition;
    public IntSize previousWindowSize;

    public MaintainWindowPositionPopupPositionProvider(PreviewView.AnonymousClass1 anonymousClass1) {
        this.popupPositionProvider = anonymousClass1;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public final long mo96calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        IntOffset intOffset = this.previousPosition;
        if (intOffset != null) {
            IntSize intSize = this.previousWindowSize;
            if ((intSize == null ? false : IntSize.m768equalsimpl0(intSize.packedValue, j)) && this.previousLayoutDirection == layoutDirection) {
                IntSize intSize2 = this.previousPopupContentSize;
                if (intSize2 != null ? IntSize.m768equalsimpl0(intSize2.packedValue, j2) : false) {
                    return intOffset.packedValue;
                }
            }
        }
        long mo96calculatePositionllwVHH4 = this.popupPositionProvider.mo96calculatePositionllwVHH4(intRect, j, layoutDirection, j2);
        this.previousWindowSize = new IntSize(j);
        this.previousLayoutDirection = layoutDirection;
        this.previousPopupContentSize = new IntSize(j2);
        this.previousPosition = new IntOffset(mo96calculatePositionllwVHH4);
        return mo96calculatePositionllwVHH4;
    }
}
