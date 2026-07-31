package net.thunderbird.app.common.account.data;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1;

/* loaded from: classes.dex */
public final class DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DefaultLegacyAccountManager$getAll$$inlined$map$1.AnonymousClass2 this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultLegacyAccountManager$getAccountFlow$$inlined$map$1$2$1(DefaultLegacyAccountManager$getAll$$inlined$map$1.AnonymousClass2 anonymousClass2, Continuation continuation) {
        super(continuation);
        this.this$0 = anonymousClass2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
