package androidx.compose.material3;

import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.unit.Dp;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RadioButtonKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ State f$0;
    public final /* synthetic */ State f$1;

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda0(State state, State state2, int i) {
        this.$r8$classId = i;
        this.f$0 = state;
        this.f$1 = state2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        State state = this.f$1;
        State state2 = this.f$0;
        switch (i) {
            case 0:
                DrawScope drawScope = (DrawScope) obj;
                float mo87toPx0680j_4 = drawScope.mo87toPx0680j_4(2.0f);
                float f = mo87toPx0680j_4 / 2.0f;
                Modifier.CC.m343drawCircleVaOC9Bg$default(drawScope, ((Color) state2.getValue()).value, drawScope.mo87toPx0680j_4(RadioButtonTokens.IconSize / 2.0f) - f, 0L, new Stroke(mo87toPx0680j_4, RecyclerView.DECELERATION_RATE, 0, 0, 30), 108);
                if (Dp.m692compareTo0680j_4(((Dp) state.getValue()).value, RecyclerView.DECELERATION_RATE) > 0) {
                    Modifier.CC.m343drawCircleVaOC9Bg$default(drawScope, ((Color) state2.getValue()).value, drawScope.mo87toPx0680j_4(((Dp) state.getValue()).value) - f, 0L, Fill.INSTANCE, 108);
                    break;
                }
                break;
            default:
                DrawScope drawScope2 = (DrawScope) obj;
                drawScope2.getClass();
                Modifier.CC.m343drawCircleVaOC9Bg$default(drawScope2, ((Color) state2.getValue()).value, drawScope2.mo87toPx0680j_4(((Dp) state.getValue()).value) / 2.0f, 0L, null, 124);
                break;
        }
        return unit;
    }
}
