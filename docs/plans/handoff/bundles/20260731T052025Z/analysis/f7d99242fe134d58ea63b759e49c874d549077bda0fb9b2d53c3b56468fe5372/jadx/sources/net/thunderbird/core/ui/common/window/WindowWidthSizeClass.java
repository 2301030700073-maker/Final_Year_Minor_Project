package net.thunderbird.core.ui.common.window;

import androidx.transition.Transition;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowWidthSizeClass {
    public static final /* synthetic */ WindowWidthSizeClass[] $VALUES;
    public static final float BREAKPOINT_COMPACT;
    public static final float BREAKPOINT_MEDIUM;
    public static final float BREAKPOINT_SMALL;
    public static final WindowWidthSizeClass Compact;
    public static final Transition.AnonymousClass1 Companion;
    public static final WindowWidthSizeClass Expanded;
    public static final WindowWidthSizeClass Medium;
    public static final WindowWidthSizeClass Small;

    static {
        WindowWidthSizeClass windowWidthSizeClass = new WindowWidthSizeClass("Small", 0);
        Small = windowWidthSizeClass;
        WindowWidthSizeClass windowWidthSizeClass2 = new WindowWidthSizeClass("Compact", 1);
        Compact = windowWidthSizeClass2;
        WindowWidthSizeClass windowWidthSizeClass3 = new WindowWidthSizeClass("Medium", 2);
        Medium = windowWidthSizeClass3;
        WindowWidthSizeClass windowWidthSizeClass4 = new WindowWidthSizeClass("Expanded", 3);
        Expanded = windowWidthSizeClass4;
        $VALUES = new WindowWidthSizeClass[]{windowWidthSizeClass, windowWidthSizeClass2, windowWidthSizeClass3, windowWidthSizeClass4};
        Companion = new Transition.AnonymousClass1();
        BREAKPOINT_SMALL = 350.0f;
        BREAKPOINT_COMPACT = 600.0f;
        BREAKPOINT_MEDIUM = 840.0f;
    }

    public static WindowWidthSizeClass valueOf(String str) {
        return (WindowWidthSizeClass) Enum.valueOf(WindowWidthSizeClass.class, str);
    }

    public static WindowWidthSizeClass[] values() {
        return (WindowWidthSizeClass[]) $VALUES.clone();
    }
}
