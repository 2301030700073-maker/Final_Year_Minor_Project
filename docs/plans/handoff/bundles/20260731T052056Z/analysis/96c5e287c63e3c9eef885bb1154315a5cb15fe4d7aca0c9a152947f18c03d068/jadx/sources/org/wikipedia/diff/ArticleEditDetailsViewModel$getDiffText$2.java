package org.wikipedia.diff;

import androidx.lifecycle.MutableLiveData;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel$getDiffText$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ long $newRevisionId;
    public final /* synthetic */ long $oldRevisionId;
    public MutableLiveData L$0;
    public int label;
    public final /* synthetic */ ArticleEditDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleEditDetailsViewModel$getDiffText$2(ArticleEditDetailsViewModel articleEditDetailsViewModel, long j, long j2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = articleEditDetailsViewModel;
        this.$oldRevisionId = j;
        this.$newRevisionId = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ArticleEditDetailsViewModel$getDiffText$2(this.this$0, this.$oldRevisionId, this.$newRevisionId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ArticleEditDetailsViewModel$getDiffText$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0094, code lost:
    
        if (r14 == r2) goto L22;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            org.wikipedia.diff.ArticleEditDetailsViewModel r0 = r13.this$0
            androidx.lifecycle.MutableLiveData r1 = r0.singleRevisionText
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r13.label
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L24
            if (r3 == r5) goto L1e
            if (r3 != r4) goto L17
            androidx.lifecycle.MutableLiveData r1 = r13.L$0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L97
        L17:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            r13 = 0
            return r13
        L1e:
            androidx.lifecycle.MutableLiveData r13 = r13.L$0
            kotlin.ResultKt.throwOnFailure(r14)
            goto L76
        L24:
            kotlin.ResultKt.throwOnFailure(r14)
            org.wikipedia.page.PageTitle r14 = r0.pageTitle
            org.wikipedia.dataclient.WikiSite r14 = r14.wikiSite
            android.net.Uri r14 = r14.uri
            java.lang.String r14 = r14.getAuthority()
            java.lang.String r3 = "https://www.wikidata.org/"
            android.net.Uri r3 = android.net.Uri.parse(r3)
            java.lang.String r3 = r3.getAuthority()
            boolean r14 = kotlin.jvm.internal.Intrinsics.areEqual(r14, r3)
            if (r14 == 0) goto L4f
            org.wikipedia.util.Resource$Success r13 = new org.wikipedia.util.Resource$Success
            org.wikipedia.dataclient.restbase.Revision r14 = new org.wikipedia.dataclient.restbase.Revision
            r14.<init>()
            r13.<init>(r14)
            r1.postValue(r13)
            goto L9f
        L4f:
            long r6 = r13.$oldRevisionId
            r8 = 0
            int r14 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r14 <= 0) goto L7f
            androidx.lifecycle.MutableLiveData r14 = r0.diffText
            org.wikipedia.dataclient.ServiceFactory r1 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.page.PageTitle r0 = r0.pageTitle
            org.wikipedia.dataclient.WikiSite r0 = r0.wikiSite
            org.wikipedia.dataclient.CoreRestService r6 = org.wikipedia.dataclient.ServiceFactory.getCoreRest(r0)
            r13.L$0 = r14
            r13.label = r5
            long r7 = r13.$oldRevisionId
            long r9 = r13.$newRevisionId
            r11 = r13
            java.lang.Object r13 = r6.getDiff(r7, r9, r11)
            if (r13 != r2) goto L73
            goto L96
        L73:
            r12 = r14
            r14 = r13
            r13 = r12
        L76:
            org.wikipedia.util.Resource$Success r0 = new org.wikipedia.util.Resource$Success
            r0.<init>(r14)
            r13.postValue(r0)
            goto L9f
        L7f:
            r11 = r13
            org.wikipedia.dataclient.ServiceFactory r13 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.page.PageTitle r13 = r0.pageTitle
            org.wikipedia.dataclient.WikiSite r13 = r13.wikiSite
            org.wikipedia.dataclient.CoreRestService r13 = org.wikipedia.dataclient.ServiceFactory.getCoreRest(r13)
            r11.L$0 = r1
            r11.label = r4
            long r3 = r11.$newRevisionId
            java.lang.Object r14 = r13.getRevision(r3, r11)
            if (r14 != r2) goto L97
        L96:
            return r2
        L97:
            org.wikipedia.util.Resource$Success r13 = new org.wikipedia.util.Resource$Success
            r13.<init>(r14)
            r1.postValue(r13)
        L9f:
            kotlin.Unit r13 = kotlin.Unit.INSTANCE
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.diff.ArticleEditDetailsViewModel$getDiffText$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
