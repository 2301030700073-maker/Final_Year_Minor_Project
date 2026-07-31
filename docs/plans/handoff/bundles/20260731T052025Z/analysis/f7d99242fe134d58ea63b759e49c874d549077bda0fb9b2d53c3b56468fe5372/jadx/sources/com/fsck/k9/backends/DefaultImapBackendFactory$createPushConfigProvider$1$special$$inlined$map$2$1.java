package com.fsck.k9.backends;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* loaded from: classes.dex */
public final class DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$2$1(DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1 defaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1, Continuation continuation) {
        super(continuation);
        this.this$0 = defaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
