package app.k9mail.legacy.mailstore;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFolderRepository$getFolder$1 extends ContinuationImpl {
    public long J$0;
    public AccountId L$0;
    public LegacyAccount L$1;
    public ListenableMessageStore L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DefaultFolderRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultFolderRepository$getFolder$1(DefaultFolderRepository defaultFolderRepository, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = defaultFolderRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getFolder(null, 0L, this);
    }
}
