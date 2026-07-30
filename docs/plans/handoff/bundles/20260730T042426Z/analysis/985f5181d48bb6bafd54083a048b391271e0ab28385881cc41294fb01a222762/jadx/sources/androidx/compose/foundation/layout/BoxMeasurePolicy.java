package androidx.compose.foundation.layout;

import androidx.compose.animation.ChangeSize$$ExternalSyntheticBackport0;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import ch.qos.logback.core.CoreConstants;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: Box.kt */
/* loaded from: classes.dex */
final class BoxMeasurePolicy implements MeasurePolicy {
    private final Alignment alignment;
    private final boolean propagateMinConstraints;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxMeasurePolicy)) {
            return false;
        }
        BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
        return Intrinsics.areEqual(this.alignment, boxMeasurePolicy.alignment) && this.propagateMinConstraints == boxMeasurePolicy.propagateMinConstraints;
    }

    public int hashCode() {
        return (this.alignment.hashCode() * 31) + ChangeSize$$ExternalSyntheticBackport0.m(this.propagateMinConstraints);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return MeasurePolicy.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return MeasurePolicy.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return MeasurePolicy.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return MeasurePolicy.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    public String toString() {
        return "BoxMeasurePolicy(alignment=" + this.alignment + ", propagateMinConstraints=" + this.propagateMinConstraints + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public BoxMeasurePolicy(Alignment alignment, boolean z) {
        this.alignment = alignment;
        this.propagateMinConstraints = z;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo21measure3p2s80s(final MeasureScope measureScope, final List list, long j) {
        boolean matchesParentSize;
        boolean matchesParentSize2;
        boolean matchesParentSize3;
        int m2399getMinWidthimpl;
        int m2398getMinHeightimpl;
        Placeable mo1751measureBRTryo0;
        if (list.isEmpty()) {
            return MeasureScope.CC.layout$default(measureScope, Constraints.m2399getMinWidthimpl(j), Constraints.m2398getMinHeightimpl(j), null, new Function1() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$measure$1
                public final void invoke(Placeable.PlacementScope placementScope) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Placeable.PlacementScope) obj);
                    return Unit.INSTANCE;
                }
            }, 4, null);
        }
        long m2389copyZbe2FdA$default = this.propagateMinConstraints ? j : Constraints.m2389copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        if (list.size() == 1) {
            final Measurable measurable = (Measurable) list.get(0);
            matchesParentSize3 = BoxKt.getMatchesParentSize(measurable);
            if (!matchesParentSize3) {
                mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(m2389copyZbe2FdA$default);
                m2399getMinWidthimpl = Math.max(Constraints.m2399getMinWidthimpl(j), mo1751measureBRTryo0.getWidth());
                m2398getMinHeightimpl = Math.max(Constraints.m2398getMinHeightimpl(j), mo1751measureBRTryo0.getHeight());
            } else {
                m2399getMinWidthimpl = Constraints.m2399getMinWidthimpl(j);
                m2398getMinHeightimpl = Constraints.m2398getMinHeightimpl(j);
                mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(Constraints.Companion.m2406fixedJhjzzOo(Constraints.m2399getMinWidthimpl(j), Constraints.m2398getMinHeightimpl(j)));
            }
            final int i = m2399getMinWidthimpl;
            final int i2 = m2398getMinHeightimpl;
            final Placeable placeable = mo1751measureBRTryo0;
            return MeasureScope.CC.layout$default(measureScope, i, i2, null, new Function1() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$measure$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Placeable.PlacementScope) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Placeable.PlacementScope placementScope) {
                    Alignment alignment;
                    Placeable placeable2 = Placeable.this;
                    Measurable measurable2 = measurable;
                    LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                    int i3 = i;
                    int i4 = i2;
                    alignment = this.alignment;
                    BoxKt.placeInBox(placementScope, placeable2, measurable2, layoutDirection, i3, i4, alignment);
                }
            }, 4, null);
        }
        final Placeable[] placeableArr = new Placeable[list.size()];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = Constraints.m2399getMinWidthimpl(j);
        final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = Constraints.m2398getMinHeightimpl(j);
        int size = list.size();
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable2 = (Measurable) list.get(i3);
            matchesParentSize2 = BoxKt.getMatchesParentSize(measurable2);
            if (matchesParentSize2) {
                z = true;
            } else {
                Placeable mo1751measureBRTryo02 = measurable2.mo1751measureBRTryo0(m2389copyZbe2FdA$default);
                placeableArr[i3] = mo1751measureBRTryo02;
                ref$IntRef.element = Math.max(ref$IntRef.element, mo1751measureBRTryo02.getWidth());
                ref$IntRef2.element = Math.max(ref$IntRef2.element, mo1751measureBRTryo02.getHeight());
            }
        }
        if (z) {
            int i4 = ref$IntRef.element;
            int i5 = i4 != Integer.MAX_VALUE ? i4 : 0;
            int i6 = ref$IntRef2.element;
            long Constraints = ConstraintsKt.Constraints(i5, i4, i6 != Integer.MAX_VALUE ? i6 : 0, i6);
            int size2 = list.size();
            for (int i7 = 0; i7 < size2; i7++) {
                Measurable measurable3 = (Measurable) list.get(i7);
                matchesParentSize = BoxKt.getMatchesParentSize(measurable3);
                if (matchesParentSize) {
                    placeableArr[i7] = measurable3.mo1751measureBRTryo0(Constraints);
                }
            }
        }
        return MeasureScope.CC.layout$default(measureScope, ref$IntRef.element, ref$IntRef2.element, null, new Function1() { // from class: androidx.compose.foundation.layout.BoxMeasurePolicy$measure$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Placeable.PlacementScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(Placeable.PlacementScope placementScope) {
                Alignment alignment;
                Placeable[] placeableArr2 = placeableArr;
                List list2 = list;
                MeasureScope measureScope2 = measureScope;
                Ref$IntRef ref$IntRef3 = ref$IntRef;
                Ref$IntRef ref$IntRef4 = ref$IntRef2;
                BoxMeasurePolicy boxMeasurePolicy = this;
                int length = placeableArr2.length;
                int i8 = 0;
                int i9 = 0;
                while (i8 < length) {
                    Placeable placeable2 = placeableArr2[i8];
                    Intrinsics.checkNotNull(placeable2, "null cannot be cast to non-null type androidx.compose.ui.layout.Placeable");
                    Measurable measurable4 = (Measurable) list2.get(i9);
                    LayoutDirection layoutDirection = measureScope2.getLayoutDirection();
                    int i10 = ref$IntRef3.element;
                    int i11 = ref$IntRef4.element;
                    alignment = boxMeasurePolicy.alignment;
                    BoxKt.placeInBox(placementScope, placeable2, measurable4, layoutDirection, i10, i11, alignment);
                    i8++;
                    i9++;
                }
            }
        }, 4, null);
    }
}
