package com.fsck.k9.mail.store.imap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OpenMode {
    public static final /* synthetic */ OpenMode[] $VALUES;
    public static final OpenMode READ_ONLY;
    public static final OpenMode READ_WRITE;

    static {
        OpenMode openMode = new OpenMode("READ_WRITE", 0);
        READ_WRITE = openMode;
        OpenMode openMode2 = new OpenMode("READ_ONLY", 1);
        READ_ONLY = openMode2;
        $VALUES = new OpenMode[]{openMode, openMode2};
    }

    public static OpenMode valueOf(String str) {
        return (OpenMode) Enum.valueOf(OpenMode.class, str);
    }

    public static OpenMode[] values() {
        return (OpenMode[]) $VALUES.clone();
    }
}
