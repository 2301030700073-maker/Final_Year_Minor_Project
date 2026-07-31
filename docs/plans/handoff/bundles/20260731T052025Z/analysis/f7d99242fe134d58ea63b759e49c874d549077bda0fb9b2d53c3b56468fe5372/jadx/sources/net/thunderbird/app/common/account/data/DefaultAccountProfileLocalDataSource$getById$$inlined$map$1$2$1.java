package net.thunderbird.app.common.account.data;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* loaded from: classes.dex */
public final class DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1(DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2 defaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2, Continuation continuation) {
        super(continuation);
        this.this$0 = defaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
