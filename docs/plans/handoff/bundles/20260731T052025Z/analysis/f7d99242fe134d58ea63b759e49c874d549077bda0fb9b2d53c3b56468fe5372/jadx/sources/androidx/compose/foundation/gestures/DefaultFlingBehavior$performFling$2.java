package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda0;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior$performFling$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ float $initialVelocity;
    public final /* synthetic */ LazyListScrollScopeKt$LazyLayoutScrollScope$1 $this_performFling;
    public Ref$FloatRef L$0;
    public AnimationState L$1;
    public int label;
    public final /* synthetic */ DefaultFlingBehavior this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(float f, DefaultFlingBehavior defaultFlingBehavior, LazyListScrollScopeKt$LazyLayoutScrollScope$1 lazyListScrollScopeKt$LazyLayoutScrollScope$1, Continuation continuation) {
        super(2, continuation);
        this.$initialVelocity = f;
        this.this$0 = defaultFlingBehavior;
        this.$this_performFling = lazyListScrollScopeKt$LazyLayoutScrollScope$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DefaultFlingBehavior$performFling$2(this.$initialVelocity, this.this$0, this.$this_performFling, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DefaultFlingBehavior$performFling$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f;
        AnimationState AnimationState$default;
        Ref$FloatRef ref$FloatRef;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            f = this.$initialVelocity;
            if (Math.abs(f) > 1.0f) {
                Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
                ref$FloatRef2.element = f;
                Ref$FloatRef ref$FloatRef3 = new Ref$FloatRef();
                AnimationState$default = ArcSplineKt.AnimationState$default(28, f);
                try {
                    DefaultFlingBehavior defaultFlingBehavior = this.this$0;
                    DecayAnimationSpecImpl decayAnimationSpecImpl = defaultFlingBehavior.flingDecay;
                    NavControllerImpl$$ExternalSyntheticLambda0 navControllerImpl$$ExternalSyntheticLambda0 = new NavControllerImpl$$ExternalSyntheticLambda0(ref$FloatRef3, this.$this_performFling, ref$FloatRef2, defaultFlingBehavior, 3);
                    this.L$0 = ref$FloatRef2;
                    this.L$1 = AnimationState$default;
                    this.label = 1;
                    Object animateDecay$default = ArcSplineKt.animateDecay$default(AnimationState$default, decayAnimationSpecImpl, navControllerImpl$$ExternalSyntheticLambda0, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (animateDecay$default == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$FloatRef = ref$FloatRef2;
                } catch (CancellationException unused) {
                    ref$FloatRef = ref$FloatRef2;
                    ref$FloatRef.element = ((Number) AnimationState$default.typeConverter.convertFromVector.invoke(AnimationState$default.velocityVector)).floatValue();
                    f = ref$FloatRef.element;
                    return new Float(f);
                }
            }
            return new Float(f);
        }
        if (i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        AnimationState$default = this.L$1;
        ref$FloatRef = this.L$0;
        try {
            ResultKt.throwOnFailure(obj);
        } catch (CancellationException unused2) {
            ref$FloatRef.element = ((Number) AnimationState$default.typeConverter.convertFromVector.invoke(AnimationState$default.velocityVector)).floatValue();
            f = ref$FloatRef.element;
            return new Float(f);
        }
        f = ref$FloatRef.element;
        return new Float(f);
    }
}
