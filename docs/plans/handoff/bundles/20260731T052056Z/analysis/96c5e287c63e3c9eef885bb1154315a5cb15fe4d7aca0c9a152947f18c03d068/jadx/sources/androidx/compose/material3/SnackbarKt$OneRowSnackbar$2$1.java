package androidx.compose.material3;

import androidx.compose.material3.tokens.SnackbarTokens;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.ListUtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda7;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnackbarKt$OneRowSnackbar$2$1 implements MeasurePolicy {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SnackbarKt$OneRowSnackbar$2$1(int i) {
        this.$r8$classId = i;
    }

    public static final void measure_3p2s80s$startNewSequence(ArrayList arrayList, Ref$IntRef ref$IntRef, MeasureScope measureScope, ArrayList arrayList2, ArrayList arrayList3, Ref$IntRef ref$IntRef2, ArrayList arrayList4, Ref$IntRef ref$IntRef3, Ref$IntRef ref$IntRef4) {
        if (!arrayList.isEmpty()) {
            ref$IntRef.element = measureScope.mo81roundToPx0680j_4(12.0f) + ref$IntRef.element;
        }
        arrayList.add(0, CollectionsKt.toList(arrayList2));
        arrayList3.add(Integer.valueOf(ref$IntRef2.element));
        arrayList4.add(Integer.valueOf(ref$IntRef.element));
        ref$IntRef.element += ref$IntRef2.element;
        ref$IntRef3.element = Math.max(ref$IntRef3.element, ref$IntRef4.element);
        arrayList2.clear();
        ref$IntRef4.element = 0;
        ref$IntRef2.element = 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo15measure3p2s80s(MeasureScope measureScope, List list, long j) {
        Object obj;
        Object obj2;
        int mo81roundToPx0680j_4;
        int max;
        int i;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2;
        long j2 = j;
        int i3 = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        switch (i3) {
            case 0:
                int min = Math.min(Constraints.m681getMaxWidthimpl(j2), measureScope.mo81roundToPx0680j_4(600.0f));
                int size = list.size();
                int i4 = 0;
                while (true) {
                    if (i4 < size) {
                        obj = list.get(i4);
                        if (!Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj), "action")) {
                            i4++;
                        }
                    } else {
                        obj = null;
                    }
                }
                Measurable measurable = (Measurable) obj;
                Placeable mo512measureBRTryo0 = measurable != null ? measurable.mo512measureBRTryo0(j2) : null;
                int size2 = list.size();
                int i5 = 0;
                while (true) {
                    if (i5 < size2) {
                        obj2 = list.get(i5);
                        if (!Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj2), "dismissAction")) {
                            i5++;
                        }
                    } else {
                        obj2 = null;
                    }
                }
                Measurable measurable2 = (Measurable) obj2;
                Placeable mo512measureBRTryo02 = measurable2 != null ? measurable2.mo512measureBRTryo0(j2) : null;
                int i6 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.width : 0;
                int i7 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.height : 0;
                int i8 = mo512measureBRTryo02 != null ? mo512measureBRTryo02.width : 0;
                int i9 = mo512measureBRTryo02 != null ? mo512measureBRTryo02.height : 0;
                int mo81roundToPx0680j_42 = ((min - i6) - i8) - (i8 == 0 ? measureScope.mo81roundToPx0680j_4(8.0f) : 0);
                int m683getMinWidthimpl = Constraints.m683getMinWidthimpl(j2);
                if (mo81roundToPx0680j_42 >= m683getMinWidthimpl) {
                    m683getMinWidthimpl = mo81roundToPx0680j_42;
                }
                int size3 = list.size();
                int i10 = 0;
                while (i10 < size3) {
                    Measurable measurable3 = (Measurable) list.get(i10);
                    if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable3), "text")) {
                        int i11 = i7;
                        long j3 = j2;
                        int i12 = i9;
                        final Placeable mo512measureBRTryo03 = measurable3.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(j3, 0, m683getMinWidthimpl, 0, 0, 9));
                        HorizontalAlignmentLine horizontalAlignmentLine = AlignmentLineKt.FirstBaseline;
                        int i13 = mo512measureBRTryo03.get(horizontalAlignmentLine);
                        int i14 = mo512measureBRTryo03.get(AlignmentLineKt.LastBaseline);
                        boolean z = true;
                        boolean z2 = (i13 == Integer.MIN_VALUE || i14 == Integer.MIN_VALUE) ? false : true;
                        if (i13 != i14 && z2) {
                            z = false;
                        }
                        final int i15 = min - i8;
                        final int i16 = i15 - i6;
                        if (z) {
                            max = Math.max(measureScope.mo81roundToPx0680j_4(SnackbarTokens.SingleLineContainerHeight), Math.max(i11, i12));
                            mo81roundToPx0680j_4 = (max - mo512measureBRTryo03.height) / 2;
                            if (mo512measureBRTryo0 != null && (i2 = mo512measureBRTryo0.get(horizontalAlignmentLine)) != Integer.MIN_VALUE) {
                                i = (i13 + mo81roundToPx0680j_4) - i2;
                            }
                            i = 0;
                        } else {
                            mo81roundToPx0680j_4 = measureScope.mo81roundToPx0680j_4(30.0f) - i13;
                            max = Math.max(measureScope.mo81roundToPx0680j_4(SnackbarTokens.TwoLinesContainerHeight), mo512measureBRTryo03.height + mo81roundToPx0680j_4);
                            if (mo512measureBRTryo0 != null) {
                                i = (max - mo512measureBRTryo0.height) / 2;
                            }
                            i = 0;
                        }
                        final int i17 = i;
                        final int i18 = mo81roundToPx0680j_4;
                        final int i19 = mo512measureBRTryo02 != null ? (max - mo512measureBRTryo02.height) / 2 : 0;
                        final Placeable placeable = mo512measureBRTryo02;
                        final Placeable placeable2 = mo512measureBRTryo0;
                        return measureScope.layout(min, max, emptyMap, new Function1() { // from class: androidx.compose.material3.SnackbarKt$OneRowSnackbar$2$1$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                                Placeable.PlacementScope.placeRelative$default(placementScope, Placeable.this, 0, i18);
                                Placeable placeable3 = placeable;
                                if (placeable3 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i15, i19);
                                }
                                Placeable placeable4 = placeable2;
                                if (placeable4 != null) {
                                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable4, i16, i17);
                                }
                                return Unit.INSTANCE;
                            }
                        });
                    }
                    i10++;
                    i7 = i7;
                    j2 = j;
                }
                ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
                Gson$$ExternalSyntheticBUOutline0.m$1();
                return null;
            default:
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                ArrayList arrayList5 = new ArrayList();
                Ref$IntRef ref$IntRef = new Ref$IntRef();
                Ref$IntRef ref$IntRef2 = new Ref$IntRef();
                ArrayList arrayList6 = new ArrayList();
                int i20 = 0;
                Ref$IntRef ref$IntRef3 = new Ref$IntRef();
                Ref$IntRef ref$IntRef4 = new Ref$IntRef();
                int size4 = list.size();
                while (i20 < size4) {
                    Placeable mo512measureBRTryo04 = ((Measurable) list.get(i20)).mo512measureBRTryo0(j2);
                    if (!arrayList6.isEmpty()) {
                        ArrayList arrayList7 = arrayList3;
                        Ref$IntRef ref$IntRef5 = ref$IntRef2;
                        if (measureScope.mo81roundToPx0680j_4(8.0f) + ref$IntRef3.element + mo512measureBRTryo04.width <= Constraints.m681getMaxWidthimpl(j2)) {
                            arrayList3 = arrayList7;
                            ref$IntRef2 = ref$IntRef5;
                        } else {
                            arrayList3 = arrayList7;
                            ref$IntRef2 = ref$IntRef5;
                            measure_3p2s80s$startNewSequence(arrayList3, ref$IntRef2, measureScope, arrayList6, arrayList4, ref$IntRef4, arrayList5, ref$IntRef, ref$IntRef3);
                        }
                    }
                    if (arrayList6.isEmpty()) {
                        arrayList2 = arrayList3;
                    } else {
                        arrayList2 = arrayList3;
                        ref$IntRef3.element = measureScope.mo81roundToPx0680j_4(8.0f) + ref$IntRef3.element;
                    }
                    arrayList6.add(mo512measureBRTryo04);
                    ref$IntRef3.element += mo512measureBRTryo04.width;
                    ref$IntRef4.element = Math.max(ref$IntRef4.element, mo512measureBRTryo04.height);
                    i20++;
                    arrayList3 = arrayList2;
                }
                ArrayList arrayList8 = arrayList3;
                if (arrayList6.isEmpty()) {
                    arrayList = arrayList8;
                } else {
                    arrayList = arrayList8;
                    measure_3p2s80s$startNewSequence(arrayList, ref$IntRef2, measureScope, arrayList6, arrayList4, ref$IntRef4, arrayList5, ref$IntRef, ref$IntRef3);
                }
                int max2 = Math.max(ref$IntRef.element, Constraints.m683getMinWidthimpl(j2));
                return measureScope.layout(max2, Math.max(ref$IntRef2.element, Constraints.m682getMinHeightimpl(j2)), emptyMap, new MainFragment$$ExternalSyntheticLambda7(arrayList, measureScope, max2, arrayList5, 3));
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int i2 = this.$r8$classId;
        return Modifier.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
    }
}
