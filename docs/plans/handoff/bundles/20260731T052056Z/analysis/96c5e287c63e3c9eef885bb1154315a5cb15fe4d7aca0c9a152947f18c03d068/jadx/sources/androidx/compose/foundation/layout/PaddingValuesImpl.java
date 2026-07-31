package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PaddingValuesImpl implements PaddingValues {
    public final float bottom;
    public final float end;
    public final float start;
    public final float top;

    public PaddingValuesImpl(float f, float f2, float f3, float f4) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        if (!((f >= RecyclerView.DECELERATION_RATE) & (f2 >= RecyclerView.DECELERATION_RATE) & (f3 >= RecyclerView.DECELERATION_RATE)) || !(f4 >= RecyclerView.DECELERATION_RATE)) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM */
    public final float mo120calculateBottomPaddingD9Ej5fM() {
        return this.bottom;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM */
    public final float mo121calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.start : this.end;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public final float mo122calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.end : this.start;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public final float mo123calculateTopPaddingD9Ej5fM() {
        return this.top;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        return Dp.m693equalsimpl0(this.start, paddingValuesImpl.start) && Dp.m693equalsimpl0(this.top, paddingValuesImpl.top) && Dp.m693equalsimpl0(this.end, paddingValuesImpl.end) && Dp.m693equalsimpl0(this.bottom, paddingValuesImpl.bottom);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + Animation.CC.m(Animation.CC.m(Float.floatToIntBits(this.start) * 31, this.top, 31), this.end, 31);
    }

    public final String toString() {
        return "PaddingValues(start=" + ((Object) Dp.m694toStringimpl(this.start)) + ", top=" + ((Object) Dp.m694toStringimpl(this.top)) + ", end=" + ((Object) Dp.m694toStringimpl(this.end)) + ", bottom=" + ((Object) Dp.m694toStringimpl(this.bottom)) + ')';
    }
}
