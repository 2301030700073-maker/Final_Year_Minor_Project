package androidx.compose.ui.draw;

import androidx.compose.ui.layout.Placeable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PainterNode$measure$1 extends Lambda implements Function1 {
    public final /* synthetic */ Placeable $placeable;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PainterNode$measure$1(Placeable placeable, int i) {
        super(1);
        this.$r8$classId = i;
        this.$placeable = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Placeable placeable = this.$placeable;
        switch (i) {
            case 0:
                Placeable.PlacementScope.placeRelative$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 1:
                Placeable.PlacementScope.place$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 2:
                Placeable.PlacementScope.place$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 3:
                Placeable.PlacementScope.place$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 4:
                Placeable.PlacementScope.placeRelativeWithLayer$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 5:
                Placeable.PlacementScope.place$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 6:
                Placeable.PlacementScope.placeRelative$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            default:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.getClass();
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
        }
        return unit;
    }
}
