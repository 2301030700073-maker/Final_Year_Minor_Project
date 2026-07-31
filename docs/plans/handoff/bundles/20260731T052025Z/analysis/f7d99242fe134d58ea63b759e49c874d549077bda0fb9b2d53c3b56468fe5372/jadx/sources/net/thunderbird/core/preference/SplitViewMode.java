package net.thunderbird.core.preference;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SplitViewMode {
    public static final /* synthetic */ SplitViewMode[] $VALUES;
    public static final SplitViewMode NEVER;
    public static final SplitViewMode WHEN_UNFOLDED;

    /* JADX INFO: Fake field, exist only in values array */
    SplitViewMode EF0;

    static {
        SplitViewMode splitViewMode = new SplitViewMode("ALWAYS", 0);
        SplitViewMode splitViewMode2 = new SplitViewMode("NEVER", 1);
        NEVER = splitViewMode2;
        SplitViewMode splitViewMode3 = new SplitViewMode("WHEN_IN_LANDSCAPE", 2);
        SplitViewMode splitViewMode4 = new SplitViewMode("WHEN_UNFOLDED", 3);
        WHEN_UNFOLDED = splitViewMode4;
        $VALUES = new SplitViewMode[]{splitViewMode, splitViewMode2, splitViewMode3, splitViewMode4};
    }

    public static SplitViewMode valueOf(String str) {
        return (SplitViewMode) Enum.valueOf(SplitViewMode.class, str);
    }

    public static SplitViewMode[] values() {
        return (SplitViewMode[]) $VALUES.clone();
    }
}
