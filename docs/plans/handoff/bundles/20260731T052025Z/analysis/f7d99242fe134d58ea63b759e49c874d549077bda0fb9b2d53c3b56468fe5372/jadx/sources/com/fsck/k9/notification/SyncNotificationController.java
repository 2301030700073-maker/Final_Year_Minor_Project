package com.fsck.k9.notification;

import android.app.Notification;
import androidx.core.app.NotificationCompat$Builder;
import app.k9mail.provider.K9AppNotificationIconProvider;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.notification.NotificationChannelManager;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncNotificationController {
    public final K9NotificationActionCreator actionBuilder;
    public final NotificationHelper notificationHelper;
    public final DefaultOutboxFolderManager outboxFolderManager;
    public final K9NotificationResourceProvider resourceProvider;

    public SyncNotificationController(NotificationHelper notificationHelper, K9NotificationActionCreator k9NotificationActionCreator, K9NotificationResourceProvider k9NotificationResourceProvider, DefaultOutboxFolderManager defaultOutboxFolderManager, K9AppNotificationIconProvider k9AppNotificationIconProvider) {
        this.notificationHelper = notificationHelper;
        this.actionBuilder = k9NotificationActionCreator;
        this.resourceProvider = k9NotificationResourceProvider;
        this.outboxFolderManager = defaultOutboxFolderManager;
    }

    public final Notification createFetchingMailLockScreenNotification(LegacyAccountDto legacyAccountDto) {
        NotificationCompat$Builder createNotificationBuilder = this.notificationHelper.createNotificationBuilder(legacyAccountDto, NotificationChannelManager.ChannelType.MISCELLANEOUS);
        Notification notification = createNotificationBuilder.mNotification;
        notification.icon = R.drawable.ic_sync;
        createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
        notification.when = System.currentTimeMillis();
        String string = this.resourceProvider.context.getString(R.string.notification_bg_sync_title);
        string.getClass();
        createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
        Notification build = createNotificationBuilder.build();
        build.getClass();
        return build;
    }
}
