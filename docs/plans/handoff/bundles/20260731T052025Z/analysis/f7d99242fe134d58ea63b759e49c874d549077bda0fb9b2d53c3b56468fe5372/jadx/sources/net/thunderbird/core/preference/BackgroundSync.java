package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackgroundSync {
    public static final /* synthetic */ BackgroundSync[] $VALUES;
    public static final BackgroundSync ALWAYS;
    public static final BackgroundSync FOLLOW_SYSTEM_AUTO_SYNC;
    public static final BackgroundSync NEVER;

    static {
        BackgroundSync backgroundSync = new BackgroundSync("ALWAYS", 0);
        ALWAYS = backgroundSync;
        BackgroundSync backgroundSync2 = new BackgroundSync("NEVER", 1);
        NEVER = backgroundSync2;
        BackgroundSync backgroundSync3 = new BackgroundSync("FOLLOW_SYSTEM_AUTO_SYNC", 2);
        FOLLOW_SYSTEM_AUTO_SYNC = backgroundSync3;
        $VALUES = new BackgroundSync[]{backgroundSync, backgroundSync2, backgroundSync3};
    }

    public static BackgroundSync valueOf(String str) {
        return (BackgroundSync) Enum.valueOf(BackgroundSync.class, str);
    }

    public static BackgroundSync[] values() {
        return (BackgroundSync[]) $VALUES.clone();
    }
}
