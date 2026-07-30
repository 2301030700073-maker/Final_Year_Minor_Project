package defpackage;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import androidx.browser.trusted.TrustedWebActivityService;

/* renamed from: bv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0779bv {
    /* renamed from: do, reason: not valid java name */
    public static Notification m4866do(TrustedWebActivityService trustedWebActivityService, NotificationManager notificationManager, Notification notification, String str, String str2) {
        notificationManager.createNotificationChannel(new NotificationChannel(str, str2, 3));
        if (notificationManager.getNotificationChannel(str).getImportance() == 0) {
            return null;
        }
        Notification.Builder recoverBuilder = Notification.Builder.recoverBuilder(trustedWebActivityService, notification);
        recoverBuilder.setChannelId(str);
        return recoverBuilder.build();
    }
}
