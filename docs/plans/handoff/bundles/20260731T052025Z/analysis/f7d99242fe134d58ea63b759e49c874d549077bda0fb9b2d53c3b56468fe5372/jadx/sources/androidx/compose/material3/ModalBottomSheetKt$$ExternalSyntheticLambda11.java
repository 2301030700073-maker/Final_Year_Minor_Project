package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ModalBottomSheetKt$$ExternalSyntheticLambda11 implements Function1 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ModalBottomSheetKt$$ExternalSyntheticLambda11(long j, State state) {
        this.f$0 = j;
        this.f$1 = state;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$1;
        switch (i) {
            case 0:
                Modifier.CC.m402drawRectnJ9OG0$default((DrawScope) obj, this.f$0, 0L, RangesKt.coerceIn(((Number) ((State) obj2).getValue()).floatValue(), 0.0f, 1.0f), null, 118);
                break;
            default:
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) obj2;
                lazyLayoutItemAnimation.m253setPlacementDeltagyyYBs(IntOffset.m753minusqkQi6aY(((IntOffset) ((Animatable) obj).getValue()).packedValue, this.f$0));
                lazyLayoutItemAnimation.onLayerPropertyChanged.invoke();
                break;
        }
        return unit;
    }

    public /* synthetic */ ModalBottomSheetKt$$ExternalSyntheticLambda11(LazyLayoutItemAnimation lazyLayoutItemAnimation, long j) {
        this.f$1 = lazyLayoutItemAnimation;
        this.f$0 = j;
    }
}
