package org.wikipedia.readinglist;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListMode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReadingListMode[] $VALUES;
    public static final ReadingListMode DEFAULT;
    public static final ReadingListMode PREVIEW;
    public static final ReadingListMode RECOMMENDED;

    static {
        ReadingListMode readingListMode = new ReadingListMode("DEFAULT", 0);
        DEFAULT = readingListMode;
        ReadingListMode readingListMode2 = new ReadingListMode("PREVIEW", 1);
        PREVIEW = readingListMode2;
        ReadingListMode readingListMode3 = new ReadingListMode("RECOMMENDED", 2);
        RECOMMENDED = readingListMode3;
        ReadingListMode[] readingListModeArr = {readingListMode, readingListMode2, readingListMode3};
        $VALUES = readingListModeArr;
        $ENTRIES = new EnumEntriesList(readingListModeArr);
    }

    public static ReadingListMode valueOf(String str) {
        return (ReadingListMode) Enum.valueOf(ReadingListMode.class, str);
    }

    public static ReadingListMode[] values() {
        return (ReadingListMode[]) $VALUES.clone();
    }
}
