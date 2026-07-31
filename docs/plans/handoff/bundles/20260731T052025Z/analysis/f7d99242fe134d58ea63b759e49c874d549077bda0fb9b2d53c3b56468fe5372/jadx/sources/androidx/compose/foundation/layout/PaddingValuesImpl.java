package androidx.compose.foundation.layout;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final float mo208calculateBottomPaddingD9Ej5fM() {
        return this.bottom;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateLeftPadding-u2uoSUM */
    public final float mo209calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.start : this.end;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateRightPadding-u2uoSUM */
    public final float mo210calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? this.end : this.start;
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* renamed from: calculateTopPadding-D9Ej5fM */
    public final float mo211calculateTopPaddingD9Ej5fM() {
        return this.top;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PaddingValuesImpl)) {
            return false;
        }
        PaddingValuesImpl paddingValuesImpl = (PaddingValuesImpl) obj;
        return Dp.m745equalsimpl0(this.start, paddingValuesImpl.start) && Dp.m745equalsimpl0(this.top, paddingValuesImpl.top) && Dp.m745equalsimpl0(this.end, paddingValuesImpl.end) && Dp.m745equalsimpl0(this.bottom, paddingValuesImpl.bottom);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(this.start) * 31, this.top, 31), this.end, 31);
    }

    public final String toString() {
        return "PaddingValues(start=" + ((Object) Dp.m746toStringimpl(this.start)) + ", top=" + ((Object) Dp.m746toStringimpl(this.top)) + ", end=" + ((Object) Dp.m746toStringimpl(this.end)) + ", bottom=" + ((Object) Dp.m746toStringimpl(this.bottom)) + ')';
    }
}
