package androidx.compose.foundation.text;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Handle {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Handle[] $VALUES;
    public static final Handle Cursor;
    public static final Handle SelectionEnd;
    public static final Handle SelectionStart;

    static {
        Handle handle = new Handle("Cursor", 0);
        Cursor = handle;
        Handle handle2 = new Handle("SelectionStart", 1);
        SelectionStart = handle2;
        Handle handle3 = new Handle("SelectionEnd", 2);
        SelectionEnd = handle3;
        Handle[] handleArr = {handle, handle2, handle3};
        $VALUES = handleArr;
        $ENTRIES = new EnumEntriesList(handleArr);
    }

    public static Handle valueOf(String str) {
        return (Handle) Enum.valueOf(Handle.class, str);
    }

    public static Handle[] values() {
        return (Handle[]) $VALUES.clone();
    }
}
