package kotlinx.coroutines.channels;

import _COROUTINE.ArtificialStackFramesUnsafe;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ProducerCoroutine extends AbstractCoroutine implements Channel, SendChannel {
    public final BufferedChannel _channel;

    public ProducerCoroutine(CoroutineContext coroutineContext, BufferedChannel bufferedChannel) {
        super(coroutineContext, true);
        this._channel = bufferedChannel;
    }

    @Override // kotlinx.coroutines.JobSupport, kotlinx.coroutines.Job
    public final void cancel(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void cancelInternal(CancellationException cancellationException) {
        this._channel.closeOrCancelImpl(cancellationException, true);
        cancelImpl$kotlinx_coroutines_core(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final FormBody.Builder getOnReceiveCatching() {
        return this._channel.getOnReceiveCatching();
    }

    public final void invokeOnClose(CallsKt$await$2$1 callsKt$await$2$1) {
        Unsafe unsafe;
        Unsafe unsafe2;
        BufferedChannel bufferedChannel = this._channel;
        bufferedChannel.getClass();
        long j = BufferedChannel.closeHandler$volatile$FU$offset;
        do {
            unsafe = ArtificialStackFramesUnsafe.unsafe;
            if (unsafe.compareAndSwapObject(bufferedChannel, BufferedChannel.closeHandler$volatile$FU$offset, (Object) null, callsKt$await$2$1)) {
                return;
            }
        } while (unsafe.getObjectVolatile(bufferedChannel, j) == null);
        while (true) {
            Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(bufferedChannel, j);
            Symbol symbol = BufferedChannelKt.CLOSE_HANDLER_CLOSED;
            if (objectVolatile != symbol) {
                if (objectVolatile == BufferedChannelKt.CLOSE_HANDLER_INVOKED) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Another handler was already registered and successfully invoked");
                    return;
                } else {
                    Gson$$ExternalSyntheticBUOutline0.m$8("Another handler is already registered: ", objectVolatile);
                    return;
                }
            }
            Symbol symbol2 = BufferedChannelKt.CLOSE_HANDLER_INVOKED;
            do {
                unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                if (unsafe2.compareAndSwapObject(bufferedChannel, BufferedChannel.closeHandler$volatile$FU$offset, symbol, symbol2)) {
                    callsKt$await$2$1.invoke(bufferedChannel.getCloseCause());
                    return;
                }
            } while (unsafe2.getObjectVolatile(bufferedChannel, j) == symbol);
        }
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final BufferedChannel.BufferedChannelIterator iterator() {
        BufferedChannel bufferedChannel = this._channel;
        bufferedChannel.getClass();
        return bufferedChannel.new BufferedChannelIterator();
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCancelled(Throwable th, boolean z) {
        if (this._channel.closeOrCancelImpl(th, false) || z) {
            return;
        }
        AwaitKt.handleCoroutineException(th, this.context);
    }

    @Override // kotlinx.coroutines.AbstractCoroutine
    public final void onCompleted(Object obj) {
        this._channel.close(null);
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final Object receive(Continuation continuation) {
        return this._channel.receive(continuation);
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: receiveCatching-JP2dKIU */
    public final Object mo862receiveCatchingJP2dKIU(CombineKt$combineInternal$2 combineKt$combineInternal$2) {
        BufferedChannel bufferedChannel = this._channel;
        bufferedChannel.getClass();
        return BufferedChannel.m861receiveCatchingJP2dKIU$suspendImpl(bufferedChannel, combineKt$combineInternal$2);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final Object send(Object obj, Continuation continuation) {
        return this._channel.send(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: tryReceive-PtdJZtk */
    public final Object mo864tryReceivePtdJZtk() {
        return this._channel.mo864tryReceivePtdJZtk();
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public final Object mo757trySendJP2dKIU(Object obj) {
        return this._channel.mo757trySendJP2dKIU(obj);
    }
}
