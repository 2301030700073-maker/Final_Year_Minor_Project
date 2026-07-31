package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlacementType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PlacementType[] $VALUES;
    public static final PlacementType ALIGNMENT;
    public static final PlacementType CENTER;
    public static final PlacementType DROPDOWN;

    static {
        PlacementType placementType = new PlacementType("ALIGNMENT", 0);
        ALIGNMENT = placementType;
        PlacementType placementType2 = new PlacementType("DROPDOWN", 1);
        DROPDOWN = placementType2;
        PlacementType placementType3 = new PlacementType("CENTER", 2);
        CENTER = placementType3;
        PlacementType[] placementTypeArr = {placementType, placementType2, placementType3};
        $VALUES = placementTypeArr;
        $ENTRIES = new EnumEntriesList(placementTypeArr);
    }

    public static PlacementType valueOf(String str) {
        return (PlacementType) Enum.valueOf(PlacementType.class, str);
    }

    public static PlacementType[] values() {
        return (PlacementType[]) $VALUES.clone();
    }
}
