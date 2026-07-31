package androidx.compose.ui.draw;

import androidx.compose.ui.layout.Placeable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                ((Placeable.PlacementScope) obj).place(placeable, 0, 0, 0.0f);
                break;
            case 2:
                ((Placeable.PlacementScope) obj).place(placeable, 0, 0, 0.0f);
                break;
            case 3:
                ((Placeable.PlacementScope) obj).place(placeable, 0, 0, 0.0f);
                break;
            case 4:
                Placeable.PlacementScope.placeRelativeWithLayer$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
            case 5:
                ((Placeable.PlacementScope) obj).place(placeable, 0, 0, 0.0f);
                break;
            default:
                Placeable.PlacementScope.placeRelative$default((Placeable.PlacementScope) obj, placeable, 0, 0);
                break;
        }
        return unit;
    }
}
