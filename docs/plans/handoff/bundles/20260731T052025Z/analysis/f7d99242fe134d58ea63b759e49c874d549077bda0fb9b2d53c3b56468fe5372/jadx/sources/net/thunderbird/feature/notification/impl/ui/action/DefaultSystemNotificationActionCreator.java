package net.thunderbird.feature.notification.impl.ui.action;

import java.util.List;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultSystemNotificationActionCreator {
    public final List actionIntentCreators;

    public DefaultSystemNotificationActionCreator(Logger logger, List list) {
        this.actionIntentCreators = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object create(net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification r5, net.thunderbird.feature.notification.api.ui.action.NotificationAction r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator$create$1
            if (r0 == 0) goto L13
            r0 = r7
            net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator$create$1 r0 = (net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator$create$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator$create$1 r0 = new net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator$create$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            if (r1 != r2) goto L2a
            java.lang.Integer r4 = r0.L$3
            android.app.PendingIntent r5 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L67
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.List r4 = r4.actionIntentCreators
            java.util.Iterator r4 = r4.iterator()
        L39:
            boolean r7 = r4.hasNext()
            if (r7 == 0) goto L6f
            java.lang.Object r7 = r4.next()
            net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator r7 = (net.thunderbird.feature.notification.impl.intent.action.NotificationActionIntentCreator) r7
            boolean r1 = r7.accept(r5, r6)
            if (r1 == 0) goto L39
            android.app.PendingIntent r5 = r7.create(r5, r6)
            net.thunderbird.feature.notification.api.ui.icon.NotificationIcon r4 = r6.getIcon()
            if (r4 == 0) goto L57
            java.lang.Integer r3 = r4.systemNotificationIcon
        L57:
            r0.L$2 = r5
            r0.L$3 = r3
            r0.label = r2
            java.lang.Object r7 = net.thunderbird.feature.notification.api.ui.action.NotificationAction.resolveTitle$suspendImpl(r6, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r4) goto L66
            return r4
        L66:
            r4 = r3
        L67:
            java.lang.String r7 = (java.lang.String) r7
            net.thunderbird.feature.notification.impl.ui.action.AndroidNotificationAction r6 = new net.thunderbird.feature.notification.impl.ui.action.AndroidNotificationAction
            r6.<init>(r4, r7, r5)
            return r6
        L6f:
            java.lang.String r4 = "Collection contains no element matching the predicate."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator.create(net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification, net.thunderbird.feature.notification.api.ui.action.NotificationAction, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
