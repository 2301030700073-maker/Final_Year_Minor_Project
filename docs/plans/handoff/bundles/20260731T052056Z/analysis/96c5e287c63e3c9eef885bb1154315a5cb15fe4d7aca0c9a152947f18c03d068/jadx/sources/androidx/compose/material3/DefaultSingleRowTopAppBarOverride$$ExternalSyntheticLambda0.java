package androidx.compose.material3;

import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ULong;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ State f$0;

    public /* synthetic */ DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda0(State state, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        State state = this.f$0;
        switch (i) {
            case 0:
                DrawScope drawScope = (DrawScope) obj;
                long j = ((Color) state.getValue()).value;
                if (!ULong.m820equalsimpl0(j, Color.Unspecified)) {
                    Modifier.CC.m350drawRectnJ9OG0$default(drawScope, j, 0L, RecyclerView.DECELERATION_RATE, null, 126);
                    break;
                }
                break;
            case 1:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) state.getValue()).floatValue());
                break;
            case 2:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) state.getValue()).floatValue());
                break;
            default:
                ((ReusableGraphicsLayerScope) obj).setAlpha(((Number) state.getValue()).floatValue());
                break;
        }
        return unit;
    }
}
