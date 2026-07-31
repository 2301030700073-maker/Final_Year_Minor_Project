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
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final ColorKt mo61createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float mo176toPxTmRCtEA = this.topStart.mo176toPxTmRCtEA(j, density);
        float mo176toPxTmRCtEA2 = this.topEnd.mo176toPxTmRCtEA(j, density);
        float mo176toPxTmRCtEA3 = this.bottomEnd.mo176toPxTmRCtEA(j, density);
        float mo176toPxTmRCtEA4 = this.bottomStart.mo176toPxTmRCtEA(j, density);
        float m396getMinDimensionimpl = Size.m396getMinDimensionimpl(j);
        float f = mo176toPxTmRCtEA + mo176toPxTmRCtEA4;
        if (f > m396getMinDimensionimpl) {
            float f2 = m396getMinDimensionimpl / f;
            mo176toPxTmRCtEA *= f2;
            mo176toPxTmRCtEA4 *= f2;
        }
        float f3 = mo176toPxTmRCtEA2 + mo176toPxTmRCtEA3;
        if (f3 > m396getMinDimensionimpl) {
            float f4 = m396getMinDimensionimpl / f3;
            mo176toPxTmRCtEA2 *= f4;
            mo176toPxTmRCtEA3 *= f4;
        }
        if (mo176toPxTmRCtEA < RecyclerView.DECELERATION_RATE || mo176toPxTmRCtEA2 < RecyclerView.DECELERATION_RATE || mo176toPxTmRCtEA3 < RecyclerView.DECELERATION_RATE || mo176toPxTmRCtEA4 < RecyclerView.DECELERATION_RATE) {
            InlineClassHelperKt.throwIllegalArgumentException("Corner size in Px can't be negative(topStart = " + mo176toPxTmRCtEA + ", topEnd = " + mo176toPxTmRCtEA2 + ", bottomEnd = " + mo176toPxTmRCtEA3 + ", bottomStart = " + mo176toPxTmRCtEA4 + ")!");
        }
        if (mo176toPxTmRCtEA + mo176toPxTmRCtEA2 + mo176toPxTmRCtEA3 + mo176toPxTmRCtEA4 == RecyclerView.DECELERATION_RATE) {
            return new Outline$Rectangle(UtilsKt.m793Recttz77jQw(0L, j));
        }
        Rect m793Recttz77jQw = UtilsKt.m793Recttz77jQw(0L, j);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f5 = layoutDirection == layoutDirection2 ? mo176toPxTmRCtEA : mo176toPxTmRCtEA2;
        long floatToRawIntBits = (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L);
        if (layoutDirection == layoutDirection2) {
            mo176toPxTmRCtEA = mo176toPxTmRCtEA2;
        }
        long floatToRawIntBits2 = (Float.floatToRawIntBits(mo176toPxTmRCtEA) << 32) | (Float.floatToRawIntBits(mo176toPxTmRCtEA) & 4294967295L);
        float f6 = layoutDirection == layoutDirection2 ? mo176toPxTmRCtEA3 : mo176toPxTmRCtEA4;
        long floatToRawIntBits3 = (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f6) & 4294967295L);
        if (layoutDirection != layoutDirection2) {
            mo176toPxTmRCtEA4 = mo176toPxTmRCtEA3;
        }
        return new Outline$Rounded(new RoundRect(m793Recttz77jQw.left, m793Recttz77jQw.top, m793Recttz77jQw.right, m793Recttz77jQw.bottom, floatToRawIntBits, floatToRawIntBits2, floatToRawIntBits3, (Float.floatToRawIntBits(mo176toPxTmRCtEA4) << 32) | (Float.floatToRawIntBits(mo176toPxTmRCtEA4) & 4294967295L)));
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
