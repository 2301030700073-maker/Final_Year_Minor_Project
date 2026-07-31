package com.fsck.k9.notification;

import androidx.core.app.NotificationCompat$Builder;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleMessageNotificationCreator$setAvatar$1 extends ContinuationImpl {
    public NotificationCompat$Builder L$2;
    public NotificationCompat$Builder L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SingleMessageNotificationCreator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleMessageNotificationCreator$setAvatar$1(SingleMessageNotificationCreator singleMessageNotificationCreator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = singleMessageNotificationCreator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SingleMessageNotificationCreator.access$setAvatar(this.this$0, null, null, this);
    }
}
