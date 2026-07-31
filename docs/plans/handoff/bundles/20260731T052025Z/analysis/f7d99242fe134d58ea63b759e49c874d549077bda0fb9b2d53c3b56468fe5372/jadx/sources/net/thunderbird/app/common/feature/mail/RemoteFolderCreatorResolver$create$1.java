package net.thunderbird.app.common.feature.mail;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RemoteFolderCreatorResolver$create$1 extends ContinuationImpl {
    public AccountId L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ RemoteFolderCreatorResolver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteFolderCreatorResolver$create$1(RemoteFolderCreatorResolver remoteFolderCreatorResolver, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = remoteFolderCreatorResolver;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.create(null, this);
    }
}
