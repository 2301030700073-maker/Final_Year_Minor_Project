package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.foundation.layout.CrossAxisAlignment$HorizontalCrossAxisAlignment;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.android.exoplayer2.util.Log;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DerivedSnapshotState$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ DerivedSnapshotState$$ExternalSyntheticLambda0(DerivedSnapshotState derivedSnapshotState, IntRef intRef, MutableObjectIntMap mutableObjectIntMap, int i) {
        this.f$0 = derivedSnapshotState;
        this.f$1 = intRef;
        this.f$2 = mutableObjectIntMap;
        this.f$3 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$2;
        int i2 = this.f$3;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                IntRef intRef = (IntRef) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                if (obj == ((DerivedSnapshotState) obj4)) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("A derived state calculation cannot read itself");
                    return null;
                }
                if (!(obj instanceof StateObject)) {
                    return unit;
                }
                int i3 = intRef.element - i2;
                int findKeyIndex = mutableObjectIntMap.findKeyIndex(obj);
                mutableObjectIntMap.set(Math.min(i3, findKeyIndex >= 0 ? mutableObjectIntMap.values[findKeyIndex] : Log.LOG_LEVEL_OFF), obj);
                return unit;
            default:
                Placeable[] placeableArr = (Placeable[]) obj4;
                RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj3;
                int[] iArr = (int[]) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int length = placeableArr.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length) {
                    Placeable placeable = placeableArr[i4];
                    int i6 = i5 + 1;
                    placeable.getClass();
                    Object parentData = placeable.getParentData();
                    RowColumnParentData rowColumnParentData = parentData instanceof RowColumnParentData ? (RowColumnParentData) parentData : null;
                    CrossAxisAlignment$HorizontalCrossAxisAlignment crossAxisAlignment$HorizontalCrossAxisAlignment = rowColumnParentData != null ? rowColumnParentData.crossAxisAlignment : null;
                    placementScope.place(placeable, iArr[i5], crossAxisAlignment$HorizontalCrossAxisAlignment != null ? crossAxisAlignment$HorizontalCrossAxisAlignment.horizontal.align(placeable.height, i2, LayoutDirection.Ltr) : rowMeasurePolicy.verticalAlignment.align(placeable.height, i2), 0.0f);
                    i4++;
                    i5 = i6;
                }
                return unit;
        }
    }

    public /* synthetic */ DerivedSnapshotState$$ExternalSyntheticLambda0(Placeable[] placeableArr, RowMeasurePolicy rowMeasurePolicy, int i, int[] iArr) {
        this.f$0 = placeableArr;
        this.f$1 = rowMeasurePolicy;
        this.f$3 = i;
        this.f$2 = iArr;
    }
}
