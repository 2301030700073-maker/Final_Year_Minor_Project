package org.jetbrains.compose.resources;

import androidx.transition.Transition;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeQualifier implements Qualifier {
    public static final /* synthetic */ ThemeQualifier[] $VALUES;
    public static final Transition.AnonymousClass1 Companion;
    public static final ThemeQualifier DARK;
    public static final ThemeQualifier LIGHT;

    static {
        ThemeQualifier themeQualifier = new ThemeQualifier("LIGHT", 0);
        LIGHT = themeQualifier;
        ThemeQualifier themeQualifier2 = new ThemeQualifier("DARK", 1);
        DARK = themeQualifier2;
        $VALUES = new ThemeQualifier[]{themeQualifier, themeQualifier2};
        Companion = new Transition.AnonymousClass1();
    }

    public static ThemeQualifier valueOf(String str) {
        return (ThemeQualifier) Enum.valueOf(ThemeQualifier.class, str);
    }

    public static ThemeQualifier[] values() {
        return (ThemeQualifier[]) $VALUES.clone();
    }
}
