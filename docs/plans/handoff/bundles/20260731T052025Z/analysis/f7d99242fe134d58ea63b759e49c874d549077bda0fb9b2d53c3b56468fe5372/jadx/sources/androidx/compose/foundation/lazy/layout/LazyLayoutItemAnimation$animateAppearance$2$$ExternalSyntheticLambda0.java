package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyLayoutItemAnimation$animateAppearance$2$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GraphicsLayer f$0;
    public final /* synthetic */ LazyLayoutItemAnimation f$1;

    public /* synthetic */ LazyLayoutItemAnimation$animateAppearance$2$$ExternalSyntheticLambda0(GraphicsLayer graphicsLayer, LazyLayoutItemAnimation lazyLayoutItemAnimation, int i) {
        this.$r8$classId = i;
        this.f$0 = graphicsLayer;
        this.f$1 = lazyLayoutItemAnimation;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LazyLayoutItemAnimation lazyLayoutItemAnimation = this.f$1;
        GraphicsLayer graphicsLayer = this.f$0;
        Animatable animatable = (Animatable) obj;
        switch (i) {
            case 0:
                graphicsLayer.setAlpha(((Number) animatable.getValue()).floatValue());
                lazyLayoutItemAnimation.onLayerPropertyChanged.invoke();
                break;
            default:
                graphicsLayer.setAlpha(((Number) animatable.getValue()).floatValue());
                lazyLayoutItemAnimation.onLayerPropertyChanged.invoke();
                break;
        }
        return unit;
    }
}
