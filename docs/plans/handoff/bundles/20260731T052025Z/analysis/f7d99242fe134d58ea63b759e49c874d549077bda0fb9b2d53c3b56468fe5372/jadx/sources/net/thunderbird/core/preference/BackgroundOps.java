package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackgroundOps {
    public static final /* synthetic */ BackgroundOps[] $VALUES;
    public static final BackgroundOps ALWAYS;
    public static final BackgroundOps NEVER;
    public static final BackgroundOps WHEN_CHECKED_AUTO_SYNC;

    static {
        BackgroundOps backgroundOps = new BackgroundOps("ALWAYS", 0);
        ALWAYS = backgroundOps;
        BackgroundOps backgroundOps2 = new BackgroundOps("NEVER", 1);
        NEVER = backgroundOps2;
        BackgroundOps backgroundOps3 = new BackgroundOps("WHEN_CHECKED_AUTO_SYNC", 2);
        WHEN_CHECKED_AUTO_SYNC = backgroundOps3;
        $VALUES = new BackgroundOps[]{backgroundOps, backgroundOps2, backgroundOps3};
    }

    public static BackgroundOps valueOf(String str) {
        return (BackgroundOps) Enum.valueOf(BackgroundOps.class, str);
    }

    public static BackgroundOps[] values() {
        return (BackgroundOps[]) $VALUES.clone();
    }
}
