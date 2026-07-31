package org.wikipedia.notifications;

import android.content.Context;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Context $context;
    public final /* synthetic */ Map $dbWikiNameMap;
    public final /* synthetic */ Map $dbWikiSiteMap;
    public final /* synthetic */ List $notifications;
    public int I$0;
    public int I$1;
    public List L$0;
    public Collection L$2;
    public Iterator L$3;
    public Object L$4;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2(List list, Context context, Map map, Map map2, Continuation continuation) {
        super(2, continuation);
        this.$notifications = list;
        this.$context = context;
        this.$dbWikiNameMap = map;
        this.$dbWikiSiteMap = map2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2(this.$notifications, this.$context, this.$dbWikiNameMap, this.$dbWikiSiteMap, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x007b, code lost:
    
        if (r4 == r1) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x029a A[LOOP:0: B:15:0x0139->B:58:0x029a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00be  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x007b -> B:71:0x007e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
