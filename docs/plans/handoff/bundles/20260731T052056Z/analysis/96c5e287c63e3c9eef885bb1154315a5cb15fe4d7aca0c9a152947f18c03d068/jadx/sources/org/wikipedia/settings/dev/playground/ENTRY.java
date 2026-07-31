package org.wikipedia.settings.dev.playground;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ENTRY {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ENTRY[] $VALUES;
    public static final ENTRY RANDOM_BULK;
    public static final ENTRY SINGLE;

    static {
        ENTRY entry = new ENTRY("SINGLE", 0);
        SINGLE = entry;
        ENTRY entry2 = new ENTRY("RANDOM_BULK", 1);
        RANDOM_BULK = entry2;
        ENTRY[] entryArr = {entry, entry2};
        $VALUES = entryArr;
        $ENTRIES = new EnumEntriesList(entryArr);
    }

    public static ENTRY valueOf(String str) {
        return (ENTRY) Enum.valueOf(ENTRY.class, str);
    }

    public static ENTRY[] values() {
        return (ENTRY[]) $VALUES.clone();
    }
}
