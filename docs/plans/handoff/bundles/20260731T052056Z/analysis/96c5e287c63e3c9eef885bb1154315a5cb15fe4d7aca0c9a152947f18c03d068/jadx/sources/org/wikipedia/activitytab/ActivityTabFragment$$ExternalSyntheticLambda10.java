package org.wikipedia.activitytab;

import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabFragment$$ExternalSyntheticLambda10 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ParcelableSnapshotMutableIntState f$0;

    public /* synthetic */ ActivityTabFragment$$ExternalSyntheticLambda10(ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState, int i) {
        this.$r8$classId = i;
        this.f$0 = parcelableSnapshotMutableIntState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = this.f$0;
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
        layoutCoordinates.getClass();
        switch (i) {
            case 0:
                LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
                parcelableSnapshotMutableIntState.setIntValue((int) Float.intBitsToFloat((int) (4294967295L & (parentLayoutCoordinates != null ? parentLayoutCoordinates.mo518localPositionOfR5De75A(layoutCoordinates, 0L) : 0L))));
                break;
            default:
                parcelableSnapshotMutableIntState.setIntValue((int) (4294967295L & layoutCoordinates.mo517getSizeYbymL2g()));
                break;
        }
        return unit;
    }
}
