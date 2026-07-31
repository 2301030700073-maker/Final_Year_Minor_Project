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
import kotlin.math.MathKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ColumnMeasurePolicy implements MeasurePolicy, RowColumnMeasurePolicy {
    public final BiasAlignment.Horizontal horizontalAlignment;
    public final Arrangement$Vertical verticalArrangement;

    public ColumnMeasurePolicy(Arrangement$Vertical arrangement$Vertical, BiasAlignment.Horizontal horizontal) {
        this.verticalArrangement = arrangement$Vertical;
        this.horizontalAlignment = horizontal;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    /* renamed from: createConstraints-xF2OJ5Q, reason: not valid java name */
    public final long mo202createConstraintsxF2OJ5Q(int i, int i2, int i3, boolean z) {
        return !z ? ConstraintsKt.Constraints(0, i3, i, i2) : MathKt.m986fitPrioritizingHeightZbe2FdA(0, i3, i, i2);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int crossAxisSize(Placeable placeable) {
        return placeable.width;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColumnMeasurePolicy)) {
            return false;
        }
        ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj;
        return this.verticalArrangement.equals(columnMeasurePolicy.verticalArrangement) && this.horizontalAlignment.equals(columnMeasurePolicy.horizontalAlignment);
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.horizontalAlignment.bias) + (this.verticalArrangement.hashCode() * 31);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int mainAxisSize(Placeable placeable) {
        return placeable.height;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.verticalArrangement.mo200getSpacingD9Ej5fM());
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
            int maxIntrinsicHeight = measurable.maxIntrinsicHeight(i);
            if (weight == 0.0f) {
                i3 += maxIntrinsicHeight;
            } else if (weight > 0.0f) {
                f += weight;
                i2 = Math.max(i2, Math.round(maxIntrinsicHeight / weight));
            }
        }
        return ((list.size() - 1) * mo171roundToPx0680j_4) + Math.round(i2 * f) + i3;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.verticalArrangement.mo200getSpacingD9Ej5fM());
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
                int min2 = Math.min(measurable.maxIntrinsicHeight(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i2 = Math.max(i2, measurable.maxIntrinsicWidth(min2));
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
                i2 = Math.max(i2, measurable2.maxIntrinsicWidth(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        return OffsetKt.measure(this, Constraints.m735getMinHeightimpl(j), Constraints.m736getMinWidthimpl(j), Constraints.m733getMaxHeightimpl(j), Constraints.m734getMaxWidthimpl(j), measureScope.mo171roundToPx0680j_4(this.verticalArrangement.mo200getSpacingD9Ej5fM()), measureScope, list, new Placeable[list.size()], 0, list.size(), null, 0);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.verticalArrangement.mo200getSpacingD9Ej5fM());
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
            int minIntrinsicHeight = measurable.minIntrinsicHeight(i);
            if (weight == 0.0f) {
                i3 += minIntrinsicHeight;
            } else if (weight > 0.0f) {
                f += weight;
                i2 = Math.max(i2, Math.round(minIntrinsicHeight / weight));
            }
        }
        return ((list.size() - 1) * mo171roundToPx0680j_4) + Math.round(i2 * f) + i3;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int mo171roundToPx0680j_4 = intrinsicMeasureScope.mo171roundToPx0680j_4(this.verticalArrangement.mo200getSpacingD9Ej5fM());
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
                int min2 = Math.min(measurable.maxIntrinsicHeight(Integer.MAX_VALUE), i == Integer.MAX_VALUE ? Integer.MAX_VALUE : i - min);
                min += min2;
                i2 = Math.max(i2, measurable.minIntrinsicWidth(min2));
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
                i2 = Math.max(i2, measurable2.minIntrinsicWidth(round != Integer.MAX_VALUE ? Math.round(round * weight2) : Integer.MAX_VALUE));
            }
        }
        return i2;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final MeasureResult placeHelper(Placeable[] placeableArr, MeasureScope measureScope, int i, int[] iArr, int i2, int i3, int[] iArr2, int i4, int i5, int i6) {
        return measureScope.layout(i3, i2, EmptyMap.INSTANCE, new BoxMeasurePolicy$$ExternalSyntheticLambda0(placeableArr, this, i3, i, measureScope, iArr));
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final void populateMainAxisPositions(int i, int[] iArr, int[] iArr2, MeasureScope measureScope) {
        this.verticalArrangement.arrange(measureScope, i, iArr, iArr2);
    }

    public final String toString() {
        return "ColumnMeasurePolicy(verticalArrangement=" + this.verticalArrangement + ", horizontalAlignment=" + this.horizontalAlignment + ')';
    }
}
