package com.fsck.k9.ui.settings.account;

import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.job.K9JobManager;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationController;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountSettingsDataStoreFactory {
    public final ExecutorService executorService;
    public final K9JobManager jobManager;
    public final MessagingController messagingController;
    public final NotificationChannelManager notificationChannelManager;
    public final NotificationController notificationController;
    public final Preferences preferences;

    public AccountSettingsDataStoreFactory(Preferences preferences, K9JobManager k9JobManager, ExecutorService executorService, NotificationChannelManager notificationChannelManager, NotificationController notificationController, MessagingController messagingController) {
        this.preferences = preferences;
        this.jobManager = k9JobManager;
        this.executorService = executorService;
        this.notificationChannelManager = notificationChannelManager;
        this.notificationController = notificationController;
        this.messagingController = messagingController;
    }
}
