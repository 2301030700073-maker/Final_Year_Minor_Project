package com.fsck.k9.notification;

import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SummaryNotificationDataCreator {
    public final GeneralSettingsManager generalSettingsManager;
    public final SingleMessageNotificationDataCreator singleMessageNotificationDataCreator;

    public SummaryNotificationDataCreator(SingleMessageNotificationDataCreator singleMessageNotificationDataCreator, GeneralSettingsManager generalSettingsManager) {
        this.singleMessageNotificationDataCreator = singleMessageNotificationDataCreator;
        this.generalSettingsManager = generalSettingsManager;
    }
}
