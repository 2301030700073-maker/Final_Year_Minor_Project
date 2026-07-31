package net.thunderbird.core.android.account;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderMode {
    public static final /* synthetic */ FolderMode[] $VALUES;
    public static final FolderMode ALL;
    public static final FolderMode FIRST_CLASS;
    public static final FolderMode NONE;
    public static final FolderMode NOT_SECOND_CLASS;

    static {
        FolderMode folderMode = new FolderMode("NONE", 0);
        NONE = folderMode;
        FolderMode folderMode2 = new FolderMode("ALL", 1);
        ALL = folderMode2;
        FolderMode folderMode3 = new FolderMode("FIRST_CLASS", 2);
        FIRST_CLASS = folderMode3;
        FolderMode folderMode4 = new FolderMode("FIRST_AND_SECOND_CLASS", 3);
        FolderMode folderMode5 = new FolderMode("NOT_SECOND_CLASS", 4);
        NOT_SECOND_CLASS = folderMode5;
        $VALUES = new FolderMode[]{folderMode, folderMode2, folderMode3, folderMode4, folderMode5};
    }

    public static FolderMode valueOf(String str) {
        return (FolderMode) Enum.valueOf(FolderMode.class, str);
    }

    public static FolderMode[] values() {
        return (FolderMode[]) $VALUES.clone();
    }
}
