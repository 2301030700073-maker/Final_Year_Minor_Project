package org.wikipedia.login;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LoginClient$login$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ String $captchaId;
    public final /* synthetic */ String $captchaWord;
    public final /* synthetic */ LoginClient.LoginCallback $cb;
    public final /* synthetic */ String $emailAuthCode;
    public final /* synthetic */ Boolean $isContinuation;
    public final /* synthetic */ String $password;
    public final /* synthetic */ String $retypedPassword;
    public final /* synthetic */ String $token;
    public final /* synthetic */ String $twoFactorCode;
    public final /* synthetic */ String $userName;
    public final /* synthetic */ WikiSite $wiki;
    public int I$0;
    public String L$0;
    public Ref$ObjectRef L$1;
    public Ref$ObjectRef L$2;
    public Ref$ObjectRef L$3;
    public int label;
    public final /* synthetic */ LoginClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoginClient$login$2(String str, LoginClient loginClient, WikiSite wikiSite, Boolean bool, String str2, String str3, String str4, String str5, String str6, String str7, String str8, LoginClient.LoginCallback loginCallback, Continuation continuation) {
        super(2, continuation);
        this.$token = str;
        this.this$0 = loginClient;
        this.$wiki = wikiSite;
        this.$isContinuation = bool;
        this.$userName = str2;
        this.$password = str3;
        this.$retypedPassword = str4;
        this.$twoFactorCode = str5;
        this.$emailAuthCode = str6;
        this.$captchaId = str7;
        this.$captchaWord = str8;
        this.$cb = loginCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LoginClient$login$2(this.$token, this.this$0, this.$wiki, this.$isContinuation, this.$userName, this.$password, this.$retypedPassword, this.$twoFactorCode, this.$emailAuthCode, this.$captchaId, this.$captchaWord, this.$cb, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LoginClient$login$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:0x00af, code lost:
    
        if (r0 == r13) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014d, code lost:
    
        if (r1 == r13) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x02a7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x0258 -> B:55:0x025b). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 898
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.login.LoginClient$login$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
