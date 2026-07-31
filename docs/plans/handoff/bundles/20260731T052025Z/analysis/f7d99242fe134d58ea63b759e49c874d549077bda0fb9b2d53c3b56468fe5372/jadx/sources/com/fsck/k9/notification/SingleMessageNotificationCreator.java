package com.fsck.k9.notification;

import android.app.Application;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingleMessageNotificationCreator {
    public final K9NotificationActionCreator actionCreator;
    public final Application application;
    public final LockScreenNotificationCreator lockScreenNotificationCreator;
    public final NotificationHelper notificationHelper;
    public final DefaultNotificationPreferenceManager notificationPreferenceManager;
    public final K9NotificationResourceProvider resourceProvider;
    public final ContextScope scope;

    public SingleMessageNotificationCreator(NotificationHelper notificationHelper, K9NotificationActionCreator k9NotificationActionCreator, K9NotificationResourceProvider k9NotificationResourceProvider, LockScreenNotificationCreator lockScreenNotificationCreator, DefaultNotificationPreferenceManager defaultNotificationPreferenceManager, Application application) {
        this.notificationHelper = notificationHelper;
        this.actionCreator = k9NotificationActionCreator;
        this.resourceProvider = k9NotificationResourceProvider;
        this.lockScreenNotificationCreator = lockScreenNotificationCreator;
        this.notificationPreferenceManager = defaultNotificationPreferenceManager;
        this.application = application;
        SupervisorJobImpl SupervisorJob$default = JobKt.SupervisorJob$default();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        this.scope = JobKt.CoroutineScope(UuidKt.plus(SupervisorJob$default, MainDispatcherLoader.dispatcher.immediate));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$setAvatar(com.fsck.k9.notification.SingleMessageNotificationCreator r4, androidx.core.app.NotificationCompat$Builder r5, com.fsck.k9.notification.NotificationContent r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof com.fsck.k9.notification.SingleMessageNotificationCreator$setAvatar$1
            if (r0 == 0) goto L13
            r0 = r7
            com.fsck.k9.notification.SingleMessageNotificationCreator$setAvatar$1 r0 = (com.fsck.k9.notification.SingleMessageNotificationCreator$setAvatar$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.fsck.k9.notification.SingleMessageNotificationCreator$setAvatar$1 r0 = new com.fsck.k9.notification.SingleMessageNotificationCreator$setAvatar$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L30
            if (r1 != r2) goto L2a
            androidx.core.app.NotificationCompat$Builder r5 = r0.L$3
            androidx.core.app.NotificationCompat$Builder r6 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5c
        L2a:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            net.thunderbird.core.preference.notification.DefaultNotificationPreferenceManager r7 = r4.notificationPreferenceManager
            java.lang.Object r7 = r7.getConfig()
            net.thunderbird.core.preference.notification.NotificationPreference r7 = (net.thunderbird.core.preference.notification.NotificationPreference) r7
            boolean r7 = r7.isShowContactPictureInNotification
            if (r7 == 0) goto Lc7
            com.fsck.k9.mail.Address r6 = r6.sender
            r0.L$2 = r5
            r0.L$3 = r5
            r0.label = r2
            kotlinx.coroutines.scheduling.DefaultScheduler r7 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r7 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            androidx.camera.camera2.pipe.core.WakeLock$release$2 r1 = new androidx.camera.camera2.pipe.core.WakeLock$release$2
            r2 = 12
            r1.<init>(r6, r3, r2)
            java.lang.Object r7 = kotlinx.coroutines.JobKt.withContext(r7, r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r6) goto L5b
            return r6
        L5b:
            r6 = r5
        L5c:
            android.graphics.Bitmap r7 = (android.graphics.Bitmap) r7
            if (r7 == 0) goto Lc6
            androidx.core.graphics.drawable.IconCompat r0 = new androidx.core.graphics.drawable.IconCompat
            r1 = 5
            r0.<init>(r1)
            r0.mObj1 = r7
            android.app.Application r4 = r4.application
            android.graphics.drawable.Icon r4 = r0.toIcon(r4)
            if (r4 != 0) goto L71
            goto Lc4
        L71:
            r5.getClass()
            int r7 = androidx.compose.ui.unit.IntRectKt.getType(r4)
            r0 = 2
            if (r7 == r0) goto Lb7
            r0 = 4
            if (r7 == r0) goto La1
            r0 = 6
            if (r7 == r0) goto L8b
            androidx.core.graphics.drawable.IconCompat r7 = new androidx.core.graphics.drawable.IconCompat
            r0 = -1
            r7.<init>(r0)
            r7.mObj1 = r4
        L89:
            r3 = r7
            goto Lc4
        L8b:
            android.net.Uri r4 = androidx.compose.ui.unit.IntRectKt.getUri(r4)
            r4.getClass()
            java.lang.String r4 = r4.toString()
            r4.getClass()
            androidx.core.graphics.drawable.IconCompat r7 = new androidx.core.graphics.drawable.IconCompat
            r7.<init>(r0)
            r7.mObj1 = r4
            goto L89
        La1:
            android.net.Uri r4 = androidx.compose.ui.unit.IntRectKt.getUri(r4)
            r4.getClass()
            java.lang.String r4 = r4.toString()
            r4.getClass()
            androidx.core.graphics.drawable.IconCompat r7 = new androidx.core.graphics.drawable.IconCompat
            r7.<init>(r0)
            r7.mObj1 = r4
            goto L89
        Lb7:
            java.lang.String r7 = androidx.compose.ui.unit.IntRectKt.getResPackage(r4)
            int r4 = androidx.compose.ui.unit.IntRectKt.getResId(r4)
            androidx.core.graphics.drawable.IconCompat r4 = androidx.core.graphics.drawable.IconCompat.createWithResource(r3, r7, r4)
            r3 = r4
        Lc4:
            r5.mLargeIcon = r3
        Lc6:
            return r6
        Lc7:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.notification.SingleMessageNotificationCreator.access$setAvatar(com.fsck.k9.notification.SingleMessageNotificationCreator, androidx.core.app.NotificationCompat$Builder, com.fsck.k9.notification.NotificationContent, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
