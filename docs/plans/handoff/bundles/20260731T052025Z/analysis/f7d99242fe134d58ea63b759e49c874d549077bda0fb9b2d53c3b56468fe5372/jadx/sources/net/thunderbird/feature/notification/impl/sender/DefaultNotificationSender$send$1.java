package net.thunderbird.feature.notification.impl.sender;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.impl.dismisser.DefaultNotificationDismisser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultNotificationSender$send$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Notification $notification;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public Iterator L$3;
    public FlowCollector L$6;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultNotificationSender$send$1(Object obj, Notification notification, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$notification = notification;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Notification notification = this.$notification;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                DefaultNotificationSender$send$1 defaultNotificationSender$send$1 = new DefaultNotificationSender$send$1((DefaultNotificationSender) obj2, notification, continuation, 0);
                defaultNotificationSender$send$1.L$0 = obj;
                return defaultNotificationSender$send$1;
            default:
                DefaultNotificationSender$send$1 defaultNotificationSender$send$12 = new DefaultNotificationSender$send$1((DefaultNotificationDismisser) obj2, notification, continuation, 1);
                defaultNotificationSender$send$12.L$0 = obj;
                return defaultNotificationSender$send$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FlowCollector flowCollector = (FlowCollector) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((DefaultNotificationSender$send$1) create(flowCollector, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0115, code lost:
    
        if (r13.emit(r3, r19) != r6) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00e4, code lost:
    
        if (r5.emit(r1, r19) == r6) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01c1, code lost:
    
        if (r12.emit(r1, r19) == r6) goto L74;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0115 -> B:14:0x00ec). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x01f7 -> B:47:0x01c9). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.sender.DefaultNotificationSender$send$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
