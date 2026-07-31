package androidx.compose.material3;

import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.util.ListUtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChipLayoutMeasurePolicy implements MeasurePolicy {
    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((Measurable) list.get(0)).maxIntrinsicHeight(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((Measurable) list.get(i2)).maxIntrinsicHeight(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += ((Measurable) list.get(i3)).maxIntrinsicWidth(i);
        }
        return i2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo15measure3p2s80s(MeasureScope measureScope, List list, long j) {
        Object obj;
        Object obj2;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = list.get(i);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj), "leadingIcon")) {
                break;
            }
            i++;
        }
        Measurable measurable = (Measurable) obj;
        final Placeable mo512measureBRTryo0 = measurable != null ? measurable.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(j, 0, 0, 0, 0, 10)) : null;
        int i2 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.width : 0;
        final int i3 = mo512measureBRTryo0 != null ? mo512measureBRTryo0.height : 0;
        int size2 = list.size();
        int i4 = 0;
        while (true) {
            if (i4 >= size2) {
                obj2 = null;
                break;
            }
            obj2 = list.get(i4);
            if (Intrinsics.areEqual(RulerKt.getLayoutId((Measurable) obj2), "trailingIcon")) {
                break;
            }
            i4++;
        }
        Measurable measurable2 = (Measurable) obj2;
        final Placeable mo512measureBRTryo02 = measurable2 != null ? measurable2.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(j, 0, 0, 0, 0, 10)) : null;
        int i5 = mo512measureBRTryo02 != null ? mo512measureBRTryo02.width : 0;
        final int i6 = mo512measureBRTryo02 != null ? mo512measureBRTryo02.height : 0;
        int size3 = list.size();
        int i7 = 0;
        while (i7 < size3) {
            Measurable measurable3 = (Measurable) list.get(i7);
            if (Intrinsics.areEqual(RulerKt.getLayoutId(measurable3), "label")) {
                final Placeable mo512measureBRTryo03 = measurable3.mo512measureBRTryo0(ConstraintsKt.m691offsetNN6EwU$default(-(i2 + i5), 0, 2, j));
                int i8 = mo512measureBRTryo03.width + i2 + i5;
                final int max = Math.max(i3, Math.max(mo512measureBRTryo03.height, i6));
                final int i9 = i2;
                return measureScope.layout(i8, max, EmptyMap.INSTANCE, new Function1() { // from class: androidx.compose.material3.ChipLayoutMeasurePolicy$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                        Placeable placeable = Placeable.this;
                        int i10 = max;
                        if (placeable != null) {
                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, Math.round(((i10 - i3) / 2.0f) * 1.0f));
                        }
                        Placeable placeable2 = mo512measureBRTryo03;
                        int i11 = i9;
                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i11, 0);
                        Placeable placeable3 = mo512measureBRTryo02;
                        if (placeable3 != null) {
                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i11 + placeable2.width, Math.round(((i10 - i6) / 2.0f) * 1.0f));
                        }
                        return Unit.INSTANCE;
                    }
                });
            }
            i7++;
            mo512measureBRTryo0 = mo512measureBRTryo0;
            i2 = i2;
        }
        ListUtilsKt.throwNoSuchElementException("Collection contains no element matching the predicate.");
        Gson$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((Measurable) list.get(0)).minIntrinsicHeight(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((Measurable) list.get(i2)).minIntrinsicHeight(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += ((Measurable) list.get(i3)).minIntrinsicWidth(i);
        }
        return i2;
    }
}
