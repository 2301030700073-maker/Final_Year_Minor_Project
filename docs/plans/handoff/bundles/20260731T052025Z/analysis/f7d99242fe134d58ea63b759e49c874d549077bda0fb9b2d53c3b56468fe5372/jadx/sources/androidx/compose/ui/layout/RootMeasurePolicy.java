package androidx.compose.ui.layout;

import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy("Undefined intrinsics block and it is required");

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int size = list.size();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (size == 0) {
            return measureScope.layout(Constraints.m736getMinWidthimpl(j), Constraints.m735getMinHeightimpl(j), emptyMap, RootMeasurePolicy$measure$1.INSTANCE);
        }
        if (size == 1) {
            Placeable mo571measureBRTryo0 = ((Measurable) list.get(0)).mo571measureBRTryo0(j);
            return measureScope.layout(ConstraintsKt.m741constrainWidthK40F9xA(mo571measureBRTryo0.width, j), ConstraintsKt.m740constrainHeightK40F9xA(mo571measureBRTryo0.height, j), emptyMap, new PainterNode$measure$1(mo571measureBRTryo0, 4));
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size2; i3++) {
            Placeable mo571measureBRTryo02 = ((Measurable) list.get(i3)).mo571measureBRTryo0(j);
            i = Math.max(mo571measureBRTryo02.width, i);
            i2 = Math.max(mo571measureBRTryo02.height, i2);
            arrayList.add(mo571measureBRTryo02);
        }
        return measureScope.layout(ConstraintsKt.m741constrainWidthK40F9xA(i, j), ConstraintsKt.m740constrainHeightK40F9xA(i2, j), emptyMap, new RootMeasurePolicy$measure$3(0, arrayList));
    }
}
