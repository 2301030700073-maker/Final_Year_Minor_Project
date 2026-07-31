package androidx.paging;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SimpleProducerScopeImpl implements CoroutineScope, SendChannel {
    public final /* synthetic */ CoroutineScope $$delegate_0;
    public final BufferedChannel channel;

    public SimpleProducerScopeImpl(CoroutineScope coroutineScope, BufferedChannel bufferedChannel) {
        coroutineScope.getClass();
        this.$$delegate_0 = coroutineScope;
        this.channel = bufferedChannel;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.$$delegate_0.getCoroutineContext();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object send(Object obj, Continuation continuation) {
        return this.channel.send(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public final Object mo757trySendJP2dKIU(Object obj) {
        return this.channel.mo757trySendJP2dKIU(Unit.INSTANCE);
    }
}
