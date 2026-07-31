package net.thunderbird.feature.notification.impl.receiver;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidSystemNotificationNotifier$show$1 extends ContinuationImpl {
    public int I$0;
    public AuthenticationErrorNotification L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ AndroidSystemNotificationNotifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidSystemNotificationNotifier$show$1(AndroidSystemNotificationNotifier androidSystemNotificationNotifier, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = androidSystemNotificationNotifier;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1043showMQcfKRA((AuthenticationErrorNotification) null, (ContinuationImpl) this);
    }
}
