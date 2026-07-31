package com.fsck.k9.notification;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.NavUtils;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import androidx.core.app.NotificationManagerCompat;
import com.fsck.k9.R;
import com.fsck.k9.job.MailSyncWorkerManager$$ExternalSyntheticLambda0;
import com.fsck.k9.notification.NotificationChannelManager;
import kotlin.text.StringsKt;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationHelper {
    public final Context context;
    public final GeneralSettingsManager generalSettingsManager;
    public final Logger logger;
    public final NotificationManagerCompat notificationManager;
    public final K9NotificationResourceProvider resourceProvider;

    public NotificationHelper(Context context, NotificationManagerCompat notificationManagerCompat, NotificationChannelManager notificationChannelManager, K9NotificationResourceProvider k9NotificationResourceProvider, GeneralSettingsManager generalSettingsManager, Logger logger) {
        this.context = context;
        this.notificationManager = notificationManagerCompat;
        this.resourceProvider = k9NotificationResourceProvider;
        this.generalSettingsManager = generalSettingsManager;
        this.logger = logger;
    }

    public final NotificationCompat$Builder createNotificationBuilder(LegacyAccountDto legacyAccountDto, NotificationChannelManager.ChannelType channelType) {
        legacyAccountDto.getClass();
        return new NotificationCompat$Builder(this.context, NotificationChannelManager.getChannelIdFor(legacyAccountDto, channelType));
    }

    public final void notify(LegacyAccountDto legacyAccountDto, int i, Notification notification) {
        String message;
        legacyAccountDto.getClass();
        try {
            this.notificationManager.notify(i, notification);
        } catch (SecurityException e) {
            int i2 = Build.VERSION.SDK_INT;
            Logger logger = this.logger;
            int i3 = 1;
            if (i2 >= 26 && (message = e.getMessage()) != null) {
                int i4 = 0;
                if (StringsKt.contains(message, "does not have permission to", false)) {
                    logger.error("NotificationHelper", e, new NotificationHelper$$ExternalSyntheticLambda0(i, i4));
                    Context context = this.resourceProvider.context;
                    String string = context.getString(R.string.notification_notify_error_title);
                    string.getClass();
                    String string2 = context.getString(R.string.notification_notify_error_text);
                    string2.getClass();
                    String channelIdFor = NotificationChannelManager.getChannelIdFor(legacyAccountDto, NotificationChannelManager.ChannelType.MESSAGES);
                    Intent intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
                    intent.putExtra("android.provider.extra.CHANNEL_ID", channelIdFor);
                    Context context2 = this.context;
                    intent.putExtra("android.provider.extra.APP_PACKAGE", context2.getPackageName());
                    PendingIntent activity = NavUtils.getActivity(context2, legacyAccountDto.getAccountNumber(), intent, 0, false);
                    NotificationCompat$Builder createNotificationBuilder = createNotificationBuilder(legacyAccountDto, NotificationChannelManager.ChannelType.MISCELLANEOUS);
                    Notification notification2 = createNotificationBuilder.mNotification;
                    notification2.icon = R.drawable.ic_warning;
                    createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
                    notification2.when = System.currentTimeMillis();
                    createNotificationBuilder.setFlag(16, true);
                    createNotificationBuilder.setTicker(string);
                    createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
                    createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(string2);
                    createNotificationBuilder.mContentIntent = activity;
                    NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
                    notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(string2);
                    createNotificationBuilder.setStyle(notificationCompat$InboxStyle);
                    createNotificationBuilder.mCategory = "err";
                    IntOffsetKt.setErrorAppearance(createNotificationBuilder, this.generalSettingsManager);
                    Notification build = createNotificationBuilder.build();
                    build.getClass();
                    notify((legacyAccountDto.getAccountNumber() * 16) + 9, build);
                    return;
                }
            }
            logger.error("NotificationHelper", e, new MailSyncWorkerManager$$ExternalSyntheticLambda0(legacyAccountDto, i3));
        }
    }

    public final void notify(int i, Notification notification) {
        try {
            this.notificationManager.notify(i, notification);
        } catch (SecurityException e) {
            this.logger.error("NotificationHelper", e, new NotificationHelper$$ExternalSyntheticLambda0(i, 2));
        }
    }
}
