package androidx.compose.ui.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: RootMeasurePolicy.kt */
/* loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy();

    private RootMeasurePolicy() {
        super("Undefined intrinsics block and it is required");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo21measure3p2s80s(MeasureScope measureScope, List list, long j) {
        if (list.isEmpty()) {
            return MeasureScope.CC.layout$default(measureScope, Constraints.m2399getMinWidthimpl(j), Constraints.m2398getMinHeightimpl(j), null, new Function1() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$1
                public final void invoke(Placeable.PlacementScope placementScope) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Placeable.PlacementScope) obj);
                    return Unit.INSTANCE;
                }
            }, 4, null);
        }
        if (list.size() == 1) {
            final Placeable mo1751measureBRTryo0 = ((Measurable) list.get(0)).mo1751measureBRTryo0(j);
            return MeasureScope.CC.layout$default(measureScope, ConstraintsKt.m2411constrainWidthK40F9xA(j, mo1751measureBRTryo0.getWidth()), ConstraintsKt.m2410constrainHeightK40F9xA(j, mo1751measureBRTryo0.getHeight()), null, new Function1() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((Placeable.PlacementScope) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(Placeable.PlacementScope placementScope) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, Placeable.this, 0, 0, 0.0f, null, 12, null);
                }
            }, 4, null);
        }
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Measurable) list.get(i)).mo1751measureBRTryo0(j));
        }
        int size2 = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size2; i4++) {
            Placeable placeable = (Placeable) arrayList.get(i4);
            i2 = Math.max(placeable.getWidth(), i2);
            i3 = Math.max(placeable.getHeight(), i3);
        }
        return MeasureScope.CC.layout$default(measureScope, ConstraintsKt.m2411constrainWidthK40F9xA(j, i2), ConstraintsKt.m2410constrainHeightK40F9xA(j, i3), null, new Function1() { // from class: androidx.compose.ui.layout.RootMeasurePolicy$measure$4
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
                List list2 = arrayList;
                int size3 = list2.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, (Placeable) list2.get(i5), 0, 0, 0.0f, null, 12, null);
                }
            }
        }, 4, null);
    }
}
