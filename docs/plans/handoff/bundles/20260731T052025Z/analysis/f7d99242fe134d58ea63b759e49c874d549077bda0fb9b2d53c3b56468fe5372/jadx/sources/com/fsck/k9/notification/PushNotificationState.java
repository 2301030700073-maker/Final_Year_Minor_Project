package com.fsck.k9.notification;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushNotificationState {
    public static final /* synthetic */ PushNotificationState[] $VALUES;
    public static final PushNotificationState ALARM_PERMISSION_MISSING;
    public static final PushNotificationState INITIALIZING;
    public static final PushNotificationState LISTENING;
    public static final PushNotificationState WAIT_BACKGROUND_SYNC;
    public static final PushNotificationState WAIT_NETWORK;

    static {
        PushNotificationState pushNotificationState = new PushNotificationState("INITIALIZING", 0);
        INITIALIZING = pushNotificationState;
        PushNotificationState pushNotificationState2 = new PushNotificationState("LISTENING", 1);
        LISTENING = pushNotificationState2;
        PushNotificationState pushNotificationState3 = new PushNotificationState("WAIT_BACKGROUND_SYNC", 2);
        WAIT_BACKGROUND_SYNC = pushNotificationState3;
        PushNotificationState pushNotificationState4 = new PushNotificationState("WAIT_NETWORK", 3);
        WAIT_NETWORK = pushNotificationState4;
        PushNotificationState pushNotificationState5 = new PushNotificationState("ALARM_PERMISSION_MISSING", 4);
        ALARM_PERMISSION_MISSING = pushNotificationState5;
        $VALUES = new PushNotificationState[]{pushNotificationState, pushNotificationState2, pushNotificationState3, pushNotificationState4, pushNotificationState5};
    }

    public static PushNotificationState valueOf(String str) {
        return (PushNotificationState) Enum.valueOf(PushNotificationState.class, str);
    }

    public static PushNotificationState[] values() {
        return (PushNotificationState[]) $VALUES.clone();
    }
}
