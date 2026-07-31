package net.thunderbird.feature.notification;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationSettings {
    public final boolean isRingEnabled;
    public final NotificationLight light;
    public final String ringtone;
    public final NotificationVibration vibration;

    static {
        NotificationVibration notificationVibration = NotificationVibration.DEFAULT;
    }

    public NotificationSettings(boolean z, String str, NotificationLight notificationLight, NotificationVibration notificationVibration) {
        notificationLight.getClass();
        notificationVibration.getClass();
        this.isRingEnabled = z;
        this.ringtone = str;
        this.light = notificationLight;
        this.vibration = notificationVibration;
    }

    public static NotificationSettings copy$default(NotificationSettings notificationSettings, String str, NotificationLight notificationLight, NotificationVibration notificationVibration, int i) {
        boolean z = (i & 1) != 0 ? notificationSettings.isRingEnabled : true;
        if ((i & 2) != 0) {
            str = notificationSettings.ringtone;
        }
        if ((i & 4) != 0) {
            notificationLight = notificationSettings.light;
        }
        if ((i & 8) != 0) {
            notificationVibration = notificationSettings.vibration;
        }
        notificationSettings.getClass();
        notificationLight.getClass();
        notificationVibration.getClass();
        return new NotificationSettings(z, str, notificationLight, notificationVibration);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NotificationSettings)) {
            return false;
        }
        NotificationSettings notificationSettings = (NotificationSettings) obj;
        return this.isRingEnabled == notificationSettings.isRingEnabled && Intrinsics.areEqual(this.ringtone, notificationSettings.ringtone) && this.light == notificationSettings.light && Intrinsics.areEqual(this.vibration, notificationSettings.vibration);
    }

    public final int hashCode() {
        int i = (this.isRingEnabled ? 1231 : 1237) * 31;
        String str = this.ringtone;
        return this.vibration.hashCode() + ((this.light.hashCode() + ((i + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        return "NotificationSettings(isRingEnabled=" + this.isRingEnabled + ", ringtone=" + this.ringtone + ", light=" + this.light + ", vibration=" + this.vibration + ")";
    }
}
