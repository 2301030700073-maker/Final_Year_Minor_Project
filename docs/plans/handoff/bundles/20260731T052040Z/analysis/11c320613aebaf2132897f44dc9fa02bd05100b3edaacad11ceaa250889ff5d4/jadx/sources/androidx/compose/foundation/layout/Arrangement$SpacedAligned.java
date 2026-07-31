package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Arrangement$SpacedAligned implements Arrangement$Horizontal, Arrangement$Vertical {
    public final Arrangement$$ExternalSyntheticLambda0 alignment;
    public final boolean rtlMirror;
    public final float space;
    public final float spacing;

    public Arrangement$SpacedAligned(float f, boolean z, Arrangement$$ExternalSyntheticLambda0 arrangement$$ExternalSyntheticLambda0) {
        this.space = f;
        this.rtlMirror = z;
        this.alignment = arrangement$$ExternalSyntheticLambda0;
        this.spacing = f;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal
    public final void arrange(MeasureScope measureScope, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        int i2;
        if (iArr.length == 0) {
            return;
        }
        int mo58roundToPx0680j_4 = measureScope.mo58roundToPx0680j_4(this.space);
        boolean z = this.rtlMirror && layoutDirection == LayoutDirection.Rtl;
        if (z) {
            int length = iArr.length;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            while (i3 < length) {
                int max = Math.max(0, i - iArr[i3]);
                iArr2[i5] = max;
                i4 = Math.min(mo58roundToPx0680j_4, max);
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
                int min2 = Math.min(mo58roundToPx0680j_4, (i - min) - i10);
                int i11 = iArr2[i9] + i10 + min2;
                i6++;
                i8 = min2;
                i7 = i11;
                i9++;
            }
            i2 = i - (i7 - i8);
        }
        if (this.alignment == null || i2 <= 0) {
            return;
        }
        int round = Math.round((1.0f + (layoutDirection == LayoutDirection.Ltr ? -1.0f : 1.0f)) * (i2 / 2.0f));
        if (z) {
            round -= i2;
        }
        if (round != 0) {
            int length3 = iArr2.length;
            for (int i12 = 0; i12 < length3; i12++) {
                iArr2[i12] = iArr2[i12] + round;
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
        return Dp.m443equalsimpl0(this.space, arrangement$SpacedAligned.space) && this.rtlMirror == arrangement$SpacedAligned.rtlMirror && Intrinsics.areEqual(this.alignment, arrangement$SpacedAligned.alignment);
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical
    /* renamed from: getSpacing-D9Ej5fM */
    public final float mo79getSpacingD9Ej5fM() {
        return this.spacing;
    }

    public final int hashCode() {
        int floatToIntBits = ((Float.floatToIntBits(this.space) * 31) + (this.rtlMirror ? 1231 : 1237)) * 31;
        Arrangement$$ExternalSyntheticLambda0 arrangement$$ExternalSyntheticLambda0 = this.alignment;
        return floatToIntBits + (arrangement$$ExternalSyntheticLambda0 == null ? 0 : arrangement$$ExternalSyntheticLambda0.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.rtlMirror ? "" : "Absolute");
        sb.append("Arrangement#spacedAligned(");
        sb.append((Object) Dp.m444toStringimpl(this.space));
        sb.append(", ");
        sb.append(this.alignment);
        sb.append(')');
        return sb.toString();
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    public final void arrange(int i, MeasureScope measureScope, int[] iArr, int[] iArr2) {
        arrange(measureScope, i, iArr, LayoutDirection.Ltr, iArr2);
    }
}
