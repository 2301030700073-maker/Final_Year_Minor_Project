package org.wikipedia.talk;

import android.content.Context;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.DeferredCoroutine;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationDirectReplyHelper$handleReply$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ int $notificationId;
    public final /* synthetic */ String $replyText;
    public final /* synthetic */ PageTitle $title;
    public final /* synthetic */ WikiSite $wiki;
    public int I$0;
    public int I$1;
    public long J$0;
    public /* synthetic */ Object L$0;
    public Deferred L$1;
    public String L$10;
    public String L$11;
    public String L$12;
    public Service L$13;
    public DeferredCoroutine L$2;
    public WikiSite L$4;
    public PageTitle L$5;
    public Context L$6;
    public String L$8;
    public String L$9;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationDirectReplyHelper$handleReply$2(WikiSite wikiSite, PageTitle pageTitle, String str, Context context, int i, Continuation continuation) {
        super(2, continuation);
        this.$wiki = wikiSite;
        this.$title = pageTitle;
        this.$replyText = str;
        this.$context = context;
        this.$notificationId = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NotificationDirectReplyHelper$handleReply$2 notificationDirectReplyHelper$handleReply$2 = new NotificationDirectReplyHelper$handleReply$2(this.$wiki, this.$title, this.$replyText, this.$context, this.$notificationId, continuation);
        notificationDirectReplyHelper$handleReply$2.L$0 = obj;
        return notificationDirectReplyHelper$handleReply$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationDirectReplyHelper$handleReply$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0225, code lost:
    
        if (r5.waitForUpdatedRevision(r3, r2, r4, r8, r6, r7) == r15) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00c6, code lost:
    
        if (r3 == r15) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0196  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.NotificationDirectReplyHelper$handleReply$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
