package org.wikipedia.notifications;

import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationPollBroadcastReceiver$Companion$markRead$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ List $notifications;
    public final /* synthetic */ boolean $unread;
    public final /* synthetic */ WikiSite $wiki;
    public int I$0;
    public String L$0;
    public WikiSite L$2;
    public Iterator L$3;
    public boolean Z$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPollBroadcastReceiver$Companion$markRead$2(WikiSite wikiSite, List list, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$wiki = wikiSite;
        this.$notifications = list;
        this.$unread = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationPollBroadcastReceiver$Companion$markRead$2(this.$wiki, this.$notifications, this.$unread, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationPollBroadcastReceiver$Companion$markRead$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x003c, code lost:
    
        if (r2 == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            r17 = this;
            r0 = r17
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            org.wikipedia.dataclient.WikiSite r3 = r0.$wiki
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L31
            if (r2 == r5) goto L2b
            if (r2 != r4) goto L25
            int r2 = r0.I$0
            boolean r3 = r0.Z$0
            java.util.Iterator r5 = r0.L$3
            org.wikipedia.dataclient.WikiSite r7 = r0.L$2
            java.lang.String r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r18)
            r16 = r8
            r8 = r3
            r3 = r7
            r7 = r16
            goto L55
        L25:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r0)
            return r6
        L2b:
            kotlin.ResultKt.throwOnFailure(r18)
            r2 = r18
            goto L3f
        L31:
            kotlin.ResultKt.throwOnFailure(r18)
            org.wikipedia.csrf.CsrfTokenClient r2 = org.wikipedia.csrf.CsrfTokenClient.INSTANCE
            r0.label = r5
            java.lang.Object r2 = org.wikipedia.csrf.CsrfTokenClient.getToken$default(r3, r0)
            if (r2 != r1) goto L3f
            goto L8f
        L3f:
            java.lang.String r2 = (java.lang.String) r2
            java.util.List r7 = r0.$notifications
            r8 = 50
            java.util.ArrayList r5 = kotlin.collections.CollectionsKt.windowed(r7, r8, r5)
            java.util.Iterator r5 = r5.iterator()
            r7 = 0
            boolean r8 = r0.$unread
            r16 = r7
            r7 = r2
            r2 = r16
        L55:
            boolean r9 = r5.hasNext()
            if (r9 == 0) goto L90
            java.lang.Object r9 = r5.next()
            r10 = r9
            java.util.List r10 = (java.util.List) r10
            r14 = 0
            r15 = 62
            java.lang.String r11 = "|"
            r12 = 0
            r13 = 0
            java.lang.String r9 = kotlin.collections.CollectionsKt.joinToString$default(r10, r11, r12, r13, r14, r15)
            org.wikipedia.dataclient.ServiceFactory r10 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.dataclient.Service r10 = org.wikipedia.dataclient.ServiceFactory.get(r3)
            if (r8 == 0) goto L78
            r11 = r6
            goto L79
        L78:
            r11 = r9
        L79:
            if (r8 == 0) goto L7c
            goto L7d
        L7c:
            r9 = r6
        L7d:
            r0.L$0 = r7
            r0.L$2 = r3
            r0.L$3 = r5
            r0.Z$0 = r8
            r0.I$0 = r2
            r0.label = r4
            java.lang.Object r9 = r10.markRead(r7, r11, r9, r0)
            if (r9 != r1) goto L55
        L8f:
            return r1
        L90:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationPollBroadcastReceiver$Companion$markRead$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
