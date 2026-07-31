package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FillNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Placeable f$0;

    public /* synthetic */ FillNode$$ExternalSyntheticLambda0(Placeable placeable, int i) {
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
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 1:
                if (placementScope.getParentLayoutDirection() != LayoutDirection.Ltr && placementScope.getParentWidth() != 0) {
                    Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                    placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY((placementScope.getParentWidth() - placeable.width) << 32, placeable.apparentToRealOffset), 0.0f, (Function1) null);
                    break;
                } else {
                    Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope, placeable);
                    placeable.mo575placeAtf8xVGno(IntOffset.m754plusqkQi6aY(0L, placeable.apparentToRealOffset), 0.0f, (Function1) null);
                    break;
                }
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
            case 5:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 6:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
            case 9:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
            default:
                placementScope.place(placeable, 0, 0, 0.0f);
                break;
        }
        return unit;
    }
}
