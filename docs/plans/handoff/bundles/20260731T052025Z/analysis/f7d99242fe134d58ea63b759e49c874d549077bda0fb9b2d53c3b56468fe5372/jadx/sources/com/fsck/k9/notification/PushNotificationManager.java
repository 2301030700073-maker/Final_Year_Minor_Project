package com.fsck.k9.notification;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationManagerCompat;
import app.k9mail.provider.K9AppNotificationIconProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.resources.K9CoreResourceProvider;
import net.thunderbird.core.logging.Logger;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushNotificationManager {
    public final Context context;
    public boolean isForegroundServiceStarted;
    public final Logger logger;
    public final NotificationManagerCompat notificationManager;
    public PushNotificationState notificationState = PushNotificationState.INITIALIZING;
    public final K9CoreResourceProvider resourceProvider;

    public PushNotificationManager(Context context, K9CoreResourceProvider k9CoreResourceProvider, K9AppNotificationIconProvider k9AppNotificationIconProvider, NotificationChannelManager notificationChannelManager, NotificationManagerCompat notificationManagerCompat, Logger logger) {
        this.context = context;
        this.resourceProvider = k9CoreResourceProvider;
        this.notificationManager = notificationManagerCompat;
        this.logger = logger;
    }

    public final Notification createNotification() {
        int i;
        String string;
        Intent intent;
        Context context = this.context;
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context, "push");
        notificationCompat$Builder.mNotification.icon = R.drawable.ic_logo_k9_white;
        Context context2 = this.resourceProvider.context;
        PushNotificationState pushNotificationState = this.notificationState;
        pushNotificationState.getClass();
        int ordinal = pushNotificationState.ordinal();
        if (ordinal == 0) {
            i = R.string.push_notification_state_initializing;
        } else if (ordinal == 1) {
            i = R.string.push_notification_state_listening;
        } else if (ordinal == 2) {
            i = R.string.push_notification_state_wait_background_sync;
        } else if (ordinal == 3) {
            i = R.string.push_notification_state_wait_network;
        } else {
            if (ordinal != 4) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            i = R.string.push_notification_state_alarm_permission_missing;
        }
        String string2 = context2.getString(i);
        string2.getClass();
        notificationCompat$Builder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string2);
        PushNotificationState pushNotificationState2 = this.notificationState;
        PushNotificationState pushNotificationState3 = PushNotificationState.ALARM_PERMISSION_MISSING;
        if (pushNotificationState2 == pushNotificationState3) {
            string = context2.getString(R.string.push_notification_grant_alarm_permission);
            string.getClass();
        } else {
            string = context2.getString(R.string.push_notification_info);
            string.getClass();
        }
        notificationCompat$Builder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(string);
        if (this.notificationState != pushNotificationState3) {
            intent = new Intent("app.k9mail.action.PUSH_INFO");
            intent.addFlags(268435456);
            intent.addFlags(32768);
            intent.setPackage(context.getPackageName());
        } else {
            if (Build.VERSION.SDK_INT < 31) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("ACTION_REQUEST_SCHEDULE_EXACT_ALARM is only available on API 31+");
                return null;
            }
            intent = new Intent("android.settings.REQUEST_SCHEDULE_EXACT_ALARM");
            intent.setData(Uri.parse("package:" + context.getPackageName()));
        }
        PendingIntent activity = NavUtils.getActivity(context, 1, intent, 0, false);
        activity.getClass();
        notificationCompat$Builder.mContentIntent = activity;
        notificationCompat$Builder.setFlag(2, true);
        notificationCompat$Builder.mSilent = true;
        notificationCompat$Builder.mPriority = -2;
        notificationCompat$Builder.mLocalOnly = true;
        notificationCompat$Builder.mShowWhen = false;
        notificationCompat$Builder.mFgsDeferBehavior = 1;
        Notification build = notificationCompat$Builder.build();
        build.getClass();
        return build;
    }
}
