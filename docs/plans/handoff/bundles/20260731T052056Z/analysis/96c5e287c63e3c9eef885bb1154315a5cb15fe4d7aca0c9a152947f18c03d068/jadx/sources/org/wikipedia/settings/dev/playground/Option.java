package org.wikipedia.settings.dev.playground;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Option {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Option[] $VALUES;
    public static final Option DELETE;
    public static final Option ENTRY;
    public static final Option FILTER;

    static {
        Option option = new Option("ENTRY", 0);
        ENTRY = option;
        Option option2 = new Option("FILTER", 1);
        FILTER = option2;
        Option option3 = new Option("DELETE", 2);
        DELETE = option3;
        Option[] optionArr = {option, option2, option3};
        $VALUES = optionArr;
        $ENTRIES = new EnumEntriesList(optionArr);
    }

    public static Option valueOf(String str) {
        return (Option) Enum.valueOf(Option.class, str);
    }

    public static Option[] values() {
        return (Option[]) $VALUES.clone();
    }
}
