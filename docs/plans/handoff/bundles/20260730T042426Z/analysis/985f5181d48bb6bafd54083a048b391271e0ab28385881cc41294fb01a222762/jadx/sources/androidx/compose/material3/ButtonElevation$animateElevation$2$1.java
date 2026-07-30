package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.internal.ElevationKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Dp;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: Button.kt */
/* loaded from: classes.dex */
final class ButtonElevation$animateElevation$2$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Animatable $animatable;
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ Interaction $interaction;
    final /* synthetic */ float $target;
    int label;
    final /* synthetic */ ButtonElevation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ButtonElevation$animateElevation$2$1(Animatable animatable, float f, boolean z, ButtonElevation buttonElevation, Interaction interaction, Continuation continuation) {
        super(2, continuation);
        this.$animatable = animatable;
        this.$target = f;
        this.$enabled = z;
        this.this$0 = buttonElevation;
        this.$interaction = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ButtonElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, this.this$0, this.$interaction, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((ButtonElevation$animateElevation$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f;
        float f2;
        float f3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (!Dp.m2426equalsimpl0(((Dp) this.$animatable.getTargetValue()).m2430unboximpl(), this.$target)) {
                if (!this.$enabled) {
                    Animatable animatable = this.$animatable;
                    Dp m2422boximpl = Dp.m2422boximpl(this.$target);
                    this.label = 1;
                    if (animatable.snapTo(m2422boximpl, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    float m2430unboximpl = ((Dp) this.$animatable.getTargetValue()).m2430unboximpl();
                    f = this.this$0.pressedElevation;
                    Interaction interaction = null;
                    if (Dp.m2426equalsimpl0(m2430unboximpl, f)) {
                        interaction = new PressInteraction.Press(Offset.Companion.m1179getZeroF1C5BW0(), null);
                    } else {
                        f2 = this.this$0.hoveredElevation;
                        if (Dp.m2426equalsimpl0(m2430unboximpl, f2)) {
                            interaction = new HoverInteraction$Enter();
                        } else {
                            f3 = this.this$0.focusedElevation;
                            if (Dp.m2426equalsimpl0(m2430unboximpl, f3)) {
                                interaction = new FocusInteraction$Focus();
                            }
                        }
                    }
                    Animatable animatable2 = this.$animatable;
                    float f4 = this.$target;
                    Interaction interaction2 = this.$interaction;
                    this.label = 2;
                    if (ElevationKt.m789animateElevationrAjV9yQ(animatable2, f4, interaction, interaction2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
        } else {
            if (i != 1 && i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
