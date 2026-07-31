package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RootMeasurePolicy$measure$3 extends Lambda implements Function1 {
    public final /* synthetic */ ArrayList $placeables;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RootMeasurePolicy$measure$3(int i, ArrayList arrayList) {
        super(1);
        this.$r8$classId = i;
        this.$placeables = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ArrayList arrayList = this.$placeables;
        switch (i) {
            case 0:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, (Placeable) arrayList.get(i2), 0, 0);
                }
                break;
            case 1:
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Placeable.PlacementScope.place$default(placementScope2, (Placeable) arrayList.get(i3), 0, 0);
                }
                break;
            case 2:
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                int size3 = arrayList.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    Placeable.PlacementScope.placeRelative$default(placementScope3, (Placeable) arrayList.get(i4), 0, 0);
                }
                break;
            default:
                Placeable.PlacementScope placementScope4 = (Placeable.PlacementScope) obj;
                int size4 = arrayList.size() - 1;
                if (size4 >= 0) {
                    int i5 = 0;
                    while (true) {
                        Placeable.PlacementScope.placeRelative$default(placementScope4, (Placeable) arrayList.get(i5), 0, 0);
                        if (i5 == size4) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                }
                break;
        }
        return unit;
    }
}
