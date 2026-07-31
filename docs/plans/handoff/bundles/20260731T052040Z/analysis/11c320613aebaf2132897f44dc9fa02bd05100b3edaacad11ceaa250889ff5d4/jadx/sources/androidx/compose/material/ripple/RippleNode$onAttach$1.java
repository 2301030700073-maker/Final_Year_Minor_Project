package androidx.compose.material.ripple;

import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RippleNode$onAttach$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ RippleNode this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.material.ripple.RippleNode$onAttach$1$1, reason: invalid class name */
    public final class AnonymousClass1 implements FlowCollector {
        public final /* synthetic */ Object $$this$launch;
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(Object obj, Object obj2, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.$$this$launch = obj2;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public final Object emit(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            Object obj2 = this.$$this$launch;
            Object obj3 = this.this$0;
            switch (i) {
                case 0:
                    Interaction interaction = (Interaction) obj;
                    RippleNode rippleNode = (RippleNode) obj3;
                    if (!(interaction instanceof PressInteraction)) {
                        CoroutineScope coroutineScope = (CoroutineScope) obj2;
                        StateLayer stateLayer = rippleNode.stateLayer;
                        if (stateLayer == null) {
                            stateLayer = new StateLayer(rippleNode.bounded, rippleNode.rippleAlpha);
                            HitTestResultKt.invalidateDraw(rippleNode);
                            rippleNode.stateLayer = stateLayer;
                        }
                        ArrayList arrayList = stateLayer.interactions;
                        if (interaction instanceof HoverInteraction$Enter) {
                            arrayList.add(interaction);
                        } else if (interaction instanceof HoverInteraction$Exit) {
                            arrayList.remove(((HoverInteraction$Exit) interaction).enter);
                        } else if (interaction instanceof FocusInteraction$Focus) {
                            arrayList.add(interaction);
                        } else if (interaction instanceof FocusInteraction$Unfocus) {
                            arrayList.remove(((FocusInteraction$Unfocus) interaction).focus);
                        } else if (interaction instanceof DragInteraction$Start) {
                            arrayList.add(interaction);
                        } else if (interaction instanceof DragInteraction$Stop) {
                            arrayList.remove(((DragInteraction$Stop) interaction).start);
                        } else if (interaction instanceof DragInteraction$Cancel) {
                            arrayList.remove(((DragInteraction$Cancel) interaction).start);
                        }
                        Interaction interaction2 = (Interaction) CollectionsKt.lastOrNull(arrayList);
                        if (!Intrinsics.areEqual(stateLayer.currentInteraction, interaction2)) {
                            if (interaction2 != null) {
                                stateLayer.rippleAlpha.invoke();
                                boolean z = interaction2 instanceof HoverInteraction$Enter;
                                float f = z ? 0.08f : interaction2 instanceof FocusInteraction$Focus ? 0.1f : interaction2 instanceof DragInteraction$Start ? 0.16f : 0.0f;
                                TweenSpec tweenSpec = RippleKt.DefaultTweenSpec;
                                if (!z) {
                                    if (interaction2 instanceof FocusInteraction$Focus) {
                                        tweenSpec = new TweenSpec(45, 0, EasingKt.LinearEasing);
                                    } else if (interaction2 instanceof DragInteraction$Start) {
                                        tweenSpec = new TweenSpec(45, 0, EasingKt.LinearEasing);
                                    }
                                }
                                JobKt.launch$default(coroutineScope, null, null, new StateLayer$handleInteraction$1(stateLayer, f, tweenSpec, null), 3);
                            } else {
                                Interaction interaction3 = stateLayer.currentInteraction;
                                TweenSpec tweenSpec2 = RippleKt.DefaultTweenSpec;
                                if (!(interaction3 instanceof HoverInteraction$Enter) && !(interaction3 instanceof FocusInteraction$Focus) && (interaction3 instanceof DragInteraction$Start)) {
                                    tweenSpec2 = new TweenSpec(150, 0, EasingKt.LinearEasing);
                                }
                                JobKt.launch$default(coroutineScope, null, null, new StateLayer$handleInteraction$2(stateLayer, tweenSpec2, null), 3);
                            }
                            stateLayer.currentInteraction = interaction2;
                            break;
                        }
                    } else if (!rippleNode.hasValidSize) {
                        rippleNode.pendingInteractions.add(interaction);
                        break;
                    } else {
                        rippleNode.handlePressInteraction((PressInteraction) interaction);
                        break;
                    }
                    break;
                default:
                    ((OnConstraintsStateChangedListener) obj3).onConstraintsStateChanged((WorkSpec) obj2, (ConstraintsState) obj);
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleNode$onAttach$1(RippleNode rippleNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = rippleNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RippleNode$onAttach$1 rippleNode$onAttach$1 = new RippleNode$onAttach$1(this.this$0, continuation);
        rippleNode$onAttach$1.L$0 = obj;
        return rippleNode$onAttach$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        RippleNode rippleNode = this.this$0;
        SharedFlowImpl sharedFlowImpl = ((MutableInteractionSourceImpl) rippleNode.interactionSource).interactions;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(rippleNode, coroutineScope, 0);
        this.label = 1;
        sharedFlowImpl.getClass();
        SharedFlowImpl.collect$suspendImpl(sharedFlowImpl, anonymousClass1, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
