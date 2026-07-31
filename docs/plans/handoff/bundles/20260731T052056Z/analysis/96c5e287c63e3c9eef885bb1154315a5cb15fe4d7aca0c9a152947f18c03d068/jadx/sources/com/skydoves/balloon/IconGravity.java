package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IconGravity {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ IconGravity[] $VALUES;
    public static final IconGravity BOTTOM;
    public static final IconGravity END;
    public static final IconGravity START;
    public static final IconGravity TOP;

    static {
        IconGravity iconGravity = new IconGravity("START", 0);
        START = iconGravity;
        IconGravity iconGravity2 = new IconGravity("END", 1);
        END = iconGravity2;
        IconGravity iconGravity3 = new IconGravity("TOP", 2);
        TOP = iconGravity3;
        IconGravity iconGravity4 = new IconGravity("BOTTOM", 3);
        BOTTOM = iconGravity4;
        IconGravity[] iconGravityArr = {iconGravity, iconGravity2, iconGravity3, iconGravity4};
        $VALUES = iconGravityArr;
        $ENTRIES = new EnumEntriesList(iconGravityArr);
    }

    public static IconGravity valueOf(String str) {
        return (IconGravity) Enum.valueOf(IconGravity.class, str);
    }

    public static IconGravity[] values() {
        return (IconGravity[]) $VALUES.clone();
    }
}
