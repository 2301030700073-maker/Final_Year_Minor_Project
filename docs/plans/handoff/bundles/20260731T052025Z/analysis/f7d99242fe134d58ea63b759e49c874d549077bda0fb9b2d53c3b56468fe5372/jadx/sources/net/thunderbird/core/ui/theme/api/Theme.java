package net.thunderbird.core.ui.theme.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Theme {
    public static final /* synthetic */ Theme[] $VALUES;
    public static final Theme DARK;
    public static final Theme LIGHT;

    static {
        Theme theme = new Theme("LIGHT", 0);
        LIGHT = theme;
        Theme theme2 = new Theme("DARK", 1);
        DARK = theme2;
        $VALUES = new Theme[]{theme, theme2};
    }

    public static Theme valueOf(String str) {
        return (Theme) Enum.valueOf(Theme.class, str);
    }

    public static Theme[] values() {
        return (Theme[]) $VALUES.clone();
    }
}
