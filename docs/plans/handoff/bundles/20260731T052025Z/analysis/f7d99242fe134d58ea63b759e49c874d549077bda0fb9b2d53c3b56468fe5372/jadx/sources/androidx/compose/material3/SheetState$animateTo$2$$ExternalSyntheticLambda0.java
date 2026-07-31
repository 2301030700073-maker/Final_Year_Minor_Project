package androidx.compose.material3;

import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.AnchoredDraggableState$anchoredDragScope$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SheetState$animateTo$2$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnchoredDraggableState$anchoredDragScope$1 f$0;
    public final /* synthetic */ Ref$FloatRef f$1;

    public /* synthetic */ SheetState$animateTo$2$$ExternalSyntheticLambda0(AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1, Ref$FloatRef ref$FloatRef, int i) {
        this.$r8$classId = i;
        this.f$0 = anchoredDraggableState$anchoredDragScope$1;
        this.f$1 = ref$FloatRef;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Ref$FloatRef ref$FloatRef = this.f$1;
        AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.f$0;
        float floatValue = ((Float) obj).floatValue();
        float floatValue2 = ((Float) obj2).floatValue();
        switch (i) {
            case 0:
                AnchoredDraggableState anchoredDraggableState = anchoredDraggableState$anchoredDragScope$1.this$0;
                anchoredDraggableState.offset$delegate.setFloatValue(floatValue);
                anchoredDraggableState.lastVelocity$delegate.setFloatValue(floatValue2);
                ref$FloatRef.element = floatValue;
                break;
            default:
                AnchoredDraggableState anchoredDraggableState2 = anchoredDraggableState$anchoredDragScope$1.this$0;
                anchoredDraggableState2.offset$delegate.setFloatValue(floatValue);
                anchoredDraggableState2.lastVelocity$delegate.setFloatValue(floatValue2);
                ref$FloatRef.element = floatValue;
                break;
        }
        return unit;
    }
}
