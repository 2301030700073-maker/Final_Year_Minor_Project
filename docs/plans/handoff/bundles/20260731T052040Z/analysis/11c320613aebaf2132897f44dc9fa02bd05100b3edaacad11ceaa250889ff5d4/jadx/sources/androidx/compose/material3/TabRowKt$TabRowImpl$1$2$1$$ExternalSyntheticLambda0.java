package androidx.compose.material3;

import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.CrossAxisAlignment$HorizontalCrossAxisAlignment;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Serializable f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Ref$IntRef ref$IntRef, int i) {
        this.f$0 = arrayList;
        this.f$1 = arrayList2;
        this.f$2 = arrayList3;
        this.f$3 = ref$IntRef;
        this.f$4 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 0;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        int i3 = this.f$4;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ArrayList arrayList = (ArrayList) obj5;
                ArrayList arrayList2 = (ArrayList) obj4;
                ArrayList arrayList3 = (ArrayList) obj3;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) arrayList.get(i4), ref$IntRef.element * i4, 0);
                }
                int size2 = arrayList2.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    Placeable placeable = (Placeable) arrayList2.get(i5);
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, i3 - placeable.height);
                }
                int size3 = arrayList3.size();
                for (int i6 = 0; i6 < size3; i6++) {
                    Placeable placeable2 = (Placeable) arrayList3.get(i6);
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, 0, i3 - placeable2.height);
                }
                break;
            default:
                Placeable[] placeableArr = (Placeable[]) obj5;
                ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj4;
                MeasureScope measureScope = (MeasureScope) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i7 = 0;
                while (i2 < length) {
                    Placeable placeable3 = placeableArr[i2];
                    int i8 = i7 + 1;
                    placeable3.getClass();
                    Object parentData = placeable3.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                    CrossAxisAlignment$HorizontalCrossAxisAlignment crossAxisAlignment$HorizontalCrossAxisAlignment = rowColumnParentData != null ? rowColumnParentData.crossAxisAlignment : null;
                    placementScope2.place(placeable3, crossAxisAlignment$HorizontalCrossAxisAlignment != null ? crossAxisAlignment$HorizontalCrossAxisAlignment.horizontal.align(placeable3.width, i3, layoutDirection) : columnMeasurePolicy.horizontalAlignment.align(placeable3.width, i3, layoutDirection), iArr[i7], 0.0f);
                    i2++;
                    i7 = i8;
                }
                break;
        }
        return unit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0(Placeable[] placeableArr, ColumnMeasurePolicy columnMeasurePolicy, int i, MeasureScope measureScope, int[] iArr) {
        this.f$0 = placeableArr;
        this.f$1 = columnMeasurePolicy;
        this.f$4 = i;
        this.f$2 = measureScope;
        this.f$3 = iArr;
    }
}
