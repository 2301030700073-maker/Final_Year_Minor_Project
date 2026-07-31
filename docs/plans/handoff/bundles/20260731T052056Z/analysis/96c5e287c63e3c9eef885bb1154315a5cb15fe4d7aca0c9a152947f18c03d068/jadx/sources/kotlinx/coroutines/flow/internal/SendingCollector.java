package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.channels.ProducerCoroutine;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SendingCollector implements FlowCollector {
    public final SendChannel channel;

    public SendingCollector(ProducerCoroutine producerCoroutine) {
        this.channel = producerCoroutine;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Object send = this.channel.send(obj, continuation);
        return send == CoroutineSingletons.COROUTINE_SUSPENDED ? send : Unit.INSTANCE;
    }
}
