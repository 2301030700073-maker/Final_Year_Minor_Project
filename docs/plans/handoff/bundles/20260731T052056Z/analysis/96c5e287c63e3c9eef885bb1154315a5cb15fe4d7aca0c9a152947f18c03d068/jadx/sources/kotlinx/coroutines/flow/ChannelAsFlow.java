package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChannelAsFlow extends ChannelFlow {
    public static final /* synthetic */ AtomicIntegerFieldUpdater consumed$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(ChannelAsFlow.class, "consumed$volatile");
    public final Channel channel;
    public final boolean consume;
    private volatile /* synthetic */ int consumed$volatile;

    public /* synthetic */ ChannelAsFlow(Channel channel, boolean z) {
        this(channel, z, EmptyCoroutineContext.INSTANCE, -3, BufferOverflow.SUSPEND);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final String additionalToStringProps() {
        return "channel=" + this.channel;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        if (this.capacity == -3) {
            boolean z = this.consume;
            if (z && consumed$volatile$FU.getAndSet(this, 1) == 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ReceiveChannel.consumeAsFlow can be collected just once");
                return null;
            }
            Object emitAllImpl$FlowKt__ChannelsKt = StateFlowKt.emitAllImpl$FlowKt__ChannelsKt(flowCollector, this.channel, z, continuation);
            if (emitAllImpl$FlowKt__ChannelsKt == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return emitAllImpl$FlowKt__ChannelsKt;
            }
        } else {
            Object collect = super.collect(flowCollector, continuation);
            if (collect == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return collect;
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object collectTo(ProducerCoroutine producerCoroutine, Continuation continuation) {
        Object emitAllImpl$FlowKt__ChannelsKt = StateFlowKt.emitAllImpl$FlowKt__ChannelsKt(new SendingCollector(producerCoroutine), this.channel, this.consume, continuation);
        return emitAllImpl$FlowKt__ChannelsKt == CoroutineSingletons.COROUTINE_SUSPENDED ? emitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final ChannelFlow create(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new ChannelAsFlow(this.channel, this.consume, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Flow dropChannelOperators() {
        return new ChannelAsFlow(this.channel, this.consume);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Channel produceImpl(CoroutineScope coroutineScope) {
        if (!this.consume || consumed$volatile$FU.getAndSet(this, 1) != 1) {
            return this.capacity == -3 ? this.channel : super.produceImpl(coroutineScope);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ReceiveChannel.consumeAsFlow can be collected just once");
        return null;
    }

    public ChannelAsFlow(Channel channel, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.channel = channel;
        this.consume = z;
    }
}
