package androidx.compose.ui.graphics.layer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                Modifier.CC.m350drawRectnJ9OG0$default((DrawScope) obj, Color.Transparent, 0L, RecyclerView.DECELERATION_RATE, null, 126);
                break;
        }
        return unit;
    }
}
