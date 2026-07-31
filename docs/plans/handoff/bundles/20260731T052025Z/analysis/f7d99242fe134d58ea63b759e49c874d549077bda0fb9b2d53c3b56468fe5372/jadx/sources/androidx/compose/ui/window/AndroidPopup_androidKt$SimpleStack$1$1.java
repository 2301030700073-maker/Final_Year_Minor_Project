package androidx.compose.ui.window;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterNode$measure$1;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RootMeasurePolicy$measure$3;
import androidx.compose.ui.unit.Constraints;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$SimpleStack$1$1 implements MeasurePolicy {
    public final /* synthetic */ int $r8$classId;
    public static final AndroidPopup_androidKt$SimpleStack$1$1 INSTANCE$1 = new AndroidPopup_androidKt$SimpleStack$1$1(1);
    public static final AndroidPopup_androidKt$SimpleStack$1$1 INSTANCE = new AndroidPopup_androidKt$SimpleStack$1$1(0);

    public /* synthetic */ AndroidPopup_androidKt$SimpleStack$1$1(int i) {
        this.$r8$classId = i;
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
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        int i = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        int i2 = 0;
        switch (i) {
            case 0:
                int size = list.size();
                if (size == 0) {
                    return measureScope.layout(0, 0, emptyMap, AndroidPopup_androidKt$Popup$5$1$1.INSTANCE$4);
                }
                if (size == 1) {
                    Placeable mo571measureBRTryo0 = ((Measurable) list.get(0)).mo571measureBRTryo0(j);
                    return measureScope.layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, emptyMap, new PainterNode$measure$1(mo571measureBRTryo0, 6));
                }
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                int i3 = 0;
                int i4 = 0;
                while (i2 < size2) {
                    Placeable mo571measureBRTryo02 = ((Measurable) list.get(i2)).mo571measureBRTryo0(j);
                    i3 = Math.max(i3, mo571measureBRTryo02.width);
                    i4 = Math.max(i4, mo571measureBRTryo02.height);
                    arrayList.add(mo571measureBRTryo02);
                    i2++;
                }
                return measureScope.layout(i3, i4, emptyMap, new RootMeasurePolicy$measure$3(3, arrayList));
            default:
                ArrayList arrayList2 = new ArrayList(list.size());
                int size3 = list.size();
                int i5 = 0;
                int i6 = 0;
                while (i2 < size3) {
                    Placeable mo571measureBRTryo03 = ((Measurable) list.get(i2)).mo571measureBRTryo0(j);
                    i5 = Math.max(i5, mo571measureBRTryo03.width);
                    i6 = Math.max(i6, mo571measureBRTryo03.height);
                    arrayList2.add(mo571measureBRTryo03);
                    i2++;
                }
                if (list.isEmpty()) {
                    i5 = Constraints.m736getMinWidthimpl(j);
                    i6 = Constraints.m735getMinHeightimpl(j);
                }
                return measureScope.layout(i5, i6, emptyMap, new RootMeasurePolicy$measure$3(2, arrayList2));
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
