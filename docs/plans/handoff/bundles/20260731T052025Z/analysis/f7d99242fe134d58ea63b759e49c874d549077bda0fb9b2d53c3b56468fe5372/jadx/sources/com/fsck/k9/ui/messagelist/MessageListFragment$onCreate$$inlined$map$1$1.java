package com.fsck.k9.ui.messagelist;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.SafeFlow;

/* loaded from: classes.dex */
public final class MessageListFragment$onCreate$$inlined$map$1$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SafeFlow this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageListFragment$onCreate$$inlined$map$1$1(SafeFlow safeFlow, Continuation continuation) {
        super(continuation);
        this.this$0 = safeFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
