package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        if (!((f >= 0.0f) & (f2 >= 0.0f) & (f3 >= 0.0f)) || !(f4 >= 0.0f)) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateBottomPadding-D9Ej5fM */
    public final float mo83calculateBottomPaddingD9Ej5fM() {
        return this.bottom;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM */
    public final float mo84calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.start : this.end;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public final float mo85calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.end : this.start;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public final float mo86calculateTopPaddingD9Ej5fM() {
        return this.top;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        return Dp.m443equalsimpl0(this.start, paddingValuesImpl.start) && Dp.m443equalsimpl0(this.top, paddingValuesImpl.top) && Dp.m443equalsimpl0(this.end, paddingValuesImpl.end) && Dp.m443equalsimpl0(this.bottom, paddingValuesImpl.bottom);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + Modifier.CC.m(this.end, Modifier.CC.m(this.top, Float.floatToIntBits(this.start) * 31, 31), 31);
    }

    public final String toString() {
        return "PaddingValues(start=" + ((Object) Dp.m444toStringimpl(this.start)) + ", top=" + ((Object) Dp.m444toStringimpl(this.top)) + ", end=" + ((Object) Dp.m444toStringimpl(this.end)) + ", bottom=" + ((Object) Dp.m444toStringimpl(this.bottom)) + ')';
    }
}
