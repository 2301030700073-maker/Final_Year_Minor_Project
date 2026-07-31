package com.fsck.k9.preferences.legacy;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderClass {
    public static final /* synthetic */ FolderClass[] $VALUES;
    public static final FolderClass FIRST_CLASS;
    public static final FolderClass INHERITED;
    public static final FolderClass NO_CLASS;
    public static final FolderClass SECOND_CLASS;

    static {
        FolderClass folderClass = new FolderClass("NO_CLASS", 0);
        NO_CLASS = folderClass;
        FolderClass folderClass2 = new FolderClass("INHERITED", 1);
        INHERITED = folderClass2;
        FolderClass folderClass3 = new FolderClass("FIRST_CLASS", 2);
        FIRST_CLASS = folderClass3;
        FolderClass folderClass4 = new FolderClass("SECOND_CLASS", 3);
        SECOND_CLASS = folderClass4;
        $VALUES = new FolderClass[]{folderClass, folderClass2, folderClass3, folderClass4};
    }

    public static FolderClass valueOf(String str) {
        return (FolderClass) Enum.valueOf(FolderClass.class, str);
    }

    public static FolderClass[] values() {
        return (FolderClass[]) $VALUES.clone();
    }
}
