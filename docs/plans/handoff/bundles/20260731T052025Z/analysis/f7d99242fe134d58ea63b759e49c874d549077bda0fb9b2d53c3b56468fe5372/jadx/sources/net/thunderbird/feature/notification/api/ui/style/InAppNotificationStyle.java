package net.thunderbird.feature.notification.api.ui.style;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface InAppNotificationStyle {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BannerGlobalNotification implements InAppNotificationStyle {
        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BannerGlobalNotification);
        }

        public final int hashCode() {
            return -1;
        }

        public final String toString() {
            return CameraDevices$CC.m("BannerGlobalNotification(priority=", CameraDevices$CC.m("NotificationPriority(value=", String.valueOf(4294967295L), ")"), ")");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BannerInlineNotification implements InAppNotificationStyle {
        public static final BannerInlineNotification INSTANCE = new BannerInlineNotification();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof BannerInlineNotification);
        }

        public final int hashCode() {
            return 1548801914;
        }

        public final String toString() {
            return "BannerInlineNotification";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Undefined implements InAppNotificationStyle {
        public static final Undefined INSTANCE = new Undefined();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Undefined);
        }

        public final int hashCode() {
            return -1106312826;
        }

        public final String toString() {
            return "Undefined";
        }
    }
}
