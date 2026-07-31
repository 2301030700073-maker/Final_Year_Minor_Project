package androidx.compose.foundation.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.material3.SegmentedButtonContentMeasurePolicy;
import androidx.compose.material3.SegmentedButtonDefaults;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BoxMeasurePolicy$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ MeasureScope f$2;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ BoxMeasurePolicy$$ExternalSyntheticLambda0(Placeable placeable, Measurable measurable, MeasureScope measureScope, int i, int i2, BoxMeasurePolicy boxMeasurePolicy) {
        this.f$0 = placeable;
        this.f$1 = measurable;
        this.f$2 = measureScope;
        this.f$3 = i;
        this.f$4 = i2;
        this.f$5 = boxMeasurePolicy;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 0;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$5;
        Object obj3 = this.f$1;
        MeasureScope measureScope = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                BoxKt.access$placeInBox((Placeable.PlacementScope) obj, (Placeable) obj4, (Measurable) obj3, measureScope.getLayoutDirection(), this.f$3, this.f$4, ((BoxMeasurePolicy) obj2).alignment);
                break;
            case 1:
                Placeable[] placeableArr = (Placeable[]) obj4;
                ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i3 = 0;
                while (i2 < length) {
                    Placeable placeable = placeableArr[i2];
                    int i4 = i3 + 1;
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                    OffsetKt offsetKt = rowColumnParentData != null ? rowColumnParentData.crossAxisAlignment : null;
                    int i5 = this.f$3;
                    placementScope.place(placeable, offsetKt != null ? offsetKt.align$foundation_layout(i5, placeable.width, layoutDirection, placeable, this.f$4) : columnMeasurePolicy.horizontalAlignment.align(placeable.width, i5, layoutDirection), iArr[i3], 0.0f);
                    i2++;
                    i3 = i4;
                }
                break;
            default:
                ArrayList arrayList = (ArrayList) obj4;
                SegmentedButtonContentMeasurePolicy segmentedButtonContentMeasurePolicy = (SegmentedButtonContentMeasurePolicy) obj3;
                ArrayList arrayList2 = (ArrayList) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                int i6 = 0;
                while (true) {
                    int i7 = this.f$4;
                    if (i6 >= size) {
                        int mo171roundToPx0680j_4 = measureScope.mo171roundToPx0680j_4(8.0f) + measureScope.mo171roundToPx0680j_4(SegmentedButtonDefaults.IconSize);
                        Animatable animatable = segmentedButtonContentMeasurePolicy.animatable;
                        int intValue = mo171roundToPx0680j_4 + (animatable != null ? ((Number) animatable.getValue()).intValue() : this.f$3);
                        int size2 = arrayList2.size();
                        while (i2 < size2) {
                            Placeable placeable2 = (Placeable) arrayList2.get(i2);
                            placementScope2.place(placeable2, intValue, (i7 - placeable2.height) / 2, 0.0f);
                            i2++;
                        }
                        break;
                    } else {
                        Placeable placeable3 = (Placeable) arrayList.get(i6);
                        placementScope2.place(placeable3, 0, (i7 - placeable3.height) / 2, 0.0f);
                        i6++;
                    }
                }
        }
        return unit;
    }

    public /* synthetic */ BoxMeasurePolicy$$ExternalSyntheticLambda0(ArrayList arrayList, MeasureScope measureScope, SegmentedButtonContentMeasurePolicy segmentedButtonContentMeasurePolicy, int i, ArrayList arrayList2, int i2) {
        this.f$0 = arrayList;
        this.f$2 = measureScope;
        this.f$1 = segmentedButtonContentMeasurePolicy;
        this.f$3 = i;
        this.f$5 = arrayList2;
        this.f$4 = i2;
    }

    public /* synthetic */ BoxMeasurePolicy$$ExternalSyntheticLambda0(Placeable[] placeableArr, ColumnMeasurePolicy columnMeasurePolicy, int i, int i2, MeasureScope measureScope, int[] iArr) {
        this.f$0 = placeableArr;
        this.f$1 = columnMeasurePolicy;
        this.f$3 = i;
        this.f$4 = i2;
        this.f$2 = measureScope;
        this.f$5 = iArr;
    }
}
