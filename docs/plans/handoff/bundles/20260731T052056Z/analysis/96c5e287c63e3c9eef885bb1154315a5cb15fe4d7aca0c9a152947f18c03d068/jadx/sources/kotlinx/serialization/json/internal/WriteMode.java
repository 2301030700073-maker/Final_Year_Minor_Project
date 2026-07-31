package kotlinx.serialization.json.internal;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WriteMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WriteMode[] $VALUES;
    public static final WriteMode LIST;
    public static final WriteMode MAP;
    public static final WriteMode OBJ;
    public static final WriteMode POLY_OBJ;
    public final char begin;
    public final char end;

    static {
        WriteMode writeMode = new WriteMode("OBJ", 0, '{', '}');
        OBJ = writeMode;
        WriteMode writeMode2 = new WriteMode("LIST", 1, '[', ']');
        LIST = writeMode2;
        WriteMode writeMode3 = new WriteMode("MAP", 2, '{', '}');
        MAP = writeMode3;
        WriteMode writeMode4 = new WriteMode("POLY_OBJ", 3, '[', ']');
        POLY_OBJ = writeMode4;
        WriteMode[] writeModeArr = {writeMode, writeMode2, writeMode3, writeMode4};
        $VALUES = writeModeArr;
        $ENTRIES = new EnumEntriesList(writeModeArr);
    }

    public WriteMode(String str, int i, char c, char c2) {
        this.begin = c;
        this.end = c2;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static WriteMode valueOf(String str) {
        return (WriteMode) Enum.valueOf(WriteMode.class, str);
    }

    public static WriteMode[] values() {
        return (WriteMode[]) $VALUES.clone();
    }
}
