package androidx.compose.material3;

import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.ui.Alignment;
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

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InteractiveListItemMeasurePolicy implements MultiContentMeasurePolicy {
    public final Alignment.Vertical verticalAlignment;

    public InteractiveListItemMeasurePolicy(Alignment.Vertical vertical) {
        this.verticalAlignment = vertical;
    }

    public static int calculateIntrinsicHeight(ArrayList arrayList, int i, Function2 function2) {
        int i2;
        int i3;
        List list = (List) arrayList.get(0);
        List list2 = (List) arrayList.get(1);
        List list3 = (List) arrayList.get(2);
        List list4 = (List) arrayList.get(3);
        List list5 = (List) arrayList.get(4);
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list);
        if (measurable != null) {
            i2 = ((Number) function2.invoke(measurable, Integer.valueOf(i))).intValue();
            i = LayoutUtilKt.subtractConstraintSafely(i, measurable.maxIntrinsicWidth(Log.LOG_LEVEL_OFF));
        } else {
            i2 = 0;
        }
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list2);
        if (measurable2 != null) {
            i3 = ((Number) function2.invoke(measurable2, Integer.valueOf(i))).intValue();
            i = LayoutUtilKt.subtractConstraintSafely(i, measurable2.maxIntrinsicWidth(Log.LOG_LEVEL_OFF));
        } else {
            i3 = 0;
        }
        Object obj = (Measurable) CollectionsKt.firstOrNull(list3);
        int intValue = obj != null ? ((Number) function2.invoke(obj, Integer.valueOf(i))).intValue() : 0;
        Object obj2 = (Measurable) CollectionsKt.firstOrNull(list4);
        int intValue2 = obj2 != null ? ((Number) function2.invoke(obj2, Integer.valueOf(i))).intValue() : 0;
        Object obj3 = (Measurable) CollectionsKt.firstOrNull(list5);
        return ConstraintsKt.m439constrainHeightK40F9xA(Math.max(i2, Math.max((obj3 != null ? ((Number) function2.invoke(obj3, Integer.valueOf(i))).intValue() : 0) + intValue + intValue2, i3)), ConstraintsKt.Constraints$default(0, 0, 15));
    }

    public static int calculateIntrinsicWidth(ArrayList arrayList, int i, Function2 function2) {
        List list = (List) arrayList.get(0);
        List list2 = (List) arrayList.get(1);
        List list3 = (List) arrayList.get(2);
        List list4 = (List) arrayList.get(3);
        List list5 = (List) arrayList.get(4);
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list);
        int intValue = measurable != null ? ((Number) function2.invoke(measurable, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list2);
        int intValue2 = measurable2 != null ? ((Number) function2.invoke(measurable2, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable3 = (Measurable) CollectionsKt.firstOrNull(list3);
        int intValue3 = measurable3 != null ? ((Number) function2.invoke(measurable3, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable4 = (Measurable) CollectionsKt.firstOrNull(list4);
        int intValue4 = measurable4 != null ? ((Number) function2.invoke(measurable4, Integer.valueOf(i))).intValue() : 0;
        Measurable measurable5 = (Measurable) CollectionsKt.firstOrNull(list5);
        int intValue5 = measurable5 != null ? ((Number) function2.invoke(measurable5, Integer.valueOf(i))).intValue() : 0;
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 15);
        return Constraints.m430getHasBoundedWidthimpl(Constraints$default) ? Constraints.m434getMaxWidthimpl(Constraints$default) : Math.max(intValue5, Math.max(intValue3, intValue4)) + intValue + intValue2;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicHeight((ArrayList) list, i, InteractiveListItemMeasurePolicy$maxIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicWidth((ArrayList) list, i, InteractiveListItemMeasurePolicy$maxIntrinsicWidth$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo82measure3p2s80s(MeasureScope measureScope, List list, long j) {
        ArrayList arrayList = (ArrayList) list;
        List list2 = (List) arrayList.get(0);
        List list3 = (List) arrayList.get(1);
        List list4 = (List) arrayList.get(2);
        List list5 = (List) arrayList.get(3);
        List list6 = (List) arrayList.get(4);
        long m427copyZbe2FdA$default = Constraints.m427copyZbe2FdA$default(0, 0, 0, j, 10);
        Measurable measurable = (Measurable) CollectionsKt.firstOrNull(list2);
        final Placeable mo292measureBRTryo0 = measurable != null ? measurable.mo292measureBRTryo0(m427copyZbe2FdA$default) : null;
        int i = mo292measureBRTryo0 != null ? mo292measureBRTryo0.width : 0;
        Measurable measurable2 = (Measurable) CollectionsKt.firstOrNull(list3);
        Placeable mo292measureBRTryo02 = measurable2 != null ? measurable2.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i, m427copyZbe2FdA$default, 0)) : null;
        int i2 = i + (mo292measureBRTryo02 != null ? mo292measureBRTryo02.width : 0);
        Measurable measurable3 = (Measurable) CollectionsKt.firstOrNull(list4);
        final Placeable mo292measureBRTryo03 = measurable3 != null ? measurable3.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i2, m427copyZbe2FdA$default, 0)) : null;
        int i3 = mo292measureBRTryo03 != null ? mo292measureBRTryo03.height : 0;
        Measurable measurable4 = (Measurable) CollectionsKt.firstOrNull(list6);
        final Placeable mo292measureBRTryo04 = measurable4 != null ? measurable4.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i2, m427copyZbe2FdA$default, -i3)) : null;
        int i4 = i3 + (mo292measureBRTryo04 != null ? mo292measureBRTryo04.height : 0);
        Measurable measurable5 = (Measurable) CollectionsKt.firstOrNull(list5);
        final Placeable mo292measureBRTryo05 = measurable5 != null ? measurable5.mo292measureBRTryo0(ConstraintsKt.m441offsetNN6EwU(-i2, m427copyZbe2FdA$default, -i4)) : null;
        int i5 = mo292measureBRTryo0 != null ? mo292measureBRTryo0.width : 0;
        final int m434getMaxWidthimpl = Constraints.m430getHasBoundedWidthimpl(j) ? Constraints.m434getMaxWidthimpl(j) : Math.max(mo292measureBRTryo04 != null ? mo292measureBRTryo04.width : 0, Math.max(mo292measureBRTryo03 != null ? mo292measureBRTryo03.width : 0, mo292measureBRTryo05 != null ? mo292measureBRTryo05.width : 0)) + i5 + (mo292measureBRTryo02 != null ? mo292measureBRTryo02.width : 0);
        final int m439constrainHeightK40F9xA = ConstraintsKt.m439constrainHeightK40F9xA(Math.max(mo292measureBRTryo0 != null ? mo292measureBRTryo0.height : 0, Math.max((mo292measureBRTryo04 != null ? mo292measureBRTryo04.height : 0) + (mo292measureBRTryo03 != null ? mo292measureBRTryo03.height : 0) + (mo292measureBRTryo05 != null ? mo292measureBRTryo05.height : 0), mo292measureBRTryo02 != null ? mo292measureBRTryo02.height : 0)), j);
        final Placeable placeable = mo292measureBRTryo02;
        return measureScope.layout(m434getMaxWidthimpl, m439constrainHeightK40F9xA, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.InteractiveListItemMeasurePolicy$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Alignment.Vertical vertical = this.verticalAlignment;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable placeable2 = Placeable.this;
                int i6 = m439constrainHeightK40F9xA;
                if (placeable2 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, 0, vertical.align(placeable2.height, i6));
                }
                int i7 = placeable2 != null ? placeable2.width : 0;
                Placeable placeable3 = mo292measureBRTryo04;
                int i8 = placeable3 != null ? placeable3.height : 0;
                Placeable placeable4 = mo292measureBRTryo03;
                int i9 = i8 + (placeable4 != null ? placeable4.height : 0);
                Placeable placeable5 = mo292measureBRTryo05;
                int align = vertical.align(i9 + (placeable5 != null ? placeable5.height : 0), i6);
                if (placeable4 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i7, align);
                }
                int i10 = align + (placeable4 != null ? placeable4.height : 0);
                if (placeable3 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i7, i10);
                }
                int i11 = i10 + (placeable3 != null ? placeable3.height : 0);
                if (placeable5 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable5, i7, i11);
                }
                Placeable placeable6 = placeable;
                if (placeable6 != null) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable6, m434getMaxWidthimpl - placeable6.width, vertical.align(placeable6.height, i6));
                }
                return Unit.INSTANCE;
            }
        });
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicHeight((ArrayList) list, i, InteractiveListItemMeasurePolicy$minIntrinsicHeight$1.INSTANCE);
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return calculateIntrinsicWidth((ArrayList) list, i, InteractiveListItemMeasurePolicy$minIntrinsicWidth$1.INSTANCE);
    }
}
