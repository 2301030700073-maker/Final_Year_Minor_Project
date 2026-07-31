package androidx.navigation.compose;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.navigation.NavBackStackEntry;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda7 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ State f$0;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda7(State state, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        State state = this.f$0;
        switch (i) {
            case 0:
                List list = (List) state.getValue();
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Intrinsics.areEqual(((NavBackStackEntry) obj).destination.navigatorName, "composable")) {
                        arrayList.add(obj);
                    }
                }
                return arrayList;
            case 1:
                Offset offset = (Offset) state.getValue();
                long j = offset.packedValue;
                return offset;
            case 2:
                AnimationVector2D animationVector2D = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                Offset offset2 = (Offset) state.getValue();
                long j2 = offset2.packedValue;
                return offset2;
            case 3:
                return Boolean.valueOf(((Number) state.getValue()).floatValue() > RecyclerView.DECELERATION_RATE);
            default:
                return Boolean.valueOf(((Number) state.getValue()).floatValue() > RecyclerView.DECELERATION_RATE);
        }
    }
}
