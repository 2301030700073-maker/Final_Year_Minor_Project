package com.fsck.k9.ui.base;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeType {
    public static final /* synthetic */ ThemeType[] $VALUES;
    public static final ThemeType DEFAULT;
    public static final ThemeType DIALOG;

    static {
        ThemeType themeType = new ThemeType("DEFAULT", 0);
        DEFAULT = themeType;
        ThemeType themeType2 = new ThemeType("DIALOG", 1);
        DIALOG = themeType2;
        $VALUES = new ThemeType[]{themeType, themeType2};
    }

    public static ThemeType valueOf(String str) {
        return (ThemeType) Enum.valueOf(ThemeType.class, str);
    }

    public static ThemeType[] values() {
        return (ThemeType[]) $VALUES.clone();
    }
}
