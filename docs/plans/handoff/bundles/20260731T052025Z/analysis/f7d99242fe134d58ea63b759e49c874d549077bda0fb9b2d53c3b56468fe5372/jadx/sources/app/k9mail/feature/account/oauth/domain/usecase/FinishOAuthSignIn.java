package app.k9mail.feature.account.oauth.domain.usecase;

import app.k9mail.feature.account.oauth.data.AuthorizationRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FinishOAuthSignIn {
    public final AuthorizationRepository repository;

    public FinishOAuthSignIn(AuthorizationRepository authorizationRepository) {
        this.repository = authorizationRepository;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:0|1|(2:3|(8:5|6|(1:(1:(1:(2:11|12)(2:14|15))(3:16|17|(2:19|(1:21)(1:22))(1:(2:24|25)(2:26|27))))(1:28))(3:37|38|39)|29|30|31|(3:33|17|(0)(0))|21))|44|6|(0)(0)|29|30|31|(0)|21|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0066, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0067, code lost:
    
        net.thunderbird.core.logging.legacy.Log.e(r10, "Error deserializing AuthorizationException", new java.lang.Object[0]);
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0056, code lost:
    
        if (r11 != r7) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object execute(android.content.Intent r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn$execute$1
            if (r0 == 0) goto L13
            r0 = r11
            app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn$execute$1 r0 = (app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn$execute$1 r0 = new app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn$execute$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L41
            if (r1 == r5) goto L3b
            if (r1 == r4) goto L35
            if (r1 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r11)
            return r11
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            return r6
        L35:
            net.openid.appauth.AuthorizationResponse r10 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r11)
            goto L75
        L3b:
            android.content.Intent r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L59
        L41:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r10
            r0.label = r5
            net.openid.appauth.AuthorizationResponse r11 = net.openid.appauth.AuthorizationResponse.fromIntent(r10)     // Catch: java.lang.IllegalArgumentException -> L4d
            goto L56
        L4d:
            r11 = move-exception
            java.lang.String r1 = "Error deserializing AuthorizationResponse"
            java.lang.Object[] r5 = new java.lang.Object[r2]
            net.thunderbird.core.logging.legacy.Log.e(r11, r1, r5)
            r11 = r6
        L56:
            if (r11 != r7) goto L59
            goto La2
        L59:
            net.openid.appauth.AuthorizationResponse r11 = (net.openid.appauth.AuthorizationResponse) r11
            r0.L$0 = r6
            r0.L$1 = r11
            r0.label = r4
            net.openid.appauth.AuthorizationException r10 = net.openid.appauth.AuthorizationException.fromIntent(r10)     // Catch: java.lang.IllegalArgumentException -> L66
            goto L6f
        L66:
            r10 = move-exception
            java.lang.String r1 = "Error deserializing AuthorizationException"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            net.thunderbird.core.logging.legacy.Log.e(r10, r1, r2)
            r10 = r6
        L6f:
            if (r10 != r7) goto L72
            goto La2
        L72:
            r8 = r11
            r11 = r10
            r10 = r8
        L75:
            net.openid.appauth.AuthorizationException r11 = (net.openid.appauth.AuthorizationException) r11
            if (r10 == 0) goto La4
            r0.L$0 = r6
            r0.L$1 = r6
            r0.label = r3
            kotlin.coroutines.SafeContinuation r11 = new kotlin.coroutines.SafeContinuation
            kotlin.coroutines.Continuation r0 = kotlinx.atomicfu.AtomicFU.intercepted(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.UNDECIDED
            r11.<init>(r0, r1)
            net.openid.appauth.TokenRequest r0 = r10.createTokenExchangeRequest()
            app.k9mail.feature.account.oauth.data.AuthorizationRepository r9 = r9.repository
            net.openid.appauth.AuthorizationService r9 = r9.service
            com.beetstra.jutf7.Base64Util r1 = new com.beetstra.jutf7.Base64Util
            r2 = 11
            r1.<init>(r2, r10, r11)
            r9.performTokenRequest$1(r0, r1)
            java.lang.Object r9 = r11.getOrThrow()
            if (r9 != r7) goto La3
        La2:
            return r7
        La3:
            return r9
        La4:
            if (r11 == 0) goto Lac
            app.k9mail.feature.account.oauth.domain.entity.AuthorizationResult$Failure r9 = new app.k9mail.feature.account.oauth.domain.entity.AuthorizationResult$Failure
            r9.<init>(r11)
            goto Lae
        Lac:
            app.k9mail.feature.account.oauth.domain.entity.AuthorizationResult$Canceled r9 = app.k9mail.feature.account.oauth.domain.entity.AuthorizationResult.Canceled.INSTANCE
        Lae:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn.execute(android.content.Intent, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
