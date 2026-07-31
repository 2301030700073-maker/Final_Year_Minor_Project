package net.thunderbird.app.common.account;

import app.k9mail.feature.account.common.domain.entity.Account;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountCreator$create$1 extends ContinuationImpl {
    public Account L$0;
    public LegacyAccountDto L$1;
    public LegacyAccountDto L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ AccountCreator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountCreator$create$1(AccountCreator accountCreator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = accountCreator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AccountCreator.access$create(this.this$0, null, this);
    }
}
