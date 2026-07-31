package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy("Undefined intrinsics block and it is required");

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo8measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int size = list.size();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (size == 0) {
            return measureScope.layout(Constraints.m436getMinWidthimpl(j), Constraints.m435getMinHeightimpl(j), emptyMap, RootMeasurePolicy$measure$1.INSTANCE);
        }
        if (size == 1) {
            final Placeable mo292measureBRTryo0 = ((Measurable) list.get(0)).mo292measureBRTryo0(j);
            return measureScope.layout(ConstraintsKt.m440constrainWidthK40F9xA(mo292measureBRTryo0.width, j), ConstraintsKt.m439constrainHeightK40F9xA(mo292measureBRTryo0.height, j), emptyMap, new Function1() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default((Placeable.PlacementScope) obj, Placeable.this);
                    return Unit.INSTANCE;
                }
            });
        }
        final ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size2; i3++) {
            Placeable mo292measureBRTryo02 = ((Measurable) list.get(i3)).mo292measureBRTryo0(j);
            i = Math.max(mo292measureBRTryo02.width, i);
            i2 = Math.max(mo292measureBRTryo02.height, i2);
            arrayList.add(mo292measureBRTryo02);
        }
        return measureScope.layout(ConstraintsKt.m440constrainWidthK40F9xA(i, j), ConstraintsKt.m439constrainHeightK40F9xA(i2, j), emptyMap, new Function1() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                List<Placeable> list2 = arrayList;
                int size3 = list2.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, list2.get(i4));
                }
                return Unit.INSTANCE;
            }
        });
    }
}
