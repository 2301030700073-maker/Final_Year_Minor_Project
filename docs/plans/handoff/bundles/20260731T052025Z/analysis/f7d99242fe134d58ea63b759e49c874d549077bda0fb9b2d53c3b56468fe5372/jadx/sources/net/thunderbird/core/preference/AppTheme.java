package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AppTheme {
    public static final /* synthetic */ AppTheme[] $VALUES;
    public static final AppTheme DARK;
    public static final AppTheme FOLLOW_SYSTEM;
    public static final AppTheme LIGHT;

    static {
        AppTheme appTheme = new AppTheme("LIGHT", 0);
        LIGHT = appTheme;
        AppTheme appTheme2 = new AppTheme("DARK", 1);
        DARK = appTheme2;
        AppTheme appTheme3 = new AppTheme("FOLLOW_SYSTEM", 2);
        FOLLOW_SYSTEM = appTheme3;
        $VALUES = new AppTheme[]{appTheme, appTheme2, appTheme3};
    }

    public static AppTheme valueOf(String str) {
        return (AppTheme) Enum.valueOf(AppTheme.class, str);
    }

    public static AppTheme[] values() {
        return (AppTheme[]) $VALUES.clone();
    }
}
