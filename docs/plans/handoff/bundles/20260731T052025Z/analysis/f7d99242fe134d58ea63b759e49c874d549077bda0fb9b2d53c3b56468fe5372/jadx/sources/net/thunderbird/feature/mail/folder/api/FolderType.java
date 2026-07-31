package net.thunderbird.feature.mail.folder.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderType {
    public static final /* synthetic */ FolderType[] $VALUES;
    public static final FolderType ARCHIVE;
    public static final FolderType DRAFTS;
    public static final FolderType INBOX;
    public static final FolderType OUTBOX;
    public static final FolderType REGULAR;
    public static final FolderType SENT;
    public static final FolderType SPAM;
    public static final FolderType TRASH;

    static {
        FolderType folderType = new FolderType("REGULAR", 0);
        REGULAR = folderType;
        FolderType folderType2 = new FolderType("INBOX", 1);
        INBOX = folderType2;
        FolderType folderType3 = new FolderType("OUTBOX", 2);
        OUTBOX = folderType3;
        FolderType folderType4 = new FolderType("SENT", 3);
        SENT = folderType4;
        FolderType folderType5 = new FolderType("TRASH", 4);
        TRASH = folderType5;
        FolderType folderType6 = new FolderType("DRAFTS", 5);
        DRAFTS = folderType6;
        FolderType folderType7 = new FolderType("ARCHIVE", 6);
        ARCHIVE = folderType7;
        FolderType folderType8 = new FolderType("SPAM", 7);
        SPAM = folderType8;
        $VALUES = new FolderType[]{folderType, folderType2, folderType3, folderType4, folderType5, folderType6, folderType7, folderType8};
    }

    public static FolderType valueOf(String str) {
        return (FolderType) Enum.valueOf(FolderType.class, str);
    }

    public static FolderType[] values() {
        return (FolderType[]) $VALUES.clone();
    }
}
