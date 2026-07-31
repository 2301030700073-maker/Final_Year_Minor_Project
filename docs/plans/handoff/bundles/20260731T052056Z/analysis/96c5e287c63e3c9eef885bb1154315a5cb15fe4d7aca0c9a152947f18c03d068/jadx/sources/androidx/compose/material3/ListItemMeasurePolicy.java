package androidx.compose.material3;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ListItemMeasurePolicy implements MultiContentMeasurePolicy {
    public static int calculateIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, ArrayList arrayList, int i, Function2 function2) {
        int i2;
        int i3;
        List list = (List) arrayList.get(0);
        List list2 = (List) arrayList.get(1);
        List list3 = (List) arrayList.get(2);
        List list4 = (List) arrayList.get(3);
        List list5 = (List) arrayList.get(4);
        int subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(i, intrinsicMeasureScope.mo81roundToPx0680j_4(32.0f));
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list4);
        if (measurable != null) {
            i2 = ((Number) function2.invoke(measurable, Integer.valueOf(subtractConstraintSafely))).intValue();
            subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(subtractConstraintSafely, measurable.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            i2 = 0;
        }
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list5);
        if (measurable2 != null) {
            i3 = ((Number) function2.invoke(measurable2, Integer.valueOf(subtractConstraintSafely))).intValue();
            subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(subtractConstraintSafely, measurable2.maxIntrinsicWidth(Integer.MAX_VALUE));
        } else {
            i3 = 0;
        }
        Object obj = (Measurable) CollectionsKt.firstOrNull(list2);
        int intValue = obj != null ? ((Number) function2.invoke(obj, Integer.valueOf(subtractConstraintSafely))).intValue() : 0;
        Object obj2 = (Measurable) CollectionsKt.firstOrNull(list);
        int intValue2 = obj2 != null ? ((Number) function2.invoke(obj2, Integer.valueOf(subtractConstraintSafely))).intValue() : 0;
        Object obj3 = (Measurable) CollectionsKt.firstOrNull(list3);
        int intValue3 = obj3 != null ? ((Number) function2.invoke(obj3, Integer.valueOf(subtractConstraintSafely))).intValue() : 0;
        boolean z = intValue3 > intrinsicMeasureScope.mo80roundToPxR2X_6o(ContextsKt.getSp(30));
        boolean z2 = intValue > 0;
        boolean z3 = intValue3 > 0;
        int i4 = ((z2 && z3) || z) ? 3 : (z2 || z3) ? 2 : 1;
        return CardKt.m273calculateHeightN4Jib3Y(intrinsicMeasureScope, i2, i3, intValue2, intValue, intValue3, i4, intrinsicMeasureScope.mo81roundToPx0680j_4((i4 == 3 ? 12.0f : 8.0f) * 2.0f), ConstraintsKt.Constraints$default(0, 0, 0, 0, 15));
    }

    public static int calculateIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, ArrayList arrayList, int i, Function2 function2) {
        List list = (List) arrayList.get(0);
        List list2 = (List) arrayList.get(1);
        List list3 = (List) arrayList.get(2);
        List list4 = (List) arrayList.get(3);
        List list5 = (List) arrayList.get(4);
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list4);
        int intValue = measurable != null ? ((Number) function2.invoke(measurable, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list5);
        int intValue2 = measurable2 != null ? ((Number) function2.invoke(measurable2, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable3 = (Measurable) CollectionsKt.firstOrNull(list);
        int intValue3 = measurable3 != null ? ((Number) function2.invoke(measurable3, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable4 = (Measurable) CollectionsKt.firstOrNull(list2);
        int intValue4 = measurable4 != null ? ((Number) function2.invoke(measurable4, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable5 = (Measurable) CollectionsKt.firstOrNull(list3);
        int intValue5 = measurable5 != null ? ((Number) function2.invoke(measurable5, Integer.valueOf(i))).intValue() : 0;
        int mo81roundToPx0680j_4 = intrinsicMeasureScope.mo81roundToPx0680j_4(32.0f);
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, 0, 15);
        if (Constraints.m677getHasBoundedWidthimpl(Constraints$default)) {
            return Constraints.m681getMaxWidthimpl(Constraints$default);
        }
        return mo81roundToPx0680j_4 + intValue + Math.max(intValue3, Math.max(intValue4, intValue5)) + intValue2;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicHeight(intrinsicMeasureScope, (ArrayList) list, i, ListItemMeasurePolicy$maxIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicWidth(intrinsicMeasureScope, (ArrayList) list, i, ListItemMeasurePolicy$maxIntrinsicWidth$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo119measure3p2s80s(MeasureScope measureScope, List list, long j) {
        float f;
        Placeable placeable;
        ArrayList arrayList = (ArrayList) list;
        List list2 = (List) arrayList.get(0);
        List list3 = (List) arrayList.get(1);
        List list4 = (List) arrayList.get(2);
        List list5 = (List) arrayList.get(3);
        List list6 = (List) arrayList.get(4);
        long m674copyZbe2FdA$default = Constraints.m674copyZbe2FdA$default(j, 0, 0, 0, 0, 10);
        int mo81roundToPx0680j_4 = measureScope.mo81roundToPx0680j_4(32.0f);
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list5);
        int minIntrinsicWidth = measurable != null ? measurable.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) : 0;
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list6);
        int subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(Constraints.m681getMaxWidthimpl(m674copyZbe2FdA$default), minIntrinsicWidth + (measurable2 != null ? measurable2.minIntrinsicWidth(Constraints.m680getMaxHeightimpl(j)) : 0) + mo81roundToPx0680j_4);
        Measurable measurable3 = (Measurable) CollectionsKt.firstOrNull(list4);
        long m690offsetNN6EwU = ConstraintsKt.m690offsetNN6EwU(-mo81roundToPx0680j_4, -measureScope.mo81roundToPx0680j_4(((((CollectionsKt.firstOrNull(list3) != null) && (CollectionsKt.firstOrNull(list4) != null)) || ((measurable3 != null ? measurable3.minIntrinsicHeight(subtractConstraintSafely) : 0) > measureScope.mo80roundToPxR2X_6o(ContextsKt.getSp(30)))) ? 12.0f : 8.0f) * 2.0f), m674copyZbe2FdA$default);
        Measurable measurable4 = (Measurable) CollectionsKt.firstOrNull(list5);
        Placeable mo512measureBRTryo0 = measurable4 != null ? measurable4.mo512measureBRTryo0(m690offsetNN6EwU) : null;
        int i = mo512measureBRTryo0 != null ? mo512measureBRTryo0.width : 0;
        Measurable measurable5 = (Measurable) CollectionsKt.firstOrNull(list6);
        if (measurable5 != null) {
            f = 2.0f;
            placeable = measurable5.mo512measureBRTryo0(ConstraintsKt.m691offsetNN6EwU$default(-i, 0, 2, m690offsetNN6EwU));
        } else {
            f = 2.0f;
            placeable = null;
        }
        int i2 = i + (placeable != null ? placeable.width : 0);
        Measurable measurable6 = (Measurable) CollectionsKt.firstOrNull(list2);
        Placeable mo512measureBRTryo02 = measurable6 != null ? measurable6.mo512measureBRTryo0(ConstraintsKt.m691offsetNN6EwU$default(-i2, 0, 2, m690offsetNN6EwU)) : null;
        int i3 = mo512measureBRTryo02 != null ? mo512measureBRTryo02.height : 0;
        Measurable measurable7 = (Measurable) CollectionsKt.firstOrNull(list4);
        Placeable mo512measureBRTryo03 = measurable7 != null ? measurable7.mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(-i2, -i3, m690offsetNN6EwU)) : null;
        int i4 = i3 + (mo512measureBRTryo03 != null ? mo512measureBRTryo03.height : 0);
        boolean z = (mo512measureBRTryo03 == null || mo512measureBRTryo03.get(AlignmentLineKt.FirstBaseline) == mo512measureBRTryo03.get(AlignmentLineKt.LastBaseline)) ? false : true;
        Measurable measurable8 = (Measurable) CollectionsKt.firstOrNull(list3);
        Placeable mo512measureBRTryo04 = measurable8 != null ? measurable8.mo512measureBRTryo0(ConstraintsKt.m690offsetNN6EwU(-i2, -i4, m690offsetNN6EwU)) : null;
        boolean z2 = mo512measureBRTryo04 != null;
        boolean z3 = mo512measureBRTryo03 != null;
        int i5 = ((z2 && z3) || z) ? 3 : (z2 || z3) ? 2 : 1;
        float f2 = i5 == 3 ? 12.0f : 8.0f;
        float f3 = f2 * f;
        final int m681getMaxWidthimpl = Constraints.m677getHasBoundedWidthimpl(j) ? Constraints.m681getMaxWidthimpl(j) : mo81roundToPx0680j_4 + (mo512measureBRTryo0 != null ? mo512measureBRTryo0.width : 0) + Math.max(mo512measureBRTryo02 != null ? mo512measureBRTryo02.width : 0, Math.max(mo512measureBRTryo04 != null ? mo512measureBRTryo04.width : 0, mo512measureBRTryo03 != null ? mo512measureBRTryo03.width : 0)) + (placeable != null ? placeable.width : 0);
        final Placeable placeable2 = mo512measureBRTryo04;
        float f4 = f2;
        final int m273calculateHeightN4Jib3Y = CardKt.m273calculateHeightN4Jib3Y(measureScope, mo512measureBRTryo0 != null ? mo512measureBRTryo0.height : 0, placeable != null ? placeable.height : 0, mo512measureBRTryo02 != null ? mo512measureBRTryo02.height : 0, mo512measureBRTryo04 != null ? mo512measureBRTryo04.height : 0, mo512measureBRTryo03 != null ? mo512measureBRTryo03.height : 0, i5, measureScope.mo81roundToPx0680j_4(f3), j);
        final boolean z4 = i5 == 3;
        final int mo81roundToPx0680j_42 = measureScope.mo81roundToPx0680j_4(16.0f);
        final int mo81roundToPx0680j_43 = measureScope.mo81roundToPx0680j_4(16.0f);
        final int mo81roundToPx0680j_44 = measureScope.mo81roundToPx0680j_4(f4);
        final Placeable placeable3 = placeable;
        final Placeable placeable4 = mo512measureBRTryo02;
        final Placeable placeable5 = mo512measureBRTryo03;
        final Placeable placeable6 = mo512measureBRTryo0;
        return measureScope.layout(m681getMaxWidthimpl, m273calculateHeightN4Jib3Y, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int round;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable placeable7 = Placeable.this;
                int i6 = mo81roundToPx0680j_42;
                boolean z5 = z4;
                int i7 = mo81roundToPx0680j_44;
                int i8 = m273calculateHeightN4Jib3Y;
                if (placeable7 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, i6, z5 ? i7 : Math.round(((i8 - placeable7.height) / 2.0f) * 1.0f));
                }
                int i9 = i6 + (placeable7 != null ? placeable7.width : 0);
                Placeable placeable8 = placeable4;
                Placeable placeable9 = placeable2;
                Placeable placeable10 = placeable5;
                if (z5) {
                    round = i7;
                } else {
                    round = Math.round(((i8 - (((placeable8 != null ? placeable8.height : 0) + (placeable9 != null ? placeable9.height : 0)) + (placeable10 != null ? placeable10.height : 0))) / 2.0f) * 1.0f);
                }
                if (placeable9 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, i9, round);
                }
                int i10 = round + (placeable9 != null ? placeable9.height : 0);
                if (placeable8 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable8, i9, i10);
                }
                int i11 = i10 + (placeable8 != null ? placeable8.height : 0);
                if (placeable10 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable10, i9, i11);
                }
                Placeable placeable11 = placeable3;
                if (placeable11 != null) {
                    int i12 = (m681getMaxWidthimpl - mo81roundToPx0680j_43) - placeable11.width;
                    if (!z5) {
                        i7 = Math.round(((i8 - placeable11.height) / 2.0f) * 1.0f);
                    }
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable11, i12, i7);
                }
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicHeight(intrinsicMeasureScope, (ArrayList) list, i, ListItemMeasurePolicy$minIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicWidth(intrinsicMeasureScope, (ArrayList) list, i, ListItemMeasurePolicy$minIntrinsicWidth$1.INSTANCE);
    }
}
