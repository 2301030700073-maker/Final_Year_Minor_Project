package com.fsck.k9.notification;

import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CertificateErrorNotificationController {
    public final K9NotificationActionCreator actionCreator;
    public final GeneralSettingsManager generalSettingsManager;
    public final NotificationHelper notificationHelper;
    public final K9NotificationResourceProvider resourceProvider;

    public CertificateErrorNotificationController(NotificationHelper notificationHelper, K9NotificationActionCreator k9NotificationActionCreator, K9NotificationResourceProvider k9NotificationResourceProvider, GeneralSettingsManager generalSettingsManager) {
        this.notificationHelper = notificationHelper;
        this.actionCreator = k9NotificationActionCreator;
        this.resourceProvider = k9NotificationResourceProvider;
        this.generalSettingsManager = generalSettingsManager;
    }
}
