package androidx.compose.material3;

import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BottomSheetScaffoldKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SheetState f$0;

    public /* synthetic */ BottomSheetScaffoldKt$$ExternalSyntheticLambda0(SheetState sheetState, int i) {
        this.$r8$classId = i;
        this.f$0 = sheetState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SheetState sheetState = this.f$0;
        ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
        switch (i) {
            case 0:
                AnchoredDraggableState anchoredDraggableState = sheetState.anchoredDraggableState;
                float floatValue = anchoredDraggableState.offset$delegate.getFloatValue();
                float minAnchor = anchoredDraggableState.getAnchors().minAnchor();
                float f = floatValue < minAnchor ? minAnchor - floatValue : 0.0f;
                reusableGraphicsLayerScope.setScaleY(f > 0.0f ? (Float.intBitsToFloat((int) (reusableGraphicsLayerScope.size & 4294967295L)) + f) / Float.intBitsToFloat((int) (4294967295L & reusableGraphicsLayerScope.size)) : 1.0f);
                reusableGraphicsLayerScope.m511setTransformOrigin__ExYCQ(ColorKt.TransformOrigin(0.5f, 0.0f));
                break;
            default:
                AnchoredDraggableState anchoredDraggableState2 = sheetState.anchoredDraggableState;
                float floatValue2 = anchoredDraggableState2.offset$delegate.getFloatValue();
                float minAnchor2 = anchoredDraggableState2.getAnchors().minAnchor();
                float f2 = floatValue2 < minAnchor2 ? minAnchor2 - floatValue2 : 0.0f;
                reusableGraphicsLayerScope.setScaleY(f2 > 0.0f ? 1.0f / ((Float.intBitsToFloat((int) (reusableGraphicsLayerScope.size & 4294967295L)) + f2) / Float.intBitsToFloat((int) (4294967295L & reusableGraphicsLayerScope.size))) : 1.0f);
                reusableGraphicsLayerScope.m511setTransformOrigin__ExYCQ(ColorKt.TransformOrigin(0.5f, 0.0f));
                break;
        }
        return unit;
    }
}
