package net.thunderbird.feature.notification;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationVibration {
    public static final NotificationVibration DEFAULT = new NotificationVibration(false, VibratePattern.Default, 5);
    public final boolean isEnabled;
    public final VibratePattern pattern;
    public final int repeatCount;

    public NotificationVibration(boolean z, VibratePattern vibratePattern, int i) {
        vibratePattern.getClass();
        this.isEnabled = z;
        this.pattern = vibratePattern;
        this.repeatCount = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationVibration)) {
            return false;
        }
        NotificationVibration notificationVibration = (NotificationVibration) obj;
        return this.isEnabled == notificationVibration.isEnabled && this.pattern == notificationVibration.pattern && this.repeatCount == notificationVibration.repeatCount;
    }

    public final int hashCode() {
        return ((this.pattern.hashCode() + ((this.isEnabled ? 1231 : 1237) * 31)) * 31) + this.repeatCount;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NotificationVibration(isEnabled=");
        sb.append(this.isEnabled);
        sb.append(", pattern=");
        sb.append(this.pattern);
        sb.append(", repeatCount=");
        return CameraDevices$CC.m(sb, this.repeatCount, ")");
    }
}
