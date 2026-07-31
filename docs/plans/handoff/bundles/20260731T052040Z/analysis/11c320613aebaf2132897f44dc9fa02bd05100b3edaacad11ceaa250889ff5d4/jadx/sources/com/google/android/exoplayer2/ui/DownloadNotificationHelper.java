package com.google.android.exoplayer2.ui;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import com.google.android.exoplayer2.offline.Download;
import com.google.android.exoplayer2.util.Util;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class DownloadNotificationHelper {
    private static final int NULL_STRING_ID = 0;
    private final NotificationCompat$Builder notificationBuilder;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Api31 {
        private Api31() {
        }

        public static void setForegroundServiceBehavior(NotificationCompat$Builder notificationCompat$Builder) {
            notificationCompat$Builder.mFgsDeferBehavior = 1;
        }
    }

    public DownloadNotificationHelper(Context context, String str) {
        this.notificationBuilder = new NotificationCompat$Builder(context.getApplicationContext(), str);
    }

    private Notification buildEndStateNotification(Context context, int i, PendingIntent pendingIntent, String str, int i2) {
        return buildNotification(context, i, pendingIntent, str, i2, 0, 0, false, false, true);
    }

    private Notification buildNotification(Context context, int i, PendingIntent pendingIntent, String str, int i2, int i3, int i4, boolean z, boolean z2, boolean z3) {
        NotificationCompat$Builder notificationCompat$Builder = this.notificationBuilder;
        notificationCompat$Builder.mNotification.icon = i;
        NotificationCompat$InboxStyle notificationCompat$InboxStyle = null;
        notificationCompat$Builder.setContentTitle(i2 == 0 ? null : context.getResources().getString(i2));
        NotificationCompat$Builder notificationCompat$Builder2 = this.notificationBuilder;
        notificationCompat$Builder2.mContentIntent = pendingIntent;
        if (str != null) {
            notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
            notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(str);
        }
        notificationCompat$Builder2.setStyle(notificationCompat$InboxStyle);
        this.notificationBuilder.setProgress(i3, i4, z);
        this.notificationBuilder.setFlag(2, z2);
        NotificationCompat$Builder notificationCompat$Builder3 = this.notificationBuilder;
        notificationCompat$Builder3.mShowWhen = z3;
        if (Util.SDK_INT >= 31) {
            Api31.setForegroundServiceBehavior(notificationCompat$Builder3);
        }
        return this.notificationBuilder.build();
    }

    public Notification buildDownloadCompletedNotification(Context context, int i, PendingIntent pendingIntent, String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, com.google.android.exoplayer2.core.R.string.exo_download_completed);
    }

    public Notification buildDownloadFailedNotification(Context context, int i, PendingIntent pendingIntent, String str) {
        return buildEndStateNotification(context, i, pendingIntent, str, com.google.android.exoplayer2.core.R.string.exo_download_failed);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.app.Notification buildProgressNotification(android.content.Context r22, int r23, android.app.PendingIntent r24, java.lang.String r25, java.util.List<com.google.android.exoplayer2.offline.Download> r26, int r27) {
        /*
            r21 = this;
            r0 = 0
            r1 = 0
            r2 = 1
            r3 = r1
            r4 = r3
            r5 = r4
            r6 = r5
            r7 = r6
            r8 = r7
            r9 = r2
        La:
            int r10 = r26.size()
            if (r3 >= r10) goto L4a
            r10 = r26
            java.lang.Object r11 = r10.get(r3)
            com.google.android.exoplayer2.offline.Download r11 = (com.google.android.exoplayer2.offline.Download) r11
            int r12 = r11.state
            if (r12 == 0) goto L46
            r13 = 2
            if (r12 == r13) goto L28
            r13 = 5
            if (r12 == r13) goto L26
            r13 = 7
            if (r12 == r13) goto L28
            goto L47
        L26:
            r7 = r2
            goto L47
        L28:
            float r4 = r11.getPercentDownloaded()
            r12 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r12 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1))
            if (r12 == 0) goto L34
            float r0 = r0 + r4
            r9 = r1
        L34:
            long r11 = r11.getBytesDownloaded()
            r13 = 0
            int r4 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r4 <= 0) goto L40
            r4 = r2
            goto L41
        L40:
            r4 = r1
        L41:
            r6 = r6 | r4
            int r8 = r8 + 1
            r4 = r2
            goto L47
        L46:
            r5 = r2
        L47:
            int r3 = r3 + 1
            goto La
        L4a:
            if (r4 == 0) goto L51
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_downloading
        L4e:
            r15 = r3
        L4f:
            r3 = r2
            goto L6f
        L51:
            if (r5 == 0) goto L68
            if (r27 == 0) goto L68
            r3 = r27 & 2
            if (r3 == 0) goto L5e
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_paused_for_wifi
        L5b:
            r15 = r3
            r3 = r1
            goto L6f
        L5e:
            r3 = r27 & 1
            if (r3 == 0) goto L65
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_paused_for_network
            goto L5b
        L65:
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_paused
            goto L5b
        L68:
            if (r7 == 0) goto L6d
            int r3 = com.google.android.exoplayer2.core.R.string.exo_download_removing
            goto L4e
        L6d:
            r15 = r1
            goto L4f
        L6f:
            if (r3 == 0) goto L89
            r3 = 100
            if (r4 == 0) goto L84
            float r4 = (float) r8
            float r0 = r0 / r4
            int r0 = (int) r0
            if (r9 == 0) goto L7d
            if (r6 == 0) goto L7d
            r1 = r2
        L7d:
            r17 = r0
            r18 = r1
        L81:
            r16 = r3
            goto L8f
        L84:
            r17 = r1
            r18 = r2
            goto L81
        L89:
            r16 = r1
            r17 = r16
            r18 = r17
        L8f:
            r19 = 1
            r20 = 0
            r10 = r21
            r11 = r22
            r12 = r23
            r13 = r24
            r14 = r25
            android.app.Notification r0 = r10.buildNotification(r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.DownloadNotificationHelper.buildProgressNotification(android.content.Context, int, android.app.PendingIntent, java.lang.String, java.util.List, int):android.app.Notification");
    }

    @Deprecated
    public Notification buildProgressNotification(Context context, int i, PendingIntent pendingIntent, String str, List<Download> list) {
        return buildProgressNotification(context, i, pendingIntent, str, list, 0);
    }
}
