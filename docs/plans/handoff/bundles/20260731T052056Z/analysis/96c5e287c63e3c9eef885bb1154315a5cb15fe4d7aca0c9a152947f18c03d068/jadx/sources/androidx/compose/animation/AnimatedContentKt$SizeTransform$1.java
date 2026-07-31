package androidx.compose.animation;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatedContentKt$SizeTransform$1 extends Lambda implements Function2 {
    public static final AnimatedContentKt$SizeTransform$1 INSTANCE;
    public static final AnimatedContentKt$SizeTransform$1 INSTANCE$1;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 2;
        INSTANCE = new AnimatedContentKt$SizeTransform$1(i, 0);
        INSTANCE$1 = new AnimatedContentKt$SizeTransform$1(i, 1);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AnimatedContentKt$SizeTransform$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                long j = ((IntSize) obj).packedValue;
                long j2 = ((IntSize) obj2).packedValue;
                Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
                return ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntSize(4294967297L), 1);
            default:
                EnterExitState enterExitState = (EnterExitState) obj2;
                return Boolean.valueOf(((EnterExitState) obj) == enterExitState && enterExitState == EnterExitState.PostExit);
        }
    }
}
