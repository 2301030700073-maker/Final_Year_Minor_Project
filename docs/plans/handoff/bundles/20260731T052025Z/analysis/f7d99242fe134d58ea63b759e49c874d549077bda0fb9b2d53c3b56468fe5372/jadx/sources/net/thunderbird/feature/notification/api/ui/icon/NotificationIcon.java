package net.thunderbird.feature.notification.api.ui.icon;

import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationIcon {
    public final ImageVector inAppNotificationIcon;
    public final Integer systemNotificationIcon;

    public NotificationIcon(Integer num, ImageVector imageVector) {
        this.systemNotificationIcon = num;
        this.inAppNotificationIcon = imageVector;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationIcon)) {
            return false;
        }
        NotificationIcon notificationIcon = (NotificationIcon) obj;
        return this.systemNotificationIcon.equals(notificationIcon.systemNotificationIcon) && Intrinsics.areEqual(this.inAppNotificationIcon, notificationIcon.inAppNotificationIcon);
    }

    public final int hashCode() {
        int hashCode = this.systemNotificationIcon.hashCode() * 31;
        ImageVector imageVector = this.inAppNotificationIcon;
        return hashCode + (imageVector == null ? 0 : imageVector.hashCode());
    }

    public final String toString() {
        return "NotificationIcon(systemNotificationIcon=" + this.systemNotificationIcon + ", inAppNotificationIcon=" + this.inAppNotificationIcon + ")";
    }
}
