package net.thunderbird.app.common.account.data;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.account.profile.AccountProfile;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAccountProfileLocalDataSource$update$1 extends ContinuationImpl {
    public AccountProfile L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DefaultAccountProfileLocalDataSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultAccountProfileLocalDataSource$update$1(DefaultAccountProfileLocalDataSource defaultAccountProfileLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = defaultAccountProfileLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.update(null, this);
    }
}
