package androidx.compose.material3;

import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ListItemKt$CollectInteractionsAsState$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ MutableState $draggedState;
    final /* synthetic */ MutableState $focusedState;
    final /* synthetic */ MutableState $hoveredState;
    final /* synthetic */ MutableState $pressedState;
    final /* synthetic */ InteractionSource $this_CollectInteractionsAsState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListItemKt$CollectInteractionsAsState$1$1(MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, InteractionSource interactionSource, Continuation continuation) {
        super(2, continuation);
        this.$pressedState = mutableState;
        this.$focusedState = mutableState2;
        this.$hoveredState = mutableState3;
        this.$draggedState = mutableState4;
        this.$this_CollectInteractionsAsState = interactionSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ListItemKt$CollectInteractionsAsState$1$1(this.$pressedState, this.$focusedState, this.$hoveredState, this.$draggedState, this.$this_CollectInteractionsAsState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ListItemKt$CollectInteractionsAsState$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
        final ArrayList arrayList = this.$pressedState != null ? new ArrayList() : null;
        final ArrayList arrayList2 = this.$focusedState != null ? new ArrayList() : null;
        final ArrayList arrayList3 = this.$hoveredState != null ? new ArrayList() : null;
        final ArrayList arrayList4 = this.$draggedState != null ? new ArrayList() : null;
        SharedFlowImpl sharedFlowImpl = ((MutableInteractionSourceImpl) this.$this_CollectInteractionsAsState).interactions;
        final MutableState mutableState = this.$pressedState;
        final MutableState mutableState2 = this.$focusedState;
        final MutableState mutableState3 = this.$hoveredState;
        final MutableState mutableState4 = this.$draggedState;
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material3.ListItemKt$CollectInteractionsAsState$1$1.1
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object emit(Object obj2, Continuation continuation) {
                Interaction interaction = (Interaction) obj2;
                boolean z = interaction instanceof PressInteraction.Press;
                List list = arrayList3;
                List list2 = arrayList2;
                List list3 = arrayList4;
                List list4 = arrayList;
                if (z) {
                    if (list4 != null) {
                        list4.add(interaction);
                    }
                } else if (interaction instanceof PressInteraction.Release) {
                    if (list4 != null) {
                        list4.remove(((PressInteraction.Release) interaction).press);
                    }
                } else if (interaction instanceof PressInteraction.Cancel) {
                    if (list4 != null) {
                        list4.remove(((PressInteraction.Cancel) interaction).press);
                    }
                } else if (interaction instanceof FocusInteraction$Focus) {
                    if (list2 != null) {
                        list2.add(interaction);
                    }
                } else if (interaction instanceof FocusInteraction$Unfocus) {
                    if (list2 != null) {
                        list2.remove(((FocusInteraction$Unfocus) interaction).focus);
                    }
                } else if (interaction instanceof HoverInteraction$Enter) {
                    if (list != null) {
                        list.add(interaction);
                    }
                } else if (interaction instanceof HoverInteraction$Exit) {
                    if (list != null) {
                        list.remove(((HoverInteraction$Exit) interaction).enter);
                    }
                } else if (interaction instanceof DragInteraction$Start) {
                    if (list3 != null) {
                        list3.add(interaction);
                    }
                } else if (interaction instanceof DragInteraction$Stop) {
                    if (list3 != null) {
                        list3.remove(((DragInteraction$Stop) interaction).start);
                    }
                } else if ((interaction instanceof DragInteraction$Cancel) && list3 != null) {
                    list3.remove(((DragInteraction$Cancel) interaction).start);
                }
                MutableState mutableState5 = mutableState;
                if (mutableState5 != null && list4 != null) {
                    mutableState5.setValue(Boolean.valueOf(!list4.isEmpty()));
                }
                MutableState mutableState6 = mutableState2;
                if (mutableState6 != null && list2 != null) {
                    mutableState6.setValue(Boolean.valueOf(!list2.isEmpty()));
                }
                MutableState mutableState7 = mutableState3;
                if (mutableState7 != null && list != null) {
                    mutableState7.setValue(Boolean.valueOf(!list.isEmpty()));
                }
                MutableState mutableState8 = mutableState4;
                if (mutableState8 != null && list3 != null) {
                    mutableState8.setValue(Boolean.valueOf(!list3.isEmpty()));
                }
                return Unit.INSTANCE;
            }
        };
        this.label = 1;
        sharedFlowImpl.getClass();
        SharedFlowImpl.collect$suspendImpl(sharedFlowImpl, flowCollector, this);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }
}
