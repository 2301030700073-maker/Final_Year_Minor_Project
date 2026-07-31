package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleLayoutKt$SimpleLayout$1$1$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArrayList f$0;

    public /* synthetic */ SimpleLayoutKt$SimpleLayout$1$1$$ExternalSyntheticLambda0(int i, ArrayList arrayList) {
        this.$r8$classId = i;
        this.f$0 = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ArrayList arrayList = this.f$0;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i) {
            case 0:
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    placementScope.place((Placeable) arrayList.get(i2), 0, 0, 0.0f);
                }
                break;
            default:
                int size2 = arrayList.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) arrayList.get(i3), 0, 0);
                }
                break;
        }
        return unit;
    }
}
