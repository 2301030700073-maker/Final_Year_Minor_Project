package net.thunderbird.feature.notification.impl.receiver;

import android.app.Application;
import androidx.core.app.NotificationManagerCompat;
import com.fsck.k9.notification.NotificationHelper$$ExternalSyntheticLambda0;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.api.NotificationRegistry;
import net.thunderbird.feature.notification.api.content.Notification;
import net.thunderbird.feature.notification.api.receiver.NotificationNotifier;
import net.thunderbird.feature.notification.impl.DefaultNotificationRegistry;
import net.thunderbird.feature.notification.impl.ui.action.DefaultSystemNotificationActionCreator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidSystemNotificationNotifier implements NotificationNotifier {
    public final Application applicationContext;
    public final Logger logger;
    public final DefaultSystemNotificationActionCreator notificationActionCreator;
    public final NotificationManagerCompat notificationManager;
    public final NotificationRegistry notificationRegistry;

    public AndroidSystemNotificationNotifier(Logger logger, Application application, NotificationRegistry notificationRegistry, DefaultSystemNotificationActionCreator defaultSystemNotificationActionCreator) {
        this.logger = logger;
        this.applicationContext = application;
        this.notificationRegistry = notificationRegistry;
        this.notificationActionCreator = defaultSystemNotificationActionCreator;
        this.notificationManager = new NotificationManagerCompat(application);
    }

    @Override // net.thunderbird.feature.notification.api.receiver.NotificationNotifier
    /* renamed from: dismiss-XSUv0x4 */
    public final void mo1042dismissXSUv0x4(int i) {
        Sink$CC.debug$default(this.logger, "AndroidSystemNotificationNotifier", null, new NotificationHelper$$ExternalSyntheticLambda0(i, 4), 2);
        this.notificationManager.cancel(i);
        DefaultNotificationRegistry defaultNotificationRegistry = (DefaultNotificationRegistry) this.notificationRegistry;
        Notification m1044getRiqCqwk = defaultNotificationRegistry.m1044getRiqCqwk(i);
        if (m1044getRiqCqwk != null) {
            defaultNotificationRegistry.unregister(m1044getRiqCqwk);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
    
        if (r10 == r5) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // net.thunderbird.feature.notification.api.receiver.NotificationNotifier
    /* renamed from: show-MQcfKRA, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Comparable mo1043showMQcfKRA(net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$show$1
            if (r0 == 0) goto L13
            r0 = r10
            net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$show$1 r0 = (net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$show$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$show$1 r0 = new net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$show$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 2
            r4 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L39
            if (r1 == r4) goto L33
            if (r1 != r3) goto L2d
            int r9 = r0.I$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6c
        L2d:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            return r2
        L33:
            net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification r9 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            goto L58
        L39:
            kotlin.ResultKt.throwOnFailure(r10)
            net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1 r10 = new net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier$$ExternalSyntheticLambda1
            r1 = 0
            r10.<init>(r9, r1)
            net.thunderbird.core.logging.Logger r1 = r8.logger
            java.lang.String r6 = "AndroidSystemNotificationNotifier"
            kotlinx.io.Sink$CC.debug$default(r1, r6, r2, r10, r3)
            r0.L$0 = r9
            r0.label = r4
            net.thunderbird.feature.notification.api.NotificationRegistry r10 = r8.notificationRegistry
            net.thunderbird.feature.notification.impl.DefaultNotificationRegistry r10 = (net.thunderbird.feature.notification.impl.DefaultNotificationRegistry) r10
            java.lang.Comparable r10 = r10.m1046registerMQcfKRA(r9, r0)
            if (r10 != r5) goto L58
            goto L68
        L58:
            net.thunderbird.feature.notification.api.NotificationId r10 = (net.thunderbird.feature.notification.api.NotificationId) r10
            int r10 = r10.value
            r0.L$0 = r2
            r0.I$0 = r10
            r0.label = r3
            java.lang.Object r9 = r8.toAndroidNotification(r9, r0)
            if (r9 != r5) goto L69
        L68:
            return r5
        L69:
            r7 = r10
            r10 = r9
            r9 = r7
        L6c:
            android.app.Notification r10 = (android.app.Notification) r10
            androidx.core.app.NotificationManagerCompat r8 = r8.notificationManager
            r8.notify(r9, r10)
            net.thunderbird.feature.notification.api.NotificationId r8 = new net.thunderbird.feature.notification.api.NotificationId
            r8.<init>(r9)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier.mo1043showMQcfKRA(net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Comparable");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x01d6, code lost:
    
        if (r2 == r10) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x01d6 -> B:12:0x01d9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object toAndroidNotification(net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification r23, kotlin.coroutines.jvm.internal.ContinuationImpl r24) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.impl.receiver.AndroidSystemNotificationNotifier.toAndroidNotification(net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
