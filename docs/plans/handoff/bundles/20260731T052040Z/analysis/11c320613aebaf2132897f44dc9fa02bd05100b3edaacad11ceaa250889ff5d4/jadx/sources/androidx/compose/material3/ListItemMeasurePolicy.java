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
import com.google.android.exoplayer2.util.Log;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        float f = ListItemKt.InteractiveListStartPadding;
        int subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(i, intrinsicMeasureScope.mo58roundToPx0680j_4(32.0f));
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list4);
        if (measurable != null) {
            i2 = ((Number) function2.invoke(measurable, Integer.valueOf(subtractConstraintSafely))).intValue();
            subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(subtractConstraintSafely, measurable.maxIntrinsicWidth(Log.LOG_LEVEL_OFF));
        } else {
            i2 = 0;
        }
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list5);
        if (measurable2 != null) {
            i3 = ((Number) function2.invoke(measurable2, Integer.valueOf(subtractConstraintSafely))).intValue();
            subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(subtractConstraintSafely, measurable2.maxIntrinsicWidth(Log.LOG_LEVEL_OFF));
        } else {
            i3 = 0;
        }
        Object obj = (Measurable) CollectionsKt.firstOrNull(list2);
        int intValue = obj != null ? ((Number) function2.invoke(obj, Integer.valueOf(subtractConstraintSafely))).intValue() : 0;
        Object obj2 = (Measurable) CollectionsKt.firstOrNull(list);
        int intValue2 = obj2 != null ? ((Number) function2.invoke(obj2, Integer.valueOf(subtractConstraintSafely))).intValue() : 0;
        Object obj3 = (Measurable) CollectionsKt.firstOrNull(list3);
        int intValue3 = obj3 != null ? ((Number) function2.invoke(obj3, Integer.valueOf(subtractConstraintSafely))).intValue() : 0;
        boolean z = intValue3 > intrinsicMeasureScope.mo57roundToPxR2X_6o(MathKt.getSp(30));
        boolean z2 = intValue > 0;
        boolean z3 = intValue3 > 0;
        int i4 = ((z2 && z3) || z) ? 3 : (z2 || z3) ? 2 : 1;
        return ListItemKt.m155access$calculateHeightN4Jib3Y(intrinsicMeasureScope, i2, i3, intValue2, intValue, intValue3, i4, intrinsicMeasureScope.mo58roundToPx0680j_4((i4 == 3 ? 12.0f : 8.0f) * 2.0f), ConstraintsKt.Constraints$default(0, 0, 15));
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
        float f = ListItemKt.InteractiveListStartPadding;
        int mo58roundToPx0680j_4 = intrinsicMeasureScope.mo58roundToPx0680j_4(32.0f);
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 15);
        if (Constraints.m430getHasBoundedWidthimpl(Constraints$default)) {
            return Constraints.m434getMaxWidthimpl(Constraints$default);
        }
        return mo58roundToPx0680j_4 + intValue + Math.max(intValue3, Math.max(intValue4, intValue5)) + intValue2;
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
    public final MeasureResult mo82measure3p2s80s(MeasureScope measureScope, List list, long j) {
        float f;
        Placeable placeable;
        int i;
        int i2;
        ArrayList arrayList = (ArrayList) list;
        List list2 = (List) arrayList.get(0);
        List list3 = (List) arrayList.get(1);
        List list4 = (List) arrayList.get(2);
        List list5 = (List) arrayList.get(3);
        List list6 = (List) arrayList.get(4);
        long m427copyZbe2FdA$default = Constraints.m427copyZbe2FdA$default(0, 0, 0, j, 10);
        float f2 = ListItemKt.InteractiveListStartPadding;
        int mo58roundToPx0680j_4 = measureScope.mo58roundToPx0680j_4(32.0f);
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list5);
        int minIntrinsicWidth = measurable != null ? measurable.minIntrinsicWidth(Constraints.m433getMaxHeightimpl(j)) : 0;
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list6);
        int subtractConstraintSafely = LayoutUtilKt.subtractConstraintSafely(Constraints.m434getMaxWidthimpl(m427copyZbe2FdA$default), minIntrinsicWidth + (measurable2 != null ? measurable2.minIntrinsicWidth(Constraints.m433getMaxHeightimpl(j)) : 0) + mo58roundToPx0680j_4);
        Measurable measurable3 = (Measurable) CollectionsKt.firstOrNull(list4);
        long m441offsetNN6EwU = ConstraintsKt.m441offsetNN6EwU(-mo58roundToPx0680j_4, m427copyZbe2FdA$default, -measureScope.mo58roundToPx0680j_4(((((CollectionsKt.firstOrNull(list3) != null) && (CollectionsKt.firstOrNull(list4) != null)) || ((measurable3 != null ? measurable3.minIntrinsicHeight(subtractConstraintSafely) : 0) > measureScope.mo57roundToPxR2X_6o(MathKt.getSp(30)))) ? 12.0f : 8.0f) * 2.0f));
        Measurable measurable4 = (Measurable) CollectionsKt.firstOrNull(list5);
        Placeable mo292measureBRTryo0 = measurable4 != null ? measurable4.mo292measureBRTryo0(m441offsetNN6EwU) : null;
        int i3 = mo292measureBRTryo0 != null ? mo292measureBRTryo0.width : 0;
        Measurable measurable5 = (Measurable) CollectionsKt.firstOrNull(list6);
        if (measurable5 != null) {
            f = 2.0f;
            placeable = measurable5.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i3, m441offsetNN6EwU, 0));
        } else {
            f = 2.0f;
            placeable = null;
        }
        int i4 = i3 + (placeable != null ? placeable.width : 0);
        Measurable measurable6 = (Measurable) CollectionsKt.firstOrNull(list2);
        Placeable mo292measureBRTryo02 = measurable6 != null ? measurable6.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i4, m441offsetNN6EwU, 0)) : null;
        int i5 = mo292measureBRTryo02 != null ? mo292measureBRTryo02.height : 0;
        Measurable measurable7 = (Measurable) CollectionsKt.firstOrNull(list4);
        Placeable mo292measureBRTryo03 = measurable7 != null ? measurable7.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i4, m441offsetNN6EwU, -i5)) : null;
        int i6 = i5 + (mo292measureBRTryo03 != null ? mo292measureBRTryo03.height : 0);
        boolean z = (mo292measureBRTryo03 == null || mo292measureBRTryo03.get(AlignmentLineKt.FirstBaseline) == mo292measureBRTryo03.get(AlignmentLineKt.LastBaseline)) ? false : true;
        Measurable measurable8 = (Measurable) CollectionsKt.firstOrNull(list3);
        Placeable mo292measureBRTryo04 = measurable8 != null ? measurable8.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i4, m441offsetNN6EwU, -i6)) : null;
        boolean z2 = mo292measureBRTryo04 != null;
        boolean z3 = mo292measureBRTryo03 != null;
        if ((z2 && z3) || z) {
            i = 3;
            i2 = 3;
        } else if (z2 || z3) {
            i = 3;
            i2 = 2;
        } else {
            i = 3;
            i2 = 1;
        }
        float f3 = i2 == i ? 12.0f : 8.0f;
        float f4 = f3 * f;
        final int m434getMaxWidthimpl = Constraints.m430getHasBoundedWidthimpl(j) ? Constraints.m434getMaxWidthimpl(j) : mo58roundToPx0680j_4 + (mo292measureBRTryo0 != null ? mo292measureBRTryo0.width : 0) + Math.max(mo292measureBRTryo02 != null ? mo292measureBRTryo02.width : 0, Math.max(mo292measureBRTryo04 != null ? mo292measureBRTryo04.width : 0, mo292measureBRTryo03 != null ? mo292measureBRTryo03.width : 0)) + (placeable != null ? placeable.width : 0);
        final Placeable placeable2 = mo292measureBRTryo04;
        float f5 = f3;
        final int m155access$calculateHeightN4Jib3Y = ListItemKt.m155access$calculateHeightN4Jib3Y(measureScope, mo292measureBRTryo0 != null ? mo292measureBRTryo0.height : 0, placeable != null ? placeable.height : 0, mo292measureBRTryo02 != null ? mo292measureBRTryo02.height : 0, mo292measureBRTryo04 != null ? mo292measureBRTryo04.height : 0, mo292measureBRTryo03 != null ? mo292measureBRTryo03.height : 0, i2, measureScope.mo58roundToPx0680j_4(f4), j);
        final boolean z4 = i2 == 3;
        final int mo58roundToPx0680j_42 = measureScope.mo58roundToPx0680j_4(16.0f);
        final int mo58roundToPx0680j_43 = measureScope.mo58roundToPx0680j_4(16.0f);
        final int mo58roundToPx0680j_44 = measureScope.mo58roundToPx0680j_4(f5);
        final Placeable placeable3 = mo292measureBRTryo02;
        final Placeable placeable4 = mo292measureBRTryo03;
        final Placeable placeable5 = placeable;
        final Placeable placeable6 = mo292measureBRTryo0;
        return measureScope.layout(m434getMaxWidthimpl, m155access$calculateHeightN4Jib3Y, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.ListItemKt$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int round;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable placeable7 = Placeable.this;
                int i7 = mo58roundToPx0680j_42;
                boolean z5 = z4;
                int i8 = mo58roundToPx0680j_44;
                int i9 = m155access$calculateHeightN4Jib3Y;
                if (placeable7 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable7, i7, z5 ? i8 : Math.round(((i9 - placeable7.height) / 2.0f) * 1.0f));
                }
                int i10 = i7 + (placeable7 != null ? placeable7.width : 0);
                Placeable placeable8 = placeable3;
                Placeable placeable9 = placeable2;
                Placeable placeable10 = placeable4;
                if (z5) {
                    round = i8;
                } else {
                    round = Math.round(((i9 - (((placeable8 != null ? placeable8.height : 0) + (placeable9 != null ? placeable9.height : 0)) + (placeable10 != null ? placeable10.height : 0))) / 2.0f) * 1.0f);
                }
                if (placeable9 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable9, i10, round);
                }
                int i11 = round + (placeable9 != null ? placeable9.height : 0);
                if (placeable8 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable8, i10, i11);
                }
                int i12 = i11 + (placeable8 != null ? placeable8.height : 0);
                if (placeable10 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable10, i10, i12);
                }
                Placeable placeable11 = placeable5;
                if (placeable11 != null) {
                    int i13 = (m434getMaxWidthimpl - mo58roundToPx0680j_43) - placeable11.width;
                    if (!z5) {
                        i8 = Math.round(((i9 - placeable11.height) / 2.0f) * 1.0f);
                    }
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable11, i13, i8);
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
