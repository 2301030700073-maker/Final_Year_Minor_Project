package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapMerge$$inlined$map$1;
import kotlinx.coroutines.sync.SemaphoreImpl;
import kotlinx.coroutines.sync.SemaphoreKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ChannelFlowMerge extends ChannelFlow {
    public final FlowKt__MergeKt$flatMapMerge$$inlined$map$1 flow;

    public ChannelFlowMerge(FlowKt__MergeKt$flatMapMerge$$inlined$map$1 flowKt__MergeKt$flatMapMerge$$inlined$map$1, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.flow = flowKt__MergeKt$flatMapMerge$$inlined$map$1;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String additionalToStringProps() {
        return "concurrency=8";
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object collectTo(ProducerScope producerScope, Continuation continuation) {
        int i = SemaphoreKt.MAX_SPIN_CYCLES;
        Object collect = this.flow.collect(new ChannelFlowMerge$collectTo$2((Job) ((ContinuationImpl) continuation).getContext().get(Job.Key.$$INSTANCE), new SemaphoreImpl(8), producerScope, new SendingCollector(producerScope)), continuation);
        return collect == CoroutineSingletons.COROUTINE_SUSPENDED ? collect : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final ChannelFlow create(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new ChannelFlowMerge(this.flow, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final ProducerCoroutine produceImpl(CoroutineScope coroutineScope) {
        Function2 channelFlow$collectToFun$1 = new ChannelFlow$collectToFun$1(this, null);
        ProducerCoroutine producerCoroutine = new ProducerCoroutine(JobKt.newCoroutineContext(coroutineScope, this.context), ProduceKt.Channel$default(this.capacity, 4, BufferOverflow.SUSPEND));
        producerCoroutine.start(CoroutineStart.DEFAULT, producerCoroutine, channelFlow$collectToFun$1);
        return producerCoroutine;
    }
}
