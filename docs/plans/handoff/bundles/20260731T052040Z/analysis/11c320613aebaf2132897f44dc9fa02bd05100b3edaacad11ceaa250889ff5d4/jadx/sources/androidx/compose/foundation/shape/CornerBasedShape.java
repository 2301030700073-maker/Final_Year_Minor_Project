package androidx.compose.foundation.shape;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.work.OperationKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CornerBasedShape implements Shape {
    public final CornerSize bottomEnd;
    public final CornerSize bottomStart;
    public final CornerSize topEnd;
    public final CornerSize topStart;

    public CornerBasedShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        this.topStart = cornerSize;
        this.topEnd = cornerSize2;
        this.bottomEnd = cornerSize3;
        this.bottomStart = cornerSize4;
    }

    public static RoundedCornerShape copy$default(CornerBasedShape cornerBasedShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i) {
        if ((i & 1) != 0) {
            cornerSize = cornerBasedShape.topStart;
        }
        if ((i & 2) != 0) {
            cornerSize2 = cornerBasedShape.topEnd;
        }
        if ((i & 4) != 0) {
            cornerSize3 = cornerBasedShape.bottomEnd;
        }
        if ((i & 8) != 0) {
            cornerSize4 = cornerBasedShape.bottomStart;
        }
        ((RoundedCornerShape) cornerBasedShape).getClass();
        return new RoundedCornerShape(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI */
    public final Brush mo35createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float mo115toPxTmRCtEA = this.topStart.mo115toPxTmRCtEA(j, density);
        float mo115toPxTmRCtEA2 = this.topEnd.mo115toPxTmRCtEA(j, density);
        float mo115toPxTmRCtEA3 = this.bottomEnd.mo115toPxTmRCtEA(j, density);
        float mo115toPxTmRCtEA4 = this.bottomStart.mo115toPxTmRCtEA(j, density);
        float m207getMinDimensionimpl = Size.m207getMinDimensionimpl(j);
        float f = mo115toPxTmRCtEA + mo115toPxTmRCtEA4;
        if (f > m207getMinDimensionimpl) {
            float f2 = m207getMinDimensionimpl / f;
            mo115toPxTmRCtEA *= f2;
            mo115toPxTmRCtEA4 *= f2;
        }
        float f3 = mo115toPxTmRCtEA2 + mo115toPxTmRCtEA3;
        if (f3 > m207getMinDimensionimpl) {
            float f4 = m207getMinDimensionimpl / f3;
            mo115toPxTmRCtEA2 *= f4;
            mo115toPxTmRCtEA3 *= f4;
        }
        if (mo115toPxTmRCtEA < 0.0f || mo115toPxTmRCtEA2 < 0.0f || mo115toPxTmRCtEA3 < 0.0f || mo115toPxTmRCtEA4 < 0.0f) {
            InlineClassHelperKt.throwIllegalArgumentException("Corner size in Px can't be negative(topStart = " + mo115toPxTmRCtEA + ", topEnd = " + mo115toPxTmRCtEA2 + ", bottomEnd = " + mo115toPxTmRCtEA3 + ", bottomStart = " + mo115toPxTmRCtEA4 + ")!");
        }
        if (mo115toPxTmRCtEA + mo115toPxTmRCtEA2 + mo115toPxTmRCtEA3 + mo115toPxTmRCtEA4 == 0.0f) {
            return new Outline$Rectangle(OperationKt.m476Recttz77jQw(0L, j));
        }
        Rect m476Recttz77jQw = OperationKt.m476Recttz77jQw(0L, j);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f5 = layoutDirection == layoutDirection2 ? mo115toPxTmRCtEA : mo115toPxTmRCtEA2;
        long floatToRawIntBits = (Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L);
        if (layoutDirection == layoutDirection2) {
            mo115toPxTmRCtEA = mo115toPxTmRCtEA2;
        }
        long floatToRawIntBits2 = (Float.floatToRawIntBits(mo115toPxTmRCtEA) << 32) | (Float.floatToRawIntBits(mo115toPxTmRCtEA) & 4294967295L);
        float f6 = layoutDirection == layoutDirection2 ? mo115toPxTmRCtEA3 : mo115toPxTmRCtEA4;
        long floatToRawIntBits3 = (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f6) & 4294967295L);
        if (layoutDirection != layoutDirection2) {
            mo115toPxTmRCtEA4 = mo115toPxTmRCtEA3;
        }
        return new Outline$Rounded(new RoundRect(m476Recttz77jQw.left, m476Recttz77jQw.top, m476Recttz77jQw.right, m476Recttz77jQw.bottom, floatToRawIntBits, floatToRawIntBits2, floatToRawIntBits3, (Float.floatToRawIntBits(mo115toPxTmRCtEA4) << 32) | (Float.floatToRawIntBits(mo115toPxTmRCtEA4) & 4294967295L)));
    }
}
