package net.thunderbird.feature.notification.api.ui.action;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationAction$resolveTitle$1 extends ContinuationImpl {
    public NotificationAction L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ NotificationAction this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationAction$resolveTitle$1(NotificationAction notificationAction, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = notificationAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return NotificationAction.resolveTitle$suspendImpl(this.this$0, this);
    }
}
