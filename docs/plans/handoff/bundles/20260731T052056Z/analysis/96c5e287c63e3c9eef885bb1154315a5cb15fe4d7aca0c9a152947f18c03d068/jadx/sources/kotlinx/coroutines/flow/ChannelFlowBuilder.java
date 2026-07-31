package kotlinx.coroutines.flow;

import androidx.compose.ui.unit.DpKt;
import androidx.paging.PageFetcher$flow$1;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.SendingCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ChannelFlowBuilder extends ChannelFlow {
    public final /* synthetic */ int $r8$classId;
    public final Object block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ChannelFlowBuilder(Object obj, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2) {
        super(coroutineContext, i, bufferOverflow);
        this.$r8$classId = i2;
        this.block = obj;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(ProducerCoroutine producerCoroutine, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.block;
        switch (i) {
            case 0:
                Object invoke = ((Function2) obj).invoke(producerCoroutine, continuation);
                return invoke == CoroutineSingletons.COROUTINE_SUSPENDED ? invoke : unit;
            default:
                SendingCollector sendingCollector = new SendingCollector(producerCoroutine);
                Iterator it = ((Iterable) obj).iterator();
                while (it.hasNext()) {
                    AwaitKt.launch$default(producerCoroutine, null, null, new PageFetcher$flow$1((Flow) it.next(), sendingCollector, null, 26), 3);
                }
                return unit;
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public ChannelFlow create(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        int i2 = this.$r8$classId;
        Object obj = this.block;
        switch (i2) {
            case 0:
                return new ChannelFlowBuilder((Function2) obj, coroutineContext, i, bufferOverflow, 0);
            default:
                return new ChannelFlowBuilder((Iterable) obj, coroutineContext, i, bufferOverflow, 1);
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Channel produceImpl(CoroutineScope coroutineScope) {
        switch (this.$r8$classId) {
            case 1:
                Function2 pageFetcher$flow$1 = new PageFetcher$flow$1(24, this, (Continuation) null);
                BufferOverflow bufferOverflow = BufferOverflow.SUSPEND;
                CoroutineStart coroutineStart = CoroutineStart.DEFAULT;
                ProducerCoroutine producerCoroutine = new ProducerCoroutine(AwaitKt.newCoroutineContext(coroutineScope, this.context), DpKt.Channel$default(this.capacity, 4, bufferOverflow));
                producerCoroutine.start(coroutineStart, producerCoroutine, pageFetcher$flow$1);
                return producerCoroutine;
            default:
                return super.produceImpl(coroutineScope);
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return "block[" + ((Function2) this.block) + "] -> " + super.toString();
            default:
                return super.toString();
        }
    }
}
