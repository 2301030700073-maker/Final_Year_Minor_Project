package androidx.compose.ui.layout;

import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy("Undefined intrinsics block and it is required");

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo15measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int size = list.size();
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        if (size == 0) {
            return measureScope.layout(Constraints.m683getMinWidthimpl(j), Constraints.m682getMinHeightimpl(j), emptyMap, RootMeasurePolicy$measure$1.INSTANCE);
        }
        if (size == 1) {
            Placeable mo512measureBRTryo0 = ((Measurable) list.get(0)).mo512measureBRTryo0(j);
            return measureScope.layout(ConstraintsKt.m689constrainWidthK40F9xA(j, mo512measureBRTryo0.width), ConstraintsKt.m688constrainHeightK40F9xA(j, mo512measureBRTryo0.height), emptyMap, new PainterNode$measure$1(mo512measureBRTryo0, 4));
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size2; i3++) {
            Placeable mo512measureBRTryo02 = ((Measurable) list.get(i3)).mo512measureBRTryo0(j);
            i = Math.max(mo512measureBRTryo02.width, i);
            i2 = Math.max(mo512measureBRTryo02.height, i2);
            arrayList.add(mo512measureBRTryo02);
        }
        return measureScope.layout(ConstraintsKt.m689constrainWidthK40F9xA(j, i), ConstraintsKt.m688constrainHeightK40F9xA(j, i2), emptyMap, new RootMeasurePolicy$measure$3(0, arrayList));
    }
}
