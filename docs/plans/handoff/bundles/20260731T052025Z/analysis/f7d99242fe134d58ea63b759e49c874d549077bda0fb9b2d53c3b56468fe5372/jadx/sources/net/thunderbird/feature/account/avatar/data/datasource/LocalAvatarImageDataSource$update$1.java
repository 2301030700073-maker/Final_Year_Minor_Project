package net.thunderbird.feature.account.avatar.data.datasource;

import com.eygraber.uri.Uri;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalAvatarImageDataSource$update$1 extends ContinuationImpl {
    public AccountId L$0;
    public Uri L$1;
    public String L$3;
    public Uri L$4;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ LocalAvatarImageDataSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalAvatarImageDataSource$update$1(LocalAvatarImageDataSource localAvatarImageDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = localAvatarImageDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.update(null, null, this);
    }
}
