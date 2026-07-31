package com.fsck.k9.notification;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SummaryNotificationCreator {
    public final K9NotificationActionCreator actionCreator;
    public final LockScreenNotificationCreator lockScreenNotificationCreator;
    public final NotificationHelper notificationHelper;
    public final K9NotificationResourceProvider resourceProvider;
    public final SingleMessageNotificationCreator singleMessageNotificationCreator;

    public SummaryNotificationCreator(NotificationHelper notificationHelper, K9NotificationActionCreator k9NotificationActionCreator, LockScreenNotificationCreator lockScreenNotificationCreator, SingleMessageNotificationCreator singleMessageNotificationCreator, K9NotificationResourceProvider k9NotificationResourceProvider) {
        this.notificationHelper = notificationHelper;
        this.actionCreator = k9NotificationActionCreator;
        this.lockScreenNotificationCreator = lockScreenNotificationCreator;
        this.singleMessageNotificationCreator = singleMessageNotificationCreator;
        this.resourceProvider = k9NotificationResourceProvider;
    }
}
