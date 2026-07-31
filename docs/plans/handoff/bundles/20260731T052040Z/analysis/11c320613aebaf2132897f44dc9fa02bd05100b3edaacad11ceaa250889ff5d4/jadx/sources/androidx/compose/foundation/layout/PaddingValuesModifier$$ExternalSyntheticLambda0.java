package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Placeable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PaddingValuesModifier$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Placeable f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ PaddingValuesModifier$$ExternalSyntheticLambda0(int i, Placeable placeable, int i2) {
        this.$r8$classId = 2;
        this.f$1 = i;
        this.f$0 = placeable;
        this.f$2 = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        Placeable placeable = this.f$0;
        int i3 = this.f$1;
        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
        switch (i) {
            case 0:
                placementScope.place(placeable, i3, i2, 0.0f);
                break;
            case 1:
                placementScope.place(placeable, i3, i2, 0.0f);
                break;
            default:
                placementScope.place(placeable, MathKt.roundToInt((i3 - placeable.width) / 2.0f), MathKt.roundToInt((i2 - placeable.height) / 2.0f), 0.0f);
                break;
        }
        return unit;
    }

    public /* synthetic */ PaddingValuesModifier$$ExternalSyntheticLambda0(Placeable placeable, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = placeable;
        this.f$1 = i;
        this.f$2 = i2;
    }
}
