package androidx.compose.foundation.pager;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PagerMeasureKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArrayList f$0;

    public /* synthetic */ PagerMeasureKt$$ExternalSyntheticLambda2(int i, ArrayList arrayList) {
        this.$r8$classId = i;
        this.f$0 = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = 0;
        ArrayList arrayList = this.f$0;
        switch (i) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    MeasuredPage measuredPage = (MeasuredPage) arrayList.get(i3);
                    List list = measuredPage.placeables;
                    boolean z = measuredPage.isVertical;
                    if (measuredPage.mainAxisLayoutSize == Integer.MIN_VALUE) {
                        InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
                    }
                    int size2 = list.size();
                    int i4 = i2;
                    while (i4 < size2) {
                        Placeable placeable = (Placeable) list.get(i4);
                        int i5 = size;
                        long m717plusqkQi6aY = IntOffset.m717plusqkQi6aY((r12[r13 + 1] & 4294967295L) | (measuredPage.placeableOffsets[i4 * 2] << 32), measuredPage.visualOffset);
                        if (z) {
                            Placeable.PlacementScope.m536placeWithLayeraW9wM$default(placementScope, placeable, m717plusqkQi6aY);
                        } else {
                            Placeable.PlacementScope.m534placeRelativeWithLayeraW9wM$default(placementScope, placeable, m717plusqkQi6aY);
                        }
                        i4++;
                        size = i5;
                    }
                    i3++;
                    i2 = 0;
                }
                break;
            case 1:
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size3 = arrayList.size();
                for (int i6 = 0; i6 < size3; i6++) {
                    Placeable.PlacementScope.placeRelative$default(placementScope2, (Placeable) arrayList.get(i6), 0, 0);
                }
                break;
            default:
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                int size4 = arrayList.size();
                for (int i7 = 0; i7 < size4; i7++) {
                    Placeable.PlacementScope.place$default(placementScope3, (Placeable) arrayList.get(i7), 0, 0);
                }
                break;
        }
        return unit;
    }
}
