package kotlinx.coroutines.flow.internal;

import androidx.paging.FlowExtKt$simpleScan$1;
import androidx.paging.PageFetcher$flow$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineContextKt$$ExternalSyntheticLambda0;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.InlineList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ChannelFlowOperator extends ChannelFlow {
    public final Flow flow;

    public ChannelFlowOperator(int i, CoroutineContext coroutineContext, BufferOverflow bufferOverflow, Flow flow) {
        super(coroutineContext, i, bufferOverflow);
        this.flow = flow;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        if (this.capacity == -3) {
            CoroutineContext context = continuation.getContext();
            Boolean bool = Boolean.FALSE;
            CoroutineContextKt$$ExternalSyntheticLambda0 coroutineContextKt$$ExternalSyntheticLambda0 = new CoroutineContextKt$$ExternalSyntheticLambda0(0);
            CoroutineContext coroutineContext = this.context;
            CoroutineContext plus = !((Boolean) coroutineContext.fold(bool, coroutineContextKt$$ExternalSyntheticLambda0)).booleanValue() ? context.plus(coroutineContext) : AwaitKt.foldCopies(context, coroutineContext, false);
            if (Intrinsics.areEqual(plus, context)) {
                Object flowCollect = flowCollect(flowCollector, continuation);
                if (flowCollect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return flowCollect;
                }
            } else {
                ContinuationInterceptor$Key continuationInterceptor$Key = ContinuationInterceptor$Key.$$INSTANCE;
                if (Intrinsics.areEqual(plus.get(continuationInterceptor$Key), context.get(continuationInterceptor$Key))) {
                    CoroutineContext context2 = continuation.getContext();
                    if (!(flowCollector instanceof SendingCollector) && !(flowCollector instanceof NopCollector)) {
                        flowCollector = new FlowExtKt$simpleScan$1.AnonymousClass1(flowCollector, context2);
                    }
                    Object withContextUndispatched = CombineKt.withContextUndispatched(plus, flowCollector, InlineList.threadContextElements(plus), new PageFetcher$flow$1(25, this, (Continuation) null), continuation);
                    if (withContextUndispatched == CoroutineSingletons.COROUTINE_SUSPENDED) {
                        return withContextUndispatched;
                    }
                }
            }
            return Unit.INSTANCE;
        }
        Object collect = super.collect(flowCollector, continuation);
        if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
            return collect;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object collectTo(ProducerCoroutine producerCoroutine, Continuation continuation) {
        Object flowCollect = flowCollect(new SendingCollector(producerCoroutine), continuation);
        return flowCollect == CoroutineSingletons.COROUTINE_SUSPENDED ? flowCollect : Unit.INSTANCE;
    }

    public abstract Object flowCollect(FlowCollector flowCollector, Continuation continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String toString() {
        return this.flow + " -> " + super.toString();
    }
}
