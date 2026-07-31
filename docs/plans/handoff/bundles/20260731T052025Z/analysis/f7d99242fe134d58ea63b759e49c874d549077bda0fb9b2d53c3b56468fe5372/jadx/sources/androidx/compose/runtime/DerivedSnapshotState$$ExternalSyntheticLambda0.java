package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.HorizontalScrollLayoutModifier;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DerivedSnapshotState$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ DerivedSnapshotState$$ExternalSyntheticLambda0(ArrayList arrayList, MeasureScope measureScope, int i, ArrayList arrayList2) {
        this.$r8$classId = 2;
        this.f$0 = arrayList;
        this.f$1 = measureScope;
        this.f$3 = i;
        this.f$2 = arrayList2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$2;
        int i3 = this.f$3;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                IntRef intRef = (IntRef) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                if (obj != ((DerivedSnapshotState) obj4)) {
                    if (obj instanceof StateObject) {
                        int i4 = intRef.element - i3;
                        int findKeyIndex = mutableObjectIntMap.findKeyIndex(obj);
                        mutableObjectIntMap.set(Math.min(i4, findKeyIndex >= 0 ? mutableObjectIntMap.values[findKeyIndex] : Integer.MAX_VALUE), obj);
                    }
                    break;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A derived state calculation cannot read itself");
                    break;
                }
            case 1:
                HorizontalScrollLayoutModifier horizontalScrollLayoutModifier = (HorizontalScrollLayoutModifier) obj4;
                MeasureScope measureScope = (MeasureScope) obj3;
                Placeable placeable = (Placeable) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int i5 = horizontalScrollLayoutModifier.cursorOffset;
                TextFieldScrollerPosition textFieldScrollerPosition = horizontalScrollLayoutModifier.scrollerPosition;
                TransformedText transformedText = horizontalScrollLayoutModifier.transformedText;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) horizontalScrollLayoutModifier.textLayoutResultProvider.invoke();
                textFieldScrollerPosition.update(Orientation.Horizontal, BasicTextKt.access$getCursorRectInScroller(placementScope, i5, transformedText, textLayoutResultProxy != null ? textLayoutResultProxy.value : null, measureScope.getLayoutDirection() == LayoutDirection.Rtl, placeable.width), i3, placeable.width);
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, Math.round(-textFieldScrollerPosition.offset$delegate.getFloatValue()), 0);
                break;
            default:
                ArrayList arrayList = (ArrayList) obj4;
                MeasureScope measureScope2 = (MeasureScope) obj3;
                ArrayList arrayList2 = (ArrayList) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    List list = (List) arrayList.get(i6);
                    int size2 = list.size();
                    int[] iArr = new int[size2];
                    int i7 = 0;
                    while (i7 < size2) {
                        iArr[i7] = ((Placeable) list.get(i7)).width + (i7 < list.size() - i2 ? measureScope2.mo171roundToPx0680j_4(8.0f) : 0);
                        i7++;
                    }
                    int[] iArr2 = new int[size2];
                    if (measureScope2.getLayoutDirection() == LayoutDirection.Ltr) {
                        int i8 = 0;
                        for (int i9 = 0; i9 < size2; i9++) {
                            i8 += iArr[i9];
                        }
                        int i10 = i3 - i8;
                        int i11 = 0;
                        int i12 = 0;
                        while (i11 < size2) {
                            int i13 = iArr[i11];
                            iArr2[i12] = i10;
                            i10 += i13;
                            i11++;
                            i12++;
                        }
                    } else {
                        int i14 = 0;
                        for (int i15 = size2 - 1; -1 < i15; i15--) {
                            int i16 = iArr[i15];
                            iArr2[i15] = i14;
                            i14 += i16;
                        }
                    }
                    int size3 = list.size();
                    for (int i17 = 0; i17 < size3; i17++) {
                        placementScope2.place((Placeable) list.get(i17), iArr2[i17], ((Number) arrayList2.get(i6)).intValue(), 0.0f);
                    }
                    i6++;
                    i2 = 1;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ DerivedSnapshotState$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = i;
    }
}
