package net.thunderbird.feature.notification.api.ui.host.visual;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.notification.api.NotificationSeverity;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerGlobalVisual implements InAppNotificationVisual, Comparable {
    public final NotificationAction action;
    public final String message;
    public final NotificationSeverity severity;

    public BannerGlobalVisual(String str, NotificationSeverity notificationSeverity, NotificationAction notificationAction) {
        notificationSeverity.getClass();
        this.message = str;
        this.severity = notificationSeverity;
        this.action = notificationAction;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        ((BannerGlobalVisual) obj).getClass();
        return Integer.compare(Integer.MAX_VALUE, Integer.MAX_VALUE);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BannerGlobalVisual)) {
            return false;
        }
        BannerGlobalVisual bannerGlobalVisual = (BannerGlobalVisual) obj;
        return this.message.equals(bannerGlobalVisual.message) && this.severity == bannerGlobalVisual.severity && Intrinsics.areEqual(this.action, bannerGlobalVisual.action);
    }

    public final int hashCode() {
        int hashCode = (this.severity.hashCode() + (this.message.hashCode() * 31)) * 31;
        return ((hashCode + (this.action == null ? 0 : r2.hashCode())) * 31) - 1;
    }

    public final String toString() {
        return "BannerGlobalVisual(message=" + ((Object) this.message) + ", severity=" + this.severity + ", action=" + this.action + ", priority=" + CameraDevices$CC.m("NotificationPriority(value=", String.valueOf(4294967295L), ")") + ")";
    }
}
