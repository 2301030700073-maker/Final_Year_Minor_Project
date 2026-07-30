package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: LazyLayoutItemAnimation.kt */
/* loaded from: classes.dex */
final class LazyLayoutItemAnimation$animateDisappearance$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ GraphicsLayer $layer;
    final /* synthetic */ FiniteAnimationSpec $spec;
    int label;
    final /* synthetic */ LazyLayoutItemAnimation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyLayoutItemAnimation$animateDisappearance$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, GraphicsLayer graphicsLayer, Continuation continuation) {
        super(2, continuation);
        this.this$0 = lazyLayoutItemAnimation;
        this.$spec = finiteAnimationSpec;
        this.$layer = graphicsLayer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyLayoutItemAnimation$animateDisappearance$1(this.this$0, this.$spec, this.$layer, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((LazyLayoutItemAnimation$animateDisappearance$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Animatable animatable;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                animatable = this.this$0.visibilityAnimation;
                Float boxFloat = Boxing.boxFloat(0.0f);
                FiniteAnimationSpec finiteAnimationSpec = this.$spec;
                final GraphicsLayer graphicsLayer = this.$layer;
                final LazyLayoutItemAnimation lazyLayoutItemAnimation = this.this$0;
                Function1 function1 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animateDisappearance$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                        invoke((Animatable) obj2);
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Animatable animatable2) {
                        Function0 function0;
                        GraphicsLayer.this.setAlpha(((Number) animatable2.getValue()).floatValue());
                        function0 = lazyLayoutItemAnimation.onLayerPropertyChanged;
                        function0.invoke();
                    }
                };
                this.label = 1;
                if (Animatable.animateTo$default(animatable, boxFloat, finiteAnimationSpec, null, function1, this, 4, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            this.this$0.setDisappearanceAnimationFinished(true);
            this.this$0.setDisappearanceAnimationInProgress(false);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.this$0.setDisappearanceAnimationInProgress(false);
            throw th;
        }
    }
}
