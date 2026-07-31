package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Arrangement$SpacedAligned implements Arrangement$Horizontal, Arrangement$Vertical {
    public final Arrangement$SpacingAlignmentCalculator alignment;
    public final boolean rtlMirror;
    public final float space;
    public final float spacing;

    public Arrangement$SpacedAligned(float f, boolean z, Arrangement$SpacingAlignmentCalculator arrangement$SpacingAlignmentCalculator) {
        this.space = f;
        this.rtlMirror = z;
        this.alignment = arrangement$SpacingAlignmentCalculator;
        this.spacing = f;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal
    public final void arrange(Density density, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        int i2;
        if (iArr.length == 0) {
            return;
        }
        int mo171roundToPx0680j_4 = density.mo171roundToPx0680j_4(this.space);
        boolean z = this.rtlMirror && layoutDirection == LayoutDirection.Rtl;
        if (z) {
            int length = iArr.length;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < length) {
                int max = Math.max(0, i - iArr[i3]);
                iArr2[i5] = max;
                i4 = Math.min(mo171roundToPx0680j_4, max);
                i = iArr2[i5] - i4;
                i3++;
                i5++;
            }
            i2 = i + i4;
        } else {
            int length2 = iArr.length;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i6 < length2) {
                int i10 = iArr[i6];
                int min = Math.min(i7, i - i10);
                iArr2[i9] = min;
                int min2 = Math.min(mo171roundToPx0680j_4, (i - min) - i10);
                int i11 = iArr2[i9] + i10 + min2;
                i6++;
                i8 = min2;
                i7 = i11;
                i9++;
            }
            i2 = i - (i7 - i8);
        }
        if (i2 > 0) {
            int align = this.alignment.align(i2, layoutDirection);
            if (z) {
                align -= i2;
            }
            if (align != 0) {
                int length3 = iArr2.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    iArr2[i12] = iArr2[i12] + align;
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Arrangement$SpacedAligned)) {
            return false;
        }
        Arrangement$SpacedAligned arrangement$SpacedAligned = (Arrangement$SpacedAligned) obj;
        return Dp.m745equalsimpl0(this.space, arrangement$SpacedAligned.space) && this.rtlMirror == arrangement$SpacedAligned.rtlMirror && this.alignment.equals(arrangement$SpacedAligned.alignment);
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical
    /* renamed from: getSpacing-D9Ej5fM */
    public final float mo200getSpacingD9Ej5fM() {
        return this.spacing;
    }

    public final int hashCode() {
        return this.alignment.hashCode() + (((Float.floatToIntBits(this.space) * 31) + (this.rtlMirror ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.rtlMirror ? "" : "Absolute");
        sb.append("Arrangement#spacedAligned(");
        sb.append((Object) Dp.m746toStringimpl(this.space));
        sb.append(", ");
        sb.append(this.alignment);
        sb.append(')');
        return sb.toString();
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    public final void arrange(Density density, int i, int[] iArr, int[] iArr2) {
        arrange(density, i, iArr, LayoutDirection.Ltr, iArr2);
    }
}
