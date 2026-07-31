package net.thunderbird.core.ui.common.window;

import com.bumptech.glide.load.Option;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WindowHeightSizeClass {
    public static final /* synthetic */ WindowHeightSizeClass[] $VALUES;
    public static final float BREAKPOINT_COMPACT;
    public static final float BREAKPOINT_MEDIUM;
    public static final float BREAKPOINT_SMALL;
    public static final WindowHeightSizeClass Compact;
    public static final Option.AnonymousClass1 Companion;
    public static final WindowHeightSizeClass Expanded;
    public static final WindowHeightSizeClass Medium;
    public static final WindowHeightSizeClass Small;

    static {
        WindowHeightSizeClass windowHeightSizeClass = new WindowHeightSizeClass("Small", 0);
        Small = windowHeightSizeClass;
        WindowHeightSizeClass windowHeightSizeClass2 = new WindowHeightSizeClass("Compact", 1);
        Compact = windowHeightSizeClass2;
        WindowHeightSizeClass windowHeightSizeClass3 = new WindowHeightSizeClass("Medium", 2);
        Medium = windowHeightSizeClass3;
        WindowHeightSizeClass windowHeightSizeClass4 = new WindowHeightSizeClass("Expanded", 3);
        Expanded = windowHeightSizeClass4;
        $VALUES = new WindowHeightSizeClass[]{windowHeightSizeClass, windowHeightSizeClass2, windowHeightSizeClass3, windowHeightSizeClass4};
        Companion = new Option.AnonymousClass1();
        BREAKPOINT_SMALL = 350.0f;
        BREAKPOINT_COMPACT = 480.0f;
        BREAKPOINT_MEDIUM = 900.0f;
    }

    public static WindowHeightSizeClass valueOf(String str) {
        return (WindowHeightSizeClass) Enum.valueOf(WindowHeightSizeClass.class, str);
    }

    public static WindowHeightSizeClass[] values() {
        return (WindowHeightSizeClass[]) $VALUES.clone();
    }
}
