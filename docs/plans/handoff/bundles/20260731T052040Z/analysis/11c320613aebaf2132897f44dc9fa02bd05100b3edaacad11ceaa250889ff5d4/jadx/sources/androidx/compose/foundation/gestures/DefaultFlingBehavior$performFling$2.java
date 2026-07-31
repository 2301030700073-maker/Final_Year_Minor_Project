package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.navigation3.runtime.DecoratedNavEntriesKt$$ExternalSyntheticLambda3;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultFlingBehavior$performFling$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ float $initialVelocity;
    final /* synthetic */ ScrollScope $this_performFling;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DefaultFlingBehavior this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFlingBehavior$performFling$2(float f, DefaultFlingBehavior defaultFlingBehavior, ScrollScope scrollScope, Continuation continuation) {
        super(2, continuation);
        this.$initialVelocity = f;
        this.this$0 = defaultFlingBehavior;
        this.$this_performFling = scrollScope;
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
            float abs = Math.abs(this.$initialVelocity);
            f = this.$initialVelocity;
            if (abs > 1.0f) {
                Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
                ref$FloatRef2.element = f;
                Ref$FloatRef ref$FloatRef3 = new Ref$FloatRef();
                AnimationState$default = ArcSplineKt.AnimationState$default(0.0f, f, 28);
                try {
                    DefaultFlingBehavior defaultFlingBehavior = this.this$0;
                    DecayAnimationSpecImpl decayAnimationSpecImpl = defaultFlingBehavior.flingDecay;
                    DecoratedNavEntriesKt$$ExternalSyntheticLambda3 decoratedNavEntriesKt$$ExternalSyntheticLambda3 = new DecoratedNavEntriesKt$$ExternalSyntheticLambda3(ref$FloatRef3, this.$this_performFling, ref$FloatRef2, defaultFlingBehavior, 2);
                    this.L$0 = ref$FloatRef2;
                    this.L$1 = AnimationState$default;
                    this.label = 1;
                    Object animateDecay = ArcSplineKt.animateDecay(AnimationState$default, decayAnimationSpecImpl, false, decoratedNavEntriesKt$$ExternalSyntheticLambda3, this);
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (animateDecay == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    ref$FloatRef = ref$FloatRef2;
                } catch (CancellationException unused) {
                    ref$FloatRef = ref$FloatRef2;
                    ref$FloatRef.element = ((Number) AnimationState$default.getVelocity()).floatValue();
                    f = ref$FloatRef.element;
                    return new Float(f);
                }
            }
            return new Float(f);
        }
        if (i != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        AnimationState$default = (AnimationState) this.L$1;
        ref$FloatRef = (Ref$FloatRef) this.L$0;
        try {
            ResultKt.throwOnFailure(obj);
        } catch (CancellationException unused2) {
            ref$FloatRef.element = ((Number) AnimationState$default.getVelocity()).floatValue();
            f = ref$FloatRef.element;
            return new Float(f);
        }
        f = ref$FloatRef.element;
        return new Float(f);
    }
}
