package io.ktor.utils.io;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: ByteBufferChannel.kt */
/* loaded from: classes.dex */
final class ByteBufferChannel$readSuspendImpl$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ByteBufferChannel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ByteBufferChannel$readSuspendImpl$1(ByteBufferChannel byteBufferChannel, Continuation continuation) {
        super(continuation);
        this.this$0 = byteBufferChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object readSuspendImpl;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        readSuspendImpl = this.this$0.readSuspendImpl(0, this);
        return readSuspendImpl;
    }
}
