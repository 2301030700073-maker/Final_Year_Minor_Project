package com.fsck.k9.notification;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleMessageNotificationCreator$createSingleNotification$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ BaseNotificationData $baseNotificationData;
    public final /* synthetic */ boolean $isGroupSummary;
    public final /* synthetic */ SingleNotificationData $singleNotificationData;
    public int I$0;
    public LegacyAccountDto L$0;
    public NotificationContent L$1;
    public SingleMessageNotificationCreator L$2;
    public SingleMessageNotificationCreator L$3;
    public SingleMessageNotificationCreator L$4;
    public SingleMessageNotificationCreator L$5;
    public int label;
    public final /* synthetic */ SingleMessageNotificationCreator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleMessageNotificationCreator$createSingleNotification$1(BaseNotificationData baseNotificationData, SingleNotificationData singleNotificationData, SingleMessageNotificationCreator singleMessageNotificationCreator, boolean z, Continuation continuation) {
        super(2, continuation);
        this.$baseNotificationData = baseNotificationData;
        this.$singleNotificationData = singleNotificationData;
        this.this$0 = singleMessageNotificationCreator;
        this.$isGroupSummary = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SingleMessageNotificationCreator$createSingleNotification$1(this.$baseNotificationData, this.$singleNotificationData, this.this$0, this.$isGroupSummary, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SingleMessageNotificationCreator$createSingleNotification$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0281  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r31) {
        /*
            Method dump skipped, instructions count: 1244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.notification.SingleMessageNotificationCreator$createSingleNotification$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
