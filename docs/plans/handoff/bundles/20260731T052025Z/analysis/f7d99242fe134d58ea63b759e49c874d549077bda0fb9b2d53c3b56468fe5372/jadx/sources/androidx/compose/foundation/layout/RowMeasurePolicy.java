package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.List;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RowMeasurePolicy implements MeasurePolicy, RowColumnMeasurePolicy {
    public final Arrangement$Horizontal horizontalArrangement;
    public final BiasAlignment.Vertical verticalAlignment;

    public RowMeasurePolicy(Arrangement$Horizontal arrangement$Horizontal, BiasAlignment.Vertical vertical) {
        this.horizontalArrangement = arrangement$Horizontal;
        this.verticalAlignment = vertical;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    /* renamed from: createConstraints-xF2OJ5Q */
    public final long mo202createConstraintsxF2OJ5Q(int i, int i2, int i3, boolean z) {
        return !z ? ConstraintsKt.Constraints(i, i2, 0, i3) : MathKt.m987fitPrioritizingWidthZbe2FdA(i, i2, 0, i3);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int crossAxisSize(Placeable placeable) {
        return placeable.height;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowMeasurePolicy)) {
            return false;
        }
        RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj;
        return Intrinsics.areEqual(this.horizontalArrangement, rowMeasurePolicy.horizontalArrangement) && Intrinsics.areEqual(this.verticalAlignment, rowMeasurePolicy.verticalAlignment);
    }

    public final int hashCode() {
        return this.verticalAlignment.hashCode() + (this.horizontalArrangement.hashCode() * 31);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int mainAxisSize(Placeable placeable) {
        return placeable.width;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.horizontalArrangement.mo200getSpacingD9Ej5fM());
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * mo171roundToPx0680j_4, i);
        int size = list.size();
        int i2 = 0;
        float f = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable = (Measurable) list.get(i3);
            float weight = OffsetKt.getWeight(OffsetKt.getRowColumnParentData(measurable));
            if (weight == 0.0f) {
                int min2 = Math.min(measurable.maxIntrinsicWidth(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i2 = Math.max(i2, measurable.maxIntrinsicHeight(min2));
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        int round = f == 0.0f ? 0 : i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - min, 0) / f);
        int size2 = list.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Measurable measurable2 = (Measurable) list.get(i4);
            float weight2 = OffsetKt.getWeight(OffsetKt.getRowColumnParentData(measurable2));
            if (weight2 > 0.0f) {
                i2 = Math.max(i2, measurable2.maxIntrinsicHeight(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.horizontalArrangement.mo200getSpacingD9Ej5fM());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            Measurable measurable = (Measurable) list.get(i4);
            float weight = OffsetKt.getWeight(OffsetKt.getRowColumnParentData(measurable));
            int maxIntrinsicWidth = measurable.maxIntrinsicWidth(i);
            if (weight == 0.0f) {
                i3 += maxIntrinsicWidth;
            } else if (weight > 0.0f) {
                f += weight;
                i2 = Math.max(i2, Math.round(maxIntrinsicWidth / weight));
            }
        }
        return ((list.size() - 1) * mo171roundToPx0680j_4) + Math.round(i2 * f) + i3;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        return OffsetKt.measure(this, Constraints.m736getMinWidthimpl(j), Constraints.m735getMinHeightimpl(j), Constraints.m734getMaxWidthimpl(j), Constraints.m733getMaxHeightimpl(j), measureScope.mo171roundToPx0680j_4(this.horizontalArrangement.mo200getSpacingD9Ej5fM()), measureScope, list, new Placeable[list.size()], 0, list.size(), null, 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.horizontalArrangement.mo200getSpacingD9Ej5fM());
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * mo171roundToPx0680j_4, i);
        int size = list.size();
        int i2 = 0;
        float f = 0.0f;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable = (Measurable) list.get(i3);
            float weight = OffsetKt.getWeight(OffsetKt.getRowColumnParentData(measurable));
            if (weight == 0.0f) {
                int min2 = Math.min(measurable.maxIntrinsicWidth(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i2 = Math.max(i2, measurable.minIntrinsicHeight(min2));
            } else if (weight > 0.0f) {
                f += weight;
            }
        }
        int round = f == 0.0f ? 0 : i == Integer.MAX_VALUE ? Integer.MAX_VALUE : Math.round(Math.max(i - min, 0) / f);
        int size2 = list.size();
        for (int i4 = 0; i4 < size2; i4++) {
            Measurable measurable2 = (Measurable) list.get(i4);
            float weight2 = OffsetKt.getWeight(OffsetKt.getRowColumnParentData(measurable2));
            if (weight2 > 0.0f) {
                i2 = Math.max(i2, measurable2.minIntrinsicHeight(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.horizontalArrangement.mo200getSpacingD9Ej5fM());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            Measurable measurable = (Measurable) list.get(i4);
            float weight = OffsetKt.getWeight(OffsetKt.getRowColumnParentData(measurable));
            int minIntrinsicWidth = measurable.minIntrinsicWidth(i);
            if (weight == 0.0f) {
                i3 += minIntrinsicWidth;
            } else if (weight > 0.0f) {
                f += weight;
                i2 = Math.max(i2, Math.round(minIntrinsicWidth / weight));
            }
        }
        return ((list.size() - 1) * mo171roundToPx0680j_4) + Math.round(i2 * f) + i3;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final MeasureResult placeHelper(Placeable[] placeableArr, MeasureScope measureScope, int i, int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6) {
        return measureScope.layout(i2, i3, EmptyMap.INSTANCE, new WrapContentNode$$ExternalSyntheticLambda0(placeableArr, this, i3, i, iArr));
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final void populateMainAxisPositions(int i, int[] iArr, int[] iArr2, MeasureScope measureScope) {
        this.horizontalArrangement.arrange(measureScope, i, iArr, measureScope.getLayoutDirection(), iArr2);
    }

    public final String toString() {
        return "RowMeasurePolicy(horizontalArrangement=" + this.horizontalArrangement + ", verticalAlignment=" + this.verticalAlignment + ')';
    }
}
