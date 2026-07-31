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
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        int i = this.capacity;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (i == -3) {
            boolean z = this.consume;
            if (z && consumed$volatile$FU.getAndSet(this, 1) == 1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ReceiveChannel.consumeAsFlow can be collected just once");
                return null;
            }
            Object emitAllImpl$FlowKt__ChannelsKt = FlowKt.emitAllImpl$FlowKt__ChannelsKt(flowCollector, this.channel, z, continuation);
            if (emitAllImpl$FlowKt__ChannelsKt == coroutineSingletons) {
                return emitAllImpl$FlowKt__ChannelsKt;
            }
        } else {
            Object collect = super.collect(flowCollector, continuation);
            if (collect == coroutineSingletons) {
                return collect;
            }
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public final Object collectTo(ProducerScope producerScope, Continuation continuation) {
        Object emitAllImpl$FlowKt__ChannelsKt = FlowKt.emitAllImpl$FlowKt__ChannelsKt(new SendingCollector(producerScope), this.channel, this.consume, continuation);
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ReceiveChannel.consumeAsFlow can be collected just once");
        return null;
    }

    public ChannelAsFlow(Channel channel, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.channel = channel;
        this.consume = z;
    }
}
