package app.k9mail.feature.account.oauth.domain.usecase;

import android.content.Intent;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.openid.appauth.AuthorizationResponse;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FinishOAuthSignIn$execute$1 extends ContinuationImpl {
    public Intent L$0;
    public AuthorizationResponse L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ FinishOAuthSignIn this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FinishOAuthSignIn$execute$1(FinishOAuthSignIn finishOAuthSignIn, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = finishOAuthSignIn;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.execute(null, this);
    }
}
