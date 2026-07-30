package io.ktor.utils.io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: ByteBufferChannel.kt */
/* loaded from: classes.dex */
final class ByteBufferChannel$readAvailableSuspend$3 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ByteBufferChannel$readAvailableSuspend$3(ByteBufferChannel byteBufferChannel, Continuation continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readAvailableSuspend;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readAvailableSuspend = this.this$0.readAvailableSuspend(null, this);
        return readAvailableSuspend;
    }
}
