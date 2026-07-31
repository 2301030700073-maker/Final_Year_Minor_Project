package com.fsck.k9.notification;

import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SendFailedNotificationController {
    public final K9NotificationActionCreator actionBuilder;
    public final GeneralSettingsManager generalSettingsManager;
    public final NotificationHelper notificationHelper;
    public final DefaultOutboxFolderManager outboxFolderManager;
    public final K9NotificationResourceProvider resourceProvider;

    public SendFailedNotificationController(NotificationHelper notificationHelper, K9NotificationActionCreator k9NotificationActionCreator, K9NotificationResourceProvider k9NotificationResourceProvider, GeneralSettingsManager generalSettingsManager, DefaultOutboxFolderManager defaultOutboxFolderManager) {
        this.notificationHelper = notificationHelper;
        this.actionBuilder = k9NotificationActionCreator;
        this.resourceProvider = k9NotificationResourceProvider;
        this.generalSettingsManager = generalSettingsManager;
        this.outboxFolderManager = defaultOutboxFolderManager;
    }
}
