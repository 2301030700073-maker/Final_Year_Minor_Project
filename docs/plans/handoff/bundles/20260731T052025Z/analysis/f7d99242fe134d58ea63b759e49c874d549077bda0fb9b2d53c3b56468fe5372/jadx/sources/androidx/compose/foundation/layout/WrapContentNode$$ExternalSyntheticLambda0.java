package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WrapContentNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ WrapContentNode$$ExternalSyntheticLambda0(WrapContentNode wrapContentNode, int i, Placeable placeable, int i2, MeasureScope measureScope) {
        this.f$0 = wrapContentNode;
        this.f$1 = i;
        this.f$2 = placeable;
        this.f$3 = i2;
        this.f$4 = measureScope;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$4;
        Object obj3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                Placeable.PlacementScope.m592place70tqf50$default((Placeable.PlacementScope) obj, (Placeable) obj3, ((IntOffset) ((WrapContentNode) obj4).alignmentCallback.invoke(new IntSize(((this.f$1 - r3.width) << 32) | ((this.f$3 - r3.height) & 4294967295L)), ((MeasureScope) obj2).getLayoutDirection())).packedValue);
                break;
            default:
                Placeable[] placeableArr = (Placeable[]) obj4;
                RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    Placeable placeable = placeableArr[i2];
                    int i4 = i3 + 1;
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    OffsetKt offsetKt = rowColumnParentData != null ? rowColumnParentData.crossAxisAlignment : null;
                    int i5 = this.f$1;
                    placementScope.place(placeable, iArr[i3], offsetKt != null ? offsetKt.align$foundation_layout(i5, placeable.height, LayoutDirection.Ltr, placeable, this.f$3) : rowMeasurePolicy.verticalAlignment.align(placeable.height, i5), 0.0f);
                    i2++;
                    i3 = i4;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ WrapContentNode$$ExternalSyntheticLambda0(Placeable[] placeableArr, RowMeasurePolicy rowMeasurePolicy, int i, int i2, int[] iArr) {
        this.f$0 = placeableArr;
        this.f$2 = rowMeasurePolicy;
        this.f$1 = i;
        this.f$3 = i2;
        this.f$4 = iArr;
    }
}
