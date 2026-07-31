package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrowOrientationRules {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ArrowOrientationRules[] $VALUES;
    public static final ArrowOrientationRules ALIGN_ANCHOR;
    public static final ArrowOrientationRules ALIGN_FIXED;

    static {
        ArrowOrientationRules arrowOrientationRules = new ArrowOrientationRules("ALIGN_ANCHOR", 0);
        ALIGN_ANCHOR = arrowOrientationRules;
        ArrowOrientationRules arrowOrientationRules2 = new ArrowOrientationRules("ALIGN_FIXED", 1);
        ALIGN_FIXED = arrowOrientationRules2;
        ArrowOrientationRules[] arrowOrientationRulesArr = {arrowOrientationRules, arrowOrientationRules2};
        $VALUES = arrowOrientationRulesArr;
        $ENTRIES = new EnumEntriesList(arrowOrientationRulesArr);
    }

    public static ArrowOrientationRules valueOf(String str) {
        return (ArrowOrientationRules) Enum.valueOf(ArrowOrientationRules.class, str);
    }

    public static ArrowOrientationRules[] values() {
        return (ArrowOrientationRules[]) $VALUES.clone();
    }
}
