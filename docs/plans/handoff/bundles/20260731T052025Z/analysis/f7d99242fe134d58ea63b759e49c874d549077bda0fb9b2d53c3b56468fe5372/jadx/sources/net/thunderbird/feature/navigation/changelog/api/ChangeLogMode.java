package net.thunderbird.feature.navigation.changelog.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeLogMode {
    public static final /* synthetic */ ChangeLogMode[] $VALUES;
    public static final ChangeLogMode CHANGE_LOG;
    public static final ChangeLogMode RECENT_CHANGES;

    static {
        ChangeLogMode changeLogMode = new ChangeLogMode("CHANGE_LOG", 0);
        CHANGE_LOG = changeLogMode;
        ChangeLogMode changeLogMode2 = new ChangeLogMode("RECENT_CHANGES", 1);
        RECENT_CHANGES = changeLogMode2;
        $VALUES = new ChangeLogMode[]{changeLogMode, changeLogMode2};
    }

    public static ChangeLogMode valueOf(String str) {
        return (ChangeLogMode) Enum.valueOf(ChangeLogMode.class, str);
    }

    public static ChangeLogMode[] values() {
        return (ChangeLogMode[]) $VALUES.clone();
    }
}
