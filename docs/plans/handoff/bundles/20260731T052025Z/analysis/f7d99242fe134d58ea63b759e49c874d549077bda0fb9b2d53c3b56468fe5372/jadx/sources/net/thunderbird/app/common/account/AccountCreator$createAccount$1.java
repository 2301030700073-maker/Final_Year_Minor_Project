package net.thunderbird.app.common.account;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountCreator$createAccount$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ AccountCreator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountCreator$createAccount$1(AccountCreator accountCreator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = accountCreator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.createAccount(null, this);
    }
}
