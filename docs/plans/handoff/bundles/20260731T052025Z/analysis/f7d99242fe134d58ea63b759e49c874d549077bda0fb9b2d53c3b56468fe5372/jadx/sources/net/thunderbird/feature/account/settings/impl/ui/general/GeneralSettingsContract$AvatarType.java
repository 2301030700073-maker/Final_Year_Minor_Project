package net.thunderbird.feature.account.settings.impl.ui.general;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsContract$AvatarType {
    public static final /* synthetic */ GeneralSettingsContract$AvatarType[] $VALUES;
    public static final GeneralSettingsContract$AvatarType MONOGRAM;

    static {
        GeneralSettingsContract$AvatarType generalSettingsContract$AvatarType = new GeneralSettingsContract$AvatarType("MONOGRAM", 0);
        MONOGRAM = generalSettingsContract$AvatarType;
        $VALUES = new GeneralSettingsContract$AvatarType[]{generalSettingsContract$AvatarType, new GeneralSettingsContract$AvatarType("IMAGE", 1), new GeneralSettingsContract$AvatarType("ICON", 2)};
    }

    public static GeneralSettingsContract$AvatarType valueOf(String str) {
        return (GeneralSettingsContract$AvatarType) Enum.valueOf(GeneralSettingsContract$AvatarType.class, str);
    }

    public static GeneralSettingsContract$AvatarType[] values() {
        return (GeneralSettingsContract$AvatarType[]) $VALUES.clone();
    }
}
