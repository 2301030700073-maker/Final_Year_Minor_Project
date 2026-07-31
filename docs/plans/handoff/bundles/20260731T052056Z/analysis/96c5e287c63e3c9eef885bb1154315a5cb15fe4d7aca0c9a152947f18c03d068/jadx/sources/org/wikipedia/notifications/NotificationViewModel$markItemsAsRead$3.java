package org.wikipedia.notifications;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationViewModel$markItemsAsRead$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ List $items;
    public final /* synthetic */ boolean $markUnread;
    public int I$0;
    public int I$1;
    public NotificationViewModel L$1;
    public Collection L$3;
    public Iterator L$4;
    public Collection L$7;
    public boolean Z$0;
    public int label;
    public final /* synthetic */ NotificationViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationViewModel$markItemsAsRead$3(NotificationViewModel notificationViewModel, List list, boolean z, Continuation continuation) {
        super(2, continuation);
        this.this$0 = notificationViewModel;
        this.$items = list;
        this.$markUnread = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NotificationViewModel$markItemsAsRead$3(this.this$0, this.$items, this.$markUnread, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NotificationViewModel$markItemsAsRead$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0114  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x010b -> B:11:0x010e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.notifications.NotificationViewModel$markItemsAsRead$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
