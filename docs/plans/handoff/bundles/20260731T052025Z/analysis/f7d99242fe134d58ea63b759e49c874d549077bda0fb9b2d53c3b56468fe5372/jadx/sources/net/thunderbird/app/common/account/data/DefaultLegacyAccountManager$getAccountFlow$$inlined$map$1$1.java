package net.thunderbird.app.common.account.data;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* loaded from: classes.dex */
public final class DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DefaultLegacyAccountManager$getAll$$inlined$map$1 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$1(DefaultLegacyAccountManager$getAll$$inlined$map$1 defaultLegacyAccountManager$getAll$$inlined$map$1, Continuation continuation) {
        super(continuation);
        this.this$0 = defaultLegacyAccountManager$getAll$$inlined$map$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.collect(null, this);
    }
}
