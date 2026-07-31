package androidx.paging;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TerminalSeparatorType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ TerminalSeparatorType[] $VALUES;
    public static final TerminalSeparatorType FULLY_COMPLETE;
    public static final TerminalSeparatorType SOURCE_COMPLETE;

    static {
        TerminalSeparatorType terminalSeparatorType = new TerminalSeparatorType("FULLY_COMPLETE", 0);
        FULLY_COMPLETE = terminalSeparatorType;
        TerminalSeparatorType terminalSeparatorType2 = new TerminalSeparatorType("SOURCE_COMPLETE", 1);
        SOURCE_COMPLETE = terminalSeparatorType2;
        TerminalSeparatorType[] terminalSeparatorTypeArr = {terminalSeparatorType, terminalSeparatorType2};
        $VALUES = terminalSeparatorTypeArr;
        $ENTRIES = new EnumEntriesList(terminalSeparatorTypeArr);
    }

    public static TerminalSeparatorType valueOf(String str) {
        return (TerminalSeparatorType) Enum.valueOf(TerminalSeparatorType.class, str);
    }

    public static TerminalSeparatorType[] values() {
        return (TerminalSeparatorType[]) $VALUES.clone();
    }
}
