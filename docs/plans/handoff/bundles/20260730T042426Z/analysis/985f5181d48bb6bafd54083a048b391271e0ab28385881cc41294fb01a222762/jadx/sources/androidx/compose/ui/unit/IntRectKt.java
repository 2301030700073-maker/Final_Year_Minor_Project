package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;

/* compiled from: IntRect.kt */
/* loaded from: classes.dex */
public abstract class IntRectKt {
    /* renamed from: IntRect-VbeCjmY, reason: not valid java name */
    public static final IntRect m2478IntRectVbeCjmY(long j, long j2) {
        return new IntRect(IntOffset.m2465getXimpl(j), IntOffset.m2466getYimpl(j), IntOffset.m2465getXimpl(j) + IntSize.m2484getWidthimpl(j2), IntOffset.m2466getYimpl(j) + IntSize.m2483getHeightimpl(j2));
    }

    public static final IntRect roundToIntRect(Rect rect) {
        return new IntRect(Math.round(rect.getLeft()), Math.round(rect.getTop()), Math.round(rect.getRight()), Math.round(rect.getBottom()));
    }
}
