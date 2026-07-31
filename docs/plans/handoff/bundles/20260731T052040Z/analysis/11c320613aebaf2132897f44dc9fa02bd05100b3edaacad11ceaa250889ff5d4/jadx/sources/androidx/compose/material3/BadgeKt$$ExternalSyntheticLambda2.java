package androidx.compose.material3;

import androidx.compose.ui.layout.Placeable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BadgeKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Placeable f$0;

    public /* synthetic */ BadgeKt$$ExternalSyntheticLambda2(Placeable placeable, int i) {
        this.$r8$classId = i;
        this.f$0 = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Placeable placeable = this.f$0;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i) {
            case 0:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
            case 1:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 2:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 3:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 4:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
            default:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
        }
        return unit;
    }
}
