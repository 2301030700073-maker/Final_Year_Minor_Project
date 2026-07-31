package androidx.compose.material3.internal;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AnchoredDraggableState$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AnchoredDraggableState f$0;

    public /* synthetic */ AnchoredDraggableState$$ExternalSyntheticLambda0(AnchoredDraggableState anchoredDraggableState, int i) {
        this.$r8$classId = i;
        this.f$0 = anchoredDraggableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        float f = 0.0f;
        AnchoredDraggableState anchoredDraggableState = this.f$0;
        switch (i) {
            case 0:
                Object value = anchoredDraggableState.dragTarget$delegate.getValue();
                if (value != null) {
                    return value;
                }
                float floatValue = anchoredDraggableState.offset$delegate.getFloatValue();
                boolean isNaN = Float.isNaN(floatValue);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = anchoredDraggableState.currentValue$delegate;
                return !isNaN ? anchoredDraggableState.computeTarget(floatValue, 0.0f, parcelableSnapshotMutableState.getValue()) : parcelableSnapshotMutableState.getValue();
            case 1:
                Object value2 = anchoredDraggableState.dragTarget$delegate.getValue();
                if (value2 != null) {
                    return value2;
                }
                float floatValue2 = anchoredDraggableState.offset$delegate.getFloatValue();
                boolean isNaN2 = Float.isNaN(floatValue2);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState2 = anchoredDraggableState.currentValue$delegate;
                if (isNaN2) {
                    return parcelableSnapshotMutableState2.getValue();
                }
                Object value3 = parcelableSnapshotMutableState2.getValue();
                MapDraggableAnchors anchors = anchoredDraggableState.getAnchors();
                float positionOf = anchors.positionOf(value3);
                if (positionOf != floatValue2 && !Float.isNaN(positionOf)) {
                    if (positionOf < floatValue2) {
                        Object closestAnchor = anchors.closestAnchor(floatValue2, true);
                        if (closestAnchor != null) {
                            return closestAnchor;
                        }
                    } else {
                        Object closestAnchor2 = anchors.closestAnchor(floatValue2, false);
                        if (closestAnchor2 != null) {
                            return closestAnchor2;
                        }
                    }
                }
                return value3;
            case 2:
                float positionOf2 = anchoredDraggableState.getAnchors().positionOf(anchoredDraggableState.currentValue$delegate.getValue());
                float positionOf3 = anchoredDraggableState.getAnchors().positionOf(anchoredDraggableState.closestValue$delegate.getValue()) - positionOf2;
                float abs = Math.abs(positionOf3);
                if (!Float.isNaN(abs) && abs > 1.0E-6f) {
                    float requireOffset = (anchoredDraggableState.requireOffset() - positionOf2) / positionOf3;
                    if (requireOffset >= 1.0E-6f) {
                        if (requireOffset <= 0.999999f) {
                            f = requireOffset;
                        }
                    }
                    return Float.valueOf(f);
                }
                f = 1.0f;
                return Float.valueOf(f);
            case 3:
                return anchoredDraggableState.getAnchors();
            default:
                return new Pair(anchoredDraggableState.getAnchors(), anchoredDraggableState.targetValue$delegate.getValue());
        }
    }
}
