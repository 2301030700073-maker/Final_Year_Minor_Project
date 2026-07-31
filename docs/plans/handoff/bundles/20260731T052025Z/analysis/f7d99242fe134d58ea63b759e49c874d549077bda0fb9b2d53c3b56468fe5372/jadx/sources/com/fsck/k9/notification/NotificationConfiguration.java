package com.fsck.k9.notification;

import android.net.Uri;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationConfiguration {
    public final boolean isBlinkLightsEnabled;
    public final boolean isVibrationEnabled;
    public final int lightColor;
    public final Uri sound;
    public final List vibrationPattern;

    public NotificationConfiguration(Uri uri, boolean z, int i, boolean z2, List list) {
        this.sound = uri;
        this.isBlinkLightsEnabled = z;
        this.lightColor = i;
        this.isVibrationEnabled = z2;
        this.vibrationPattern = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationConfiguration)) {
            return false;
        }
        NotificationConfiguration notificationConfiguration = (NotificationConfiguration) obj;
        return Intrinsics.areEqual(this.sound, notificationConfiguration.sound) && this.isBlinkLightsEnabled == notificationConfiguration.isBlinkLightsEnabled && this.lightColor == notificationConfiguration.lightColor && this.isVibrationEnabled == notificationConfiguration.isVibrationEnabled && Intrinsics.areEqual(this.vibrationPattern, notificationConfiguration.vibrationPattern);
    }

    public final int hashCode() {
        Uri uri = this.sound;
        int hashCode = (((((((uri == null ? 0 : uri.hashCode()) * 31) + (this.isBlinkLightsEnabled ? 1231 : 1237)) * 31) + this.lightColor) * 31) + (this.isVibrationEnabled ? 1231 : 1237)) * 31;
        List list = this.vibrationPattern;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "NotificationConfiguration(sound=" + this.sound + ", isBlinkLightsEnabled=" + this.isBlinkLightsEnabled + ", lightColor=" + this.lightColor + ", isVibrationEnabled=" + this.isVibrationEnabled + ", vibrationPattern=" + this.vibrationPattern + ")";
    }
}
