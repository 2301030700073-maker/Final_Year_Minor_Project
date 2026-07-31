package net.thunderbird.core.preference.display.visualSettings.message.list;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UiDensity {
    public static final /* synthetic */ UiDensity[] $VALUES;
    public static final UiDensity Default;

    /* JADX INFO: Fake field, exist only in values array */
    UiDensity EF0;

    static {
        UiDensity uiDensity = new UiDensity("Compact", 0);
        UiDensity uiDensity2 = new UiDensity("Default", 1);
        Default = uiDensity2;
        $VALUES = new UiDensity[]{uiDensity, uiDensity2, new UiDensity("Relaxed", 2)};
    }

    public static UiDensity valueOf(String str) {
        return (UiDensity) Enum.valueOf(UiDensity.class, str);
    }

    public static UiDensity[] values() {
        return (UiDensity[]) $VALUES.clone();
    }
}
