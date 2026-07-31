package androidx.compose.material3;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppBarKt$$ExternalSyntheticLambda12 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Placeable f$0;

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda12(Placeable placeable, int i) {
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
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case 1:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 2:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 3:
                if (placementScope.getParentLayoutDirection() != LayoutDirection.Ltr && placementScope.getParentWidth() != 0) {
                    placementScope.handleMotionFrameOfReferencePlacement(placeable);
                    placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY((placementScope.getParentWidth() - placeable.width) << 32, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, (Function1) null);
                    break;
                } else {
                    placementScope.handleMotionFrameOfReferencePlacement(placeable);
                    placeable.mo516placeAtf8xVGno(IntOffset.m717plusqkQi6aY(0L, placeable.apparentToRealOffset), RecyclerView.DECELERATION_RATE, (Function1) null);
                    break;
                }
                break;
            case 4:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 5:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 6:
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case 7:
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case 8:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 9:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            case 10:
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case 11:
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case 12:
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case IMAGE_VALUE:
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0);
                break;
            default:
                placementScope.getClass();
                Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0);
                break;
        }
        return unit;
    }
}
