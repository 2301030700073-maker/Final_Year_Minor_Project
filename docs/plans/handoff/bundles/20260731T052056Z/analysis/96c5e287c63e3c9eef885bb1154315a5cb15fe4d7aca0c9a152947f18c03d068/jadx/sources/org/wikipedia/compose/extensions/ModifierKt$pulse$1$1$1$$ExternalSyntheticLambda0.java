package org.wikipedia.compose.extensions;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ParcelableSnapshotMutableFloatState f$0;

    public /* synthetic */ ModifierKt$pulse$1$1$1$$ExternalSyntheticLambda0(ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState, int i) {
        this.$r8$classId = i;
        this.f$0 = parcelableSnapshotMutableFloatState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.f$0;
        float floatValue = ((Float) obj).floatValue();
        ((Float) obj2).floatValue();
        switch (i) {
            case 0:
                parcelableSnapshotMutableFloatState.setFloatValue(floatValue);
                break;
            case 1:
                parcelableSnapshotMutableFloatState.setFloatValue(floatValue);
                break;
            default:
                parcelableSnapshotMutableFloatState.setFloatValue(floatValue);
                break;
        }
        return unit;
    }
}
