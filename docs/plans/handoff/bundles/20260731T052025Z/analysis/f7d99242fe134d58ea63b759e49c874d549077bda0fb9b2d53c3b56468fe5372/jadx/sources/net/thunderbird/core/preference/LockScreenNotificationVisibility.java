package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LockScreenNotificationVisibility {
    public static final /* synthetic */ LockScreenNotificationVisibility[] $VALUES;
    public static final LockScreenNotificationVisibility MESSAGE_COUNT;

    /* JADX INFO: Fake field, exist only in values array */
    LockScreenNotificationVisibility EF0;

    static {
        LockScreenNotificationVisibility lockScreenNotificationVisibility = new LockScreenNotificationVisibility("EVERYTHING", 0);
        LockScreenNotificationVisibility lockScreenNotificationVisibility2 = new LockScreenNotificationVisibility("SENDERS", 1);
        LockScreenNotificationVisibility lockScreenNotificationVisibility3 = new LockScreenNotificationVisibility("MESSAGE_COUNT", 2);
        MESSAGE_COUNT = lockScreenNotificationVisibility3;
        $VALUES = new LockScreenNotificationVisibility[]{lockScreenNotificationVisibility, lockScreenNotificationVisibility2, lockScreenNotificationVisibility3, new LockScreenNotificationVisibility("APP_NAME", 3), new LockScreenNotificationVisibility("NOTHING", 4)};
    }

    public static LockScreenNotificationVisibility valueOf(String str) {
        return (LockScreenNotificationVisibility) Enum.valueOf(LockScreenNotificationVisibility.class, str);
    }

    public static LockScreenNotificationVisibility[] values() {
        return (LockScreenNotificationVisibility[]) $VALUES.clone();
    }
}
