package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextLayoutResultProxy {
    public LayoutCoordinates decorationBoxCoordinates;
    public LayoutCoordinates innerTextFieldCoordinates = null;
    public final TextLayoutResult value;

    public TextLayoutResultProxy(LayoutCoordinates layoutCoordinates, TextLayoutResult textLayoutResult) {
        this.value = textLayoutResult;
        this.decorationBoxCoordinates = layoutCoordinates;
    }

    /* renamed from: coercedInVisibleBoundsOfInputText-MK-Hz9U, reason: not valid java name */
    public final long m196coercedInVisibleBoundsOfInputTextMKHz9U(long j) {
        Rect rect;
        LayoutCoordinates layoutCoordinates = this.innerTextFieldCoordinates;
        Rect rect2 = Rect.Zero;
        if (layoutCoordinates != null) {
            if (layoutCoordinates.isAttached()) {
                LayoutCoordinates layoutCoordinates2 = this.decorationBoxCoordinates;
                rect = layoutCoordinates2 != null ? layoutCoordinates2.localBoundingBoxOf(layoutCoordinates, true) : null;
            } else {
                rect = rect2;
            }
            if (rect != null) {
                rect2 = rect;
            }
        }
        int i = (int) (j >> 32);
        float intBitsToFloat = Float.intBitsToFloat(i);
        float f = rect2.left;
        if (intBitsToFloat >= f) {
            float intBitsToFloat2 = Float.intBitsToFloat(i);
            f = rect2.right;
            if (intBitsToFloat2 <= f) {
                f = Float.intBitsToFloat(i);
            }
        }
        int i2 = (int) (j & 4294967295L);
        float intBitsToFloat3 = Float.intBitsToFloat(i2);
        float f2 = rect2.top;
        if (intBitsToFloat3 >= f2) {
            float intBitsToFloat4 = Float.intBitsToFloat(i2);
            f2 = rect2.bottom;
            if (intBitsToFloat4 <= f2) {
                f2 = Float.intBitsToFloat(i2);
            }
        }
        return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L);
    }

    /* renamed from: getOffsetForPosition-3MmeM6k, reason: not valid java name */
    public final int m197getOffsetForPosition3MmeM6k(long j, boolean z) {
        if (z) {
            j = m196coercedInVisibleBoundsOfInputTextMKHz9U(j);
        }
        return this.value.multiParagraph.m629getOffsetForPositionk4lQ0M(m199translateDecorationToInnerCoordinatesMKHz9U$foundation(j));
    }

    /* renamed from: isPositionOnText-k-4lQ0M, reason: not valid java name */
    public final boolean m198isPositionOnTextk4lQ0M(long j) {
        long m199translateDecorationToInnerCoordinatesMKHz9U$foundation = m199translateDecorationToInnerCoordinatesMKHz9U$foundation(m196coercedInVisibleBoundsOfInputTextMKHz9U(j));
        float intBitsToFloat = Float.intBitsToFloat((int) (4294967295L & m199translateDecorationToInnerCoordinatesMKHz9U$foundation));
        TextLayoutResult textLayoutResult = this.value;
        int lineForVerticalPosition = textLayoutResult.multiParagraph.getLineForVerticalPosition(intBitsToFloat);
        int i = (int) (m199translateDecorationToInnerCoordinatesMKHz9U$foundation >> 32);
        return Float.intBitsToFloat(i) >= textLayoutResult.getLineLeft(lineForVerticalPosition) && Float.intBitsToFloat(i) <= textLayoutResult.getLineRight(lineForVerticalPosition);
    }

    /* renamed from: translateDecorationToInnerCoordinates-MK-Hz9U$foundation, reason: not valid java name */
    public final long m199translateDecorationToInnerCoordinatesMKHz9U$foundation(long j) {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2 = this.innerTextFieldCoordinates;
        if (layoutCoordinates2 != null) {
            if (!layoutCoordinates2.isAttached()) {
                layoutCoordinates2 = null;
            }
            if (layoutCoordinates2 != null && (layoutCoordinates = this.decorationBoxCoordinates) != null) {
                LayoutCoordinates layoutCoordinates3 = layoutCoordinates.isAttached() ? layoutCoordinates : null;
                if (layoutCoordinates3 != null) {
                    return layoutCoordinates2.mo518localPositionOfR5De75A(layoutCoordinates3, j);
                }
            }
        }
        return j;
    }

    /* renamed from: translateInnerToDecorationCoordinates-MK-Hz9U$foundation, reason: not valid java name */
    public final long m200translateInnerToDecorationCoordinatesMKHz9U$foundation(long j) {
        LayoutCoordinates layoutCoordinates;
        LayoutCoordinates layoutCoordinates2 = this.innerTextFieldCoordinates;
        if (layoutCoordinates2 != null) {
            if (!layoutCoordinates2.isAttached()) {
                layoutCoordinates2 = null;
            }
            if (layoutCoordinates2 != null && (layoutCoordinates = this.decorationBoxCoordinates) != null) {
                LayoutCoordinates layoutCoordinates3 = layoutCoordinates.isAttached() ? layoutCoordinates : null;
                if (layoutCoordinates3 != null) {
                    return layoutCoordinates3.mo518localPositionOfR5De75A(layoutCoordinates2, j);
                }
            }
        }
        return j;
    }
}
