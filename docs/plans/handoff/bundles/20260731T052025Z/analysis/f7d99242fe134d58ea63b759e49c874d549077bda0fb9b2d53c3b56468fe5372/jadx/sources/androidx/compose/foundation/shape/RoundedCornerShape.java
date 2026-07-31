package androidx.compose.foundation.shape;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RoundedCornerShape implements Shape {
    public final CornerSize bottomEnd;
    public final CornerSize bottomStart;
    public final CornerSize topEnd;
    public final CornerSize topStart;

    public RoundedCornerShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        this.topStart = cornerSize;
        this.topEnd = cornerSize2;
        this.bottomEnd = cornerSize3;
        this.bottomStart = cornerSize4;
    }

    public static RoundedCornerShape copy$default(RoundedCornerShape roundedCornerShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i) {
        if ((i & 1) != 0) {
            cornerSize = roundedCornerShape.topStart;
        }
        if ((i & 2) != 0) {
            cornerSize2 = roundedCornerShape.topEnd;
        }
        if ((i & 4) != 0) {
            cornerSize3 = roundedCornerShape.bottomEnd;
        }
        if ((i & 8) != 0) {
            cornerSize4 = roundedCornerShape.bottomStart;
        }
        roundedCornerShape.getClass();
        return new RoundedCornerShape(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI */
    public final ColorKt mo147createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float mo263toPxTmRCtEA = this.topStart.mo263toPxTmRCtEA(j, density);
        float mo263toPxTmRCtEA2 = this.topEnd.mo263toPxTmRCtEA(j, density);
        float mo263toPxTmRCtEA3 = this.bottomEnd.mo263toPxTmRCtEA(j, density);
        float mo263toPxTmRCtEA4 = this.bottomStart.mo263toPxTmRCtEA(j, density);
        float m450getMinDimensionimpl = Size.m450getMinDimensionimpl(j);
        float f = mo263toPxTmRCtEA + mo263toPxTmRCtEA4;
        if (f > m450getMinDimensionimpl) {
            float f2 = m450getMinDimensionimpl / f;
            mo263toPxTmRCtEA *= f2;
            mo263toPxTmRCtEA4 *= f2;
        }
        float f3 = mo263toPxTmRCtEA2 + mo263toPxTmRCtEA3;
        if (f3 > m450getMinDimensionimpl) {
            float f4 = m450getMinDimensionimpl / f3;
            mo263toPxTmRCtEA2 *= f4;
            mo263toPxTmRCtEA3 *= f4;
        }
        if (mo263toPxTmRCtEA < 0.0f || mo263toPxTmRCtEA2 < 0.0f || mo263toPxTmRCtEA3 < 0.0f || mo263toPxTmRCtEA4 < 0.0f) {
            InlineClassHelperKt.throwIllegalArgumentException("Corner size in Px can't be negative(topStart = " + mo263toPxTmRCtEA + ", topEnd = " + mo263toPxTmRCtEA2 + ", bottomEnd = " + mo263toPxTmRCtEA3 + ", bottomStart = " + mo263toPxTmRCtEA4 + ")!");
        }
        if (mo263toPxTmRCtEA + mo263toPxTmRCtEA2 + mo263toPxTmRCtEA3 + mo263toPxTmRCtEA4 == 0.0f) {
            return new Outline$Rectangle(Util.m1090Recttz77jQw(0L, j));
        }
        Rect m1090Recttz77jQw = Util.m1090Recttz77jQw(0L, j);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f5 = layoutDirection == layoutDirection2 ? mo263toPxTmRCtEA : mo263toPxTmRCtEA2;
        long floatToRawIntBits = (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L);
        if (layoutDirection == layoutDirection2) {
            mo263toPxTmRCtEA = mo263toPxTmRCtEA2;
        }
        long floatToRawIntBits2 = (Float.floatToRawIntBits(mo263toPxTmRCtEA) << 32) | (Float.floatToRawIntBits(mo263toPxTmRCtEA) & 4294967295L);
        float f6 = layoutDirection == layoutDirection2 ? mo263toPxTmRCtEA3 : mo263toPxTmRCtEA4;
        long floatToRawIntBits3 = (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f6) & 4294967295L);
        if (layoutDirection != layoutDirection2) {
            mo263toPxTmRCtEA4 = mo263toPxTmRCtEA3;
        }
        return new Outline$Rounded(new RoundRect(m1090Recttz77jQw.left, m1090Recttz77jQw.top, m1090Recttz77jQw.right, m1090Recttz77jQw.bottom, floatToRawIntBits, floatToRawIntBits2, floatToRawIntBits3, (Float.floatToRawIntBits(mo263toPxTmRCtEA4) << 32) | (Float.floatToRawIntBits(mo263toPxTmRCtEA4) & 4294967295L)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedCornerShape)) {
            return false;
        }
        RoundedCornerShape roundedCornerShape = (RoundedCornerShape) obj;
        return Intrinsics.areEqual(this.topStart, roundedCornerShape.topStart) && Intrinsics.areEqual(this.topEnd, roundedCornerShape.topEnd) && Intrinsics.areEqual(this.bottomEnd, roundedCornerShape.bottomEnd) && Intrinsics.areEqual(this.bottomStart, roundedCornerShape.bottomStart);
    }

    public final int hashCode() {
        return this.bottomStart.hashCode() + ((this.bottomEnd.hashCode() + ((this.topEnd.hashCode() + (this.topStart.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "RoundedCornerShape(topStart = " + this.topStart + ", topEnd = " + this.topEnd + ", bottomEnd = " + this.bottomEnd + ", bottomStart = " + this.bottomStart + ')';
    }
}
