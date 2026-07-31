package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrowPositionRules {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ArrowPositionRules[] $VALUES;
    public static final ArrowPositionRules ALIGN_ANCHOR;
    public static final ArrowPositionRules ALIGN_BALLOON;

    static {
        ArrowPositionRules arrowPositionRules = new ArrowPositionRules("ALIGN_BALLOON", 0);
        ALIGN_BALLOON = arrowPositionRules;
        ArrowPositionRules arrowPositionRules2 = new ArrowPositionRules("ALIGN_ANCHOR", 1);
        ALIGN_ANCHOR = arrowPositionRules2;
        ArrowPositionRules[] arrowPositionRulesArr = {arrowPositionRules, arrowPositionRules2};
        $VALUES = arrowPositionRulesArr;
        $ENTRIES = new EnumEntriesList(arrowPositionRulesArr);
    }

    public static ArrowPositionRules valueOf(String str) {
        return (ArrowPositionRules) Enum.valueOf(ArrowPositionRules.class, str);
    }

    public static ArrowPositionRules[] values() {
        return (ArrowPositionRules[]) $VALUES.clone();
    }
}
