package net.thunderbird.feature.navigation.drawer.dropdown.domain.entity;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnifiedDisplayFolderType {
    public static final /* synthetic */ UnifiedDisplayFolderType[] $VALUES;
    public static final UnifiedDisplayFolderType INBOX;

    static {
        UnifiedDisplayFolderType unifiedDisplayFolderType = new UnifiedDisplayFolderType("INBOX", 0);
        INBOX = unifiedDisplayFolderType;
        $VALUES = new UnifiedDisplayFolderType[]{unifiedDisplayFolderType};
    }

    public static UnifiedDisplayFolderType valueOf(String str) {
        return (UnifiedDisplayFolderType) Enum.valueOf(UnifiedDisplayFolderType.class, str);
    }

    public static UnifiedDisplayFolderType[] values() {
        return (UnifiedDisplayFolderType[]) $VALUES.clone();
    }
}
