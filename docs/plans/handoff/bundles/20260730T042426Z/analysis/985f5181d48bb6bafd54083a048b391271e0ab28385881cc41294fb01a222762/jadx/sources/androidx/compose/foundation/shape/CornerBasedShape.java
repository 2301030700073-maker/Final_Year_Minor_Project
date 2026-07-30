package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: CornerBasedShape.kt */
/* loaded from: classes.dex */
public abstract class CornerBasedShape implements Shape {
    private final CornerSize bottomEnd;
    private final CornerSize bottomStart;
    private final CornerSize topEnd;
    private final CornerSize topStart;

    public abstract CornerBasedShape copy(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4);

    /* renamed from: createOutline-LjSzlW0, reason: not valid java name */
    public abstract Outline mo373createOutlineLjSzlW0(long j, float f, float f2, float f3, float f4, LayoutDirection layoutDirection);

    public CornerBasedShape(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
        this.topStart = cornerSize;
        this.topEnd = cornerSize2;
        this.bottomEnd = cornerSize3;
        this.bottomStart = cornerSize4;
    }

    public final CornerSize getTopStart() {
        return this.topStart;
    }

    public final CornerSize getTopEnd() {
        return this.topEnd;
    }

    public final CornerSize getBottomEnd() {
        return this.bottomEnd;
    }

    public final CornerSize getBottomStart() {
        return this.bottomStart;
    }

    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI */
    public final Outline mo128createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float mo374toPxTmRCtEA = this.topStart.mo374toPxTmRCtEA(j, density);
        float mo374toPxTmRCtEA2 = this.topEnd.mo374toPxTmRCtEA(j, density);
        float mo374toPxTmRCtEA3 = this.bottomEnd.mo374toPxTmRCtEA(j, density);
        float mo374toPxTmRCtEA4 = this.bottomStart.mo374toPxTmRCtEA(j, density);
        float m1203getMinDimensionimpl = Size.m1203getMinDimensionimpl(j);
        float f = mo374toPxTmRCtEA + mo374toPxTmRCtEA4;
        if (f > m1203getMinDimensionimpl) {
            float f2 = m1203getMinDimensionimpl / f;
            mo374toPxTmRCtEA *= f2;
            mo374toPxTmRCtEA4 *= f2;
        }
        float f3 = mo374toPxTmRCtEA4;
        float f4 = mo374toPxTmRCtEA2 + mo374toPxTmRCtEA3;
        if (f4 > m1203getMinDimensionimpl) {
            float f5 = m1203getMinDimensionimpl / f4;
            mo374toPxTmRCtEA2 *= f5;
            mo374toPxTmRCtEA3 *= f5;
        }
        if (mo374toPxTmRCtEA < 0.0f || mo374toPxTmRCtEA2 < 0.0f || mo374toPxTmRCtEA3 < 0.0f || f3 < 0.0f) {
            throw new IllegalArgumentException(("Corner size in Px can't be negative(topStart = " + mo374toPxTmRCtEA + ", topEnd = " + mo374toPxTmRCtEA2 + ", bottomEnd = " + mo374toPxTmRCtEA3 + ", bottomStart = " + f3 + ")!").toString());
        }
        return mo373createOutlineLjSzlW0(j, mo374toPxTmRCtEA, mo374toPxTmRCtEA2, mo374toPxTmRCtEA3, f3, layoutDirection);
    }

    public static /* synthetic */ CornerBasedShape copy$default(CornerBasedShape cornerBasedShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
        }
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
        return cornerBasedShape.copy(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }
}
