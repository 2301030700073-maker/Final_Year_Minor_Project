package org.wikipedia.feed;

import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouModulePagerKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Serializable f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ ForYouModulePagerKt$$ExternalSyntheticLambda4(Serializable serializable, Object obj, int i, Object obj2, Object obj3, int i2) {
        this.$r8$classId = i2;
        this.f$0 = serializable;
        this.f$1 = obj;
        this.f$2 = i;
        this.f$3 = obj2;
        this.f$4 = obj3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = false;
        int i2 = 0;
        z = false;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        int i3 = this.f$2;
        Object obj4 = this.f$1;
        Serializable serializable = this.f$0;
        switch (i) {
            case 0:
                SnapshotStateMap snapshotStateMap = (SnapshotStateMap) obj4;
                Function1 function1 = (Function1) obj3;
                ForYouModule forYouModule = (ForYouModule) obj2;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                Rect rect = (Rect) ((Ref$ObjectRef) serializable).element;
                if (rect != null) {
                    Rect localBoundingBoxOf = RulerKt.findRootCoordinates(layoutCoordinates).localBoundingBoxOf(layoutCoordinates, true);
                    if (localBoundingBoxOf.right - localBoundingBoxOf.left > (rect.right - rect.left) / 2.0f && localBoundingBoxOf.bottom - localBoundingBoxOf.top > (rect.bottom - rect.top) / 2.0f) {
                        z = true;
                    }
                    boolean areEqual = Intrinsics.areEqual(snapshotStateMap.get(Integer.valueOf(i3)), Boolean.TRUE);
                    if (z && !areEqual) {
                        function1.invoke(forYouModule.getCards().get(i3));
                    }
                    snapshotStateMap.put(Integer.valueOf(i3), Boolean.valueOf(z));
                    break;
                }
                break;
            default:
                Placeable[] placeableArr = (Placeable[]) serializable;
                ColumnMeasurePolicy columnMeasurePolicy = (ColumnMeasurePolicy) obj4;
                MeasureScope measureScope = (MeasureScope) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i4 = 0;
                while (i2 < length) {
                    Placeable placeable = placeableArr[i2];
                    int i5 = i4 + 1;
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    LayoutDirection layoutDirection = measureScope.getLayoutDirection();
                    OffsetKt offsetKt = rowColumnParentData != null ? rowColumnParentData.crossAxisAlignment : null;
                    Placeable.PlacementScope.place$default(placementScope, placeable, offsetKt != null ? offsetKt.align$foundation_layout(i3, placeable.width, layoutDirection) : columnMeasurePolicy.horizontalAlignment.align(placeable.width, i3, layoutDirection), iArr[i4]);
                    i2++;
                    i4 = i5;
                }
                break;
        }
        return unit;
    }
}
