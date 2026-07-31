package org.wikipedia.util;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.csrf.CsrfTokenClient;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.ServiceFactory;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WikiSite $wikiSite;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1(WikiSite wikiSite, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$wikiSite = wikiSite;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        WikiSite wikiSite = this.$wikiSite;
        switch (i) {
            case 0:
                return new ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1(wikiSite, continuation, 0);
            case 1:
                return new ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1(wikiSite, continuation, 1);
            default:
                return new ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1(wikiSite, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((ThrowableUtil$getBlockMessageHtml$2$userInfoCall$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object token;
        int i = this.$r8$classId;
        WikiSite wikiSite = this.$wikiSite;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory = ServiceFactory.INSTANCE;
                Service service = ServiceFactory.get(wikiSite);
                this.label = 1;
                Object userInfo = service.getUserInfo(this);
                return userInfo == coroutineSingletons ? coroutineSingletons : userInfo;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                CsrfTokenClient csrfTokenClient = CsrfTokenClient.INSTANCE;
                this.label = 1;
                token = CsrfTokenClient.INSTANCE.getToken(wikiSite, "csrf", this);
                return token == coroutineSingletons2 ? coroutineSingletons2 : token;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                ServiceFactory serviceFactory2 = ServiceFactory.INSTANCE;
                Service service2 = ServiceFactory.get(wikiSite);
                this.label = 1;
                Object parsePage = service2.parsePage("MediaWiki:Blockedtext", this);
                return parsePage == coroutineSingletons3 ? coroutineSingletons3 : parsePage;
        }
    }
}
