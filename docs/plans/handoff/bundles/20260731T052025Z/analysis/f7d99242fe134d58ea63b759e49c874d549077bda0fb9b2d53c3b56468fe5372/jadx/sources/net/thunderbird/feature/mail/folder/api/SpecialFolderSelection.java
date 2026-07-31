package net.thunderbird.feature.mail.folder.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialFolderSelection {
    public static final /* synthetic */ SpecialFolderSelection[] $VALUES;
    public static final SpecialFolderSelection AUTOMATIC;
    public static final SpecialFolderSelection MANUAL;

    static {
        SpecialFolderSelection specialFolderSelection = new SpecialFolderSelection("AUTOMATIC", 0);
        AUTOMATIC = specialFolderSelection;
        SpecialFolderSelection specialFolderSelection2 = new SpecialFolderSelection("MANUAL", 1);
        MANUAL = specialFolderSelection2;
        $VALUES = new SpecialFolderSelection[]{specialFolderSelection, specialFolderSelection2};
    }

    public static SpecialFolderSelection valueOf(String str) {
        return (SpecialFolderSelection) Enum.valueOf(SpecialFolderSelection.class, str);
    }

    public static SpecialFolderSelection[] values() {
        return (SpecialFolderSelection[]) $VALUES.clone();
    }
}
