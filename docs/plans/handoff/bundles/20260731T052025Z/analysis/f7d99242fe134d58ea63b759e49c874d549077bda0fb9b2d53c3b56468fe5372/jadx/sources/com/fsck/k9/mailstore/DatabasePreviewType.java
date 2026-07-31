package com.fsck.k9.mailstore;

import com.fsck.k9.mailstore.SendState;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DatabasePreviewType {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DatabasePreviewType[] $VALUES;
    public static final SendState.Companion Companion;
    public final String databaseValue;
    public final int previewType;

    static {
        DatabasePreviewType[] databasePreviewTypeArr = {new DatabasePreviewType(0, 1, "NONE", "none"), new DatabasePreviewType(1, 2, "TEXT", "text"), new DatabasePreviewType(2, 3, "ENCRYPTED", "encrypted"), new DatabasePreviewType(3, 4, "ERROR", "error")};
        $VALUES = databasePreviewTypeArr;
        $ENTRIES = new EnumEntriesList(databasePreviewTypeArr);
        Companion = new SendState.Companion();
    }

    public DatabasePreviewType(int i, int i2, String str, String str2) {
        this.databaseValue = str2;
        this.previewType = i2;
    }

    public static DatabasePreviewType valueOf(String str) {
        return (DatabasePreviewType) Enum.valueOf(DatabasePreviewType.class, str);
    }

    public static DatabasePreviewType[] values() {
        return (DatabasePreviewType[]) $VALUES.clone();
    }
}
