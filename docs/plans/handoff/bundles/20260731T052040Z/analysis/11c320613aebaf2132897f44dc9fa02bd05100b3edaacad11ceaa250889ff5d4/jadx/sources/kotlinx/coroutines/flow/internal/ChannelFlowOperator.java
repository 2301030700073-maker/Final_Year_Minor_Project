package kotlinx.coroutines.flow.internal;

import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ChannelFlowOperator extends ChannelFlow {
    public final Flow flow;

    public ChannelFlowOperator(Flow flow, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.flow = flow;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        int i = this.capacity;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (i == -3) {
            CoroutineContext context = continuation.getContext();
            Boolean bool = Boolean.FALSE;
            SaversKt$$ExternalSyntheticLambda3 saversKt$$ExternalSyntheticLambda3 = new SaversKt$$ExternalSyntheticLambda3(26);
            CoroutineContext coroutineContext = this.context;
            CoroutineContext plus = !((Boolean) coroutineContext.fold(bool, saversKt$$ExternalSyntheticLambda3)).booleanValue() ? context.plus(coroutineContext) : JobKt.foldCopies(context, coroutineContext, false);
            if (Intrinsics.areEqual(plus, context)) {
                Object flowCollect = flowCollect(flowCollector, continuation);
                if (flowCollect == coroutineSingletons) {
                    return flowCollect;
                }
            } else {
                ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
                if (Intrinsics.areEqual(plus.get(continuationInterceptor$Key), context.get(continuationInterceptor$Key))) {
                    CoroutineContext context2 = continuation.getContext();
                    if (!(flowCollector instanceof SendingCollector) && !(flowCollector instanceof NopCollector)) {
                        flowCollector = new UndispatchedContextCollector(flowCollector, context2);
                    }
                    Object withContextUndispatched = ChannelFlowKt.withContextUndispatched(plus, flowCollector, InlineList.threadContextElements(plus), new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation);
                    if (withContextUndispatched == coroutineSingletons) {
                        return withContextUndispatched;
                    }
                }
            }
            return Unit.INSTANCE;
        }
        Object collect = super.collect(flowCollector, continuation);
        if (collect == coroutineSingletons) {
            return collect;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object collectTo(ProducerScope producerScope, Continuation continuation) {
        Object flowCollect = flowCollect(new SendingCollector(producerScope), continuation);
        return flowCollect == CoroutineSingletons.COROUTINE_SUSPENDED ? flowCollect : Unit.INSTANCE;
    }

    public abstract Object flowCollect(FlowCollector flowCollector, Continuation continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String toString() {
        return this.flow + " -> " + super.toString();
    }
}
