package org.jetbrains.compose.resources;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ThemeQualifier implements Qualifier {
    public static final /* synthetic */ ThemeQualifier[] $VALUES;
    public static final Companion Companion;
    public static final ThemeQualifier DARK;
    public static final ThemeQualifier LIGHT;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        ThemeQualifier themeQualifier = new ThemeQualifier("LIGHT", 0);
        LIGHT = themeQualifier;
        ThemeQualifier themeQualifier2 = new ThemeQualifier("DARK", 1);
        DARK = themeQualifier2;
        $VALUES = new ThemeQualifier[]{themeQualifier, themeQualifier2};
        Companion = new Companion();
    }

    public static ThemeQualifier valueOf(String str) {
        return (ThemeQualifier) Enum.valueOf(ThemeQualifier.class, str);
    }

    public static ThemeQualifier[] values() {
        return (ThemeQualifier[]) $VALUES.clone();
    }
}
