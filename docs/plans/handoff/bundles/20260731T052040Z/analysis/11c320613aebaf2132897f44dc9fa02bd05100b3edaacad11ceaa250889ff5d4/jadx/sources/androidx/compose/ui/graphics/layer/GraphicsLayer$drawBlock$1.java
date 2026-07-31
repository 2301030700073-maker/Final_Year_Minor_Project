package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.Owner;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class GraphicsLayer$drawBlock$1 extends Lambda implements Function1 {
    public static final GraphicsLayer$drawBlock$1 INSTANCE;
    public static final GraphicsLayer$drawBlock$1 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new GraphicsLayer$drawBlock$1(i, 0);
        INSTANCE$1 = new GraphicsLayer$drawBlock$1(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GraphicsLayer$drawBlock$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                break;
            default:
                Owner.CC.m367drawRectnJ9OG0$default((DrawScope) obj, Color.Transparent, 0L, Token.ELSE);
                break;
        }
        return unit;
    }
}
