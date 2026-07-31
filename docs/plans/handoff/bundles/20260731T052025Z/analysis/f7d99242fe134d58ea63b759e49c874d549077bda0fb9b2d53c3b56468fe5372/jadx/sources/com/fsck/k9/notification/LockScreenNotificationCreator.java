package com.fsck.k9.notification;

import android.app.Notification;
import androidx.core.app.NotificationCompat$Builder;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.notification.LockScreenNotificationData;
import com.fsck.k9.notification.NotificationChannelManager;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LockScreenNotificationCreator {
    public final NotificationHelper notificationHelper;
    public final K9NotificationResourceProvider resourceProvider;

    public LockScreenNotificationCreator(NotificationHelper notificationHelper, K9NotificationResourceProvider k9NotificationResourceProvider) {
        this.notificationHelper = notificationHelper;
        this.resourceProvider = k9NotificationResourceProvider;
    }

    public final void configureLockScreenNotification(NotificationCompat$Builder notificationCompat$Builder, BaseNotificationData baseNotificationData) {
        LockScreenNotificationData lockScreenNotificationData = baseNotificationData.lockScreenNotificationData;
        if (lockScreenNotificationData.equals(LockScreenNotificationData.None.INSTANCE)) {
            notificationCompat$Builder.mVisibility = -1;
            return;
        }
        if (lockScreenNotificationData.equals(LockScreenNotificationData.None.INSTANCE$1)) {
            notificationCompat$Builder.mVisibility = 0;
            return;
        }
        if (lockScreenNotificationData.equals(LockScreenNotificationData.None.INSTANCE$3)) {
            notificationCompat$Builder.mVisibility = 1;
            return;
        }
        if (lockScreenNotificationData instanceof LockScreenNotificationData.SenderNames) {
            NotificationCompat$Builder createPublicNotification = createPublicNotification(baseNotificationData);
            createPublicNotification.mContentText = NotificationCompat$Builder.limitCharSequenceLength(((LockScreenNotificationData.SenderNames) lockScreenNotificationData).senderNames);
            Notification build = createPublicNotification.build();
            build.getClass();
            notificationCompat$Builder.mPublicVersion = build;
            return;
        }
        if (!lockScreenNotificationData.equals(LockScreenNotificationData.None.INSTANCE$2)) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return;
        }
        NotificationCompat$Builder createPublicNotification2 = createPublicNotification(baseNotificationData);
        createPublicNotification2.mContentText = NotificationCompat$Builder.limitCharSequenceLength(baseNotificationData.accountName);
        Notification build2 = createPublicNotification2.build();
        build2.getClass();
        notificationCompat$Builder.mPublicVersion = build2;
    }

    public final NotificationCompat$Builder createPublicNotification(BaseNotificationData baseNotificationData) {
        LegacyAccountDto legacyAccountDto = baseNotificationData.account;
        int i = baseNotificationData.newMessagesCount;
        String quantityString = this.resourceProvider.context.getResources().getQuantityString(R.plurals.notification_new_messages_title, i, Integer.valueOf(i));
        quantityString.getClass();
        NotificationCompat$Builder createNotificationBuilder = this.notificationHelper.createNotificationBuilder(legacyAccountDto, NotificationChannelManager.ChannelType.MESSAGES);
        createNotificationBuilder.mNotification.icon = R.drawable.ic_mark_email_unread;
        createNotificationBuilder.mColor = baseNotificationData.color;
        createNotificationBuilder.mNumber = i;
        createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(quantityString);
        createNotificationBuilder.mCategory = "email";
        return createNotificationBuilder;
    }
}
