package org.wikipedia.compose.components;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InlinePosition {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InlinePosition[] $VALUES;
    public static final InlinePosition END;
    public static final InlinePosition START;

    static {
        InlinePosition inlinePosition = new InlinePosition("START", 0);
        START = inlinePosition;
        InlinePosition inlinePosition2 = new InlinePosition("END", 1);
        END = inlinePosition2;
        InlinePosition[] inlinePositionArr = {inlinePosition, inlinePosition2};
        $VALUES = inlinePositionArr;
        $ENTRIES = new EnumEntriesList(inlinePositionArr);
    }

    public static InlinePosition valueOf(String str) {
        return (InlinePosition) Enum.valueOf(InlinePosition.class, str);
    }

    public static InlinePosition[] values() {
        return (InlinePosition[]) $VALUES.clone();
    }
}
