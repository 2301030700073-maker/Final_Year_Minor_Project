package net.thunderbird.feature.notification;

import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NotificationLight {
    public static final /* synthetic */ NotificationLight[] $VALUES;
    public static final NotificationLight AccountColor;
    public static final NotificationLight Blue;
    public static final NotificationLight Cyan;
    public static final NotificationLight Disabled;
    public static final NotificationLight Green;
    public static final NotificationLight Magenta;
    public static final NotificationLight Red;
    public static final NotificationLight SystemDefaultColor;
    public static final NotificationLight White;
    public static final NotificationLight Yellow;

    static {
        NotificationLight notificationLight = new NotificationLight("Disabled", 0);
        Disabled = notificationLight;
        NotificationLight notificationLight2 = new NotificationLight("AccountColor", 1);
        AccountColor = notificationLight2;
        NotificationLight notificationLight3 = new NotificationLight("SystemDefaultColor", 2);
        SystemDefaultColor = notificationLight3;
        NotificationLight notificationLight4 = new NotificationLight("White", 3);
        White = notificationLight4;
        NotificationLight notificationLight5 = new NotificationLight("Red", 4);
        Red = notificationLight5;
        NotificationLight notificationLight6 = new NotificationLight("Green", 5);
        Green = notificationLight6;
        NotificationLight notificationLight7 = new NotificationLight("Blue", 6);
        Blue = notificationLight7;
        NotificationLight notificationLight8 = new NotificationLight("Yellow", 7);
        Yellow = notificationLight8;
        NotificationLight notificationLight9 = new NotificationLight("Cyan", 8);
        Cyan = notificationLight9;
        NotificationLight notificationLight10 = new NotificationLight("Magenta", 9);
        Magenta = notificationLight10;
        $VALUES = new NotificationLight[]{notificationLight, notificationLight2, notificationLight3, notificationLight4, notificationLight5, notificationLight6, notificationLight7, notificationLight8, notificationLight9, notificationLight10};
    }

    public static NotificationLight valueOf(String str) {
        return (NotificationLight) Enum.valueOf(NotificationLight.class, str);
    }

    public static NotificationLight[] values() {
        return (NotificationLight[]) $VALUES.clone();
    }

    public final Integer toColor(int i) {
        switch (ordinal()) {
            case 0:
                return null;
            case 1:
                return Integer.valueOf((-16777216) | i);
            case 2:
                return 0;
            case 3:
                return -1;
            case 4:
                return -65536;
            case 5:
                return -16711936;
            case 6:
                return -16776961;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return -256;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return -16711681;
            case 9:
                return -65281;
            default:
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
        }
    }
}
