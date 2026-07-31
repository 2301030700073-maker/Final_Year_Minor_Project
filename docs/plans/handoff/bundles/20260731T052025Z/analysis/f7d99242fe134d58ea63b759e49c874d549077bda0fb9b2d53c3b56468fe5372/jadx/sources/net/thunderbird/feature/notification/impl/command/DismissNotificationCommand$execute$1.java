package net.thunderbird.feature.notification.impl.command;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DismissNotificationCommand$execute$1 extends ContinuationImpl {
    public int I$0;
    public DismissInAppNotificationCommand L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ DismissInAppNotificationCommand this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DismissNotificationCommand$execute$1(DismissInAppNotificationCommand dismissInAppNotificationCommand, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = dismissInAppNotificationCommand;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DismissInAppNotificationCommand.execute$suspendImpl(this.this$0, this);
    }
}
