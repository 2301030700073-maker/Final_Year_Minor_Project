package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SubTheme {
    public static final /* synthetic */ SubTheme[] $VALUES;
    public static final SubTheme DARK;
    public static final SubTheme LIGHT;
    public static final SubTheme USE_GLOBAL;

    static {
        SubTheme subTheme = new SubTheme("LIGHT", 0);
        LIGHT = subTheme;
        SubTheme subTheme2 = new SubTheme("DARK", 1);
        DARK = subTheme2;
        SubTheme subTheme3 = new SubTheme("USE_GLOBAL", 2);
        USE_GLOBAL = subTheme3;
        $VALUES = new SubTheme[]{subTheme, subTheme2, subTheme3};
    }

    public static SubTheme valueOf(String str) {
        return (SubTheme) Enum.valueOf(SubTheme.class, str);
    }

    public static SubTheme[] values() {
        return (SubTheme[]) $VALUES.clone();
    }
}
