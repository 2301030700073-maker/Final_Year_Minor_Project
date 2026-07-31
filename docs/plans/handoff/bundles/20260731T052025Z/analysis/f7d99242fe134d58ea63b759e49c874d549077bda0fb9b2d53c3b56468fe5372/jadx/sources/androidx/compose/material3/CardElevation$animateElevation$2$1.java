package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.internal.ElevationKt;
import androidx.compose.ui.unit.Dp;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CardElevation$animateElevation$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Animatable $animatable;
    public final /* synthetic */ boolean $enabled;
    public final /* synthetic */ Interaction $interaction;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ float $target;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CardElevation$animateElevation$2$1(Animatable animatable, float f, boolean z, Object obj, Interaction interaction, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$animatable = animatable;
        this.$target = f;
        this.$enabled = z;
        this.this$0 = obj;
        this.$interaction = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new CardElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, (CardElevation) obj2, this.$interaction, continuation, 0);
            default:
                return new CardElevation$animateElevation$2$1(this.$animatable, this.$target, this.$enabled, (ButtonElevation) obj2, this.$interaction, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((CardElevation$animateElevation$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Interaction interaction = this.$interaction;
        boolean z = this.$enabled;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Animatable animatable = this.$animatable;
        float f = this.$target;
        Object obj2 = this.this$0;
        Interaction interaction2 = null;
        switch (i) {
            case 0:
                CardElevation cardElevation = (CardElevation) obj2;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (!Dp.m745equalsimpl0(((Dp) animatable.targetValue$delegate.getValue()).value, f)) {
                        if (z) {
                            float f2 = ((Dp) animatable.targetValue$delegate.getValue()).value;
                            if (Dp.m745equalsimpl0(f2, cardElevation.pressedElevation)) {
                                interaction2 = new PressInteraction.Press(0L);
                            } else if (Dp.m745equalsimpl0(f2, cardElevation.hoveredElevation)) {
                                interaction2 = new HoverInteraction$Enter();
                            } else if (Dp.m745equalsimpl0(f2, cardElevation.focusedElevation)) {
                                interaction2 = new FocusInteraction$Focus();
                            } else if (Dp.m745equalsimpl0(f2, cardElevation.draggedElevation)) {
                                interaction2 = new DragInteraction$Start();
                            }
                            this.label = 2;
                            if (ElevationKt.m367animateElevationrAjV9yQ(animatable, f, interaction2, interaction, this) != coroutineSingletons) {
                            }
                        } else {
                            Dp dp = new Dp(f);
                            this.label = 1;
                            if (animatable.snapTo(dp, this) != coroutineSingletons) {
                            }
                        }
                        break;
                    }
                } else if (i2 != 1 && i2 != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                ButtonElevation buttonElevation = (ButtonElevation) obj2;
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (!Dp.m745equalsimpl0(((Dp) animatable.targetValue$delegate.getValue()).value, f)) {
                        if (z) {
                            float f3 = ((Dp) animatable.targetValue$delegate.getValue()).value;
                            if (Dp.m745equalsimpl0(f3, 0.0f)) {
                                interaction2 = new PressInteraction.Press(0L);
                            } else if (Dp.m745equalsimpl0(f3, buttonElevation.hoveredElevation)) {
                                interaction2 = new HoverInteraction$Enter();
                            } else if (Dp.m745equalsimpl0(f3, 0.0f)) {
                                interaction2 = new FocusInteraction$Focus();
                            }
                            this.label = 2;
                            if (ElevationKt.m367animateElevationrAjV9yQ(animatable, f, interaction2, interaction, this) != coroutineSingletons) {
                            }
                        } else {
                            Dp dp2 = new Dp(f);
                            this.label = 1;
                            if (animatable.snapTo(dp2, this) != coroutineSingletons) {
                            }
                        }
                        break;
                    }
                } else if (i3 != 1 && i3 != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }
}
