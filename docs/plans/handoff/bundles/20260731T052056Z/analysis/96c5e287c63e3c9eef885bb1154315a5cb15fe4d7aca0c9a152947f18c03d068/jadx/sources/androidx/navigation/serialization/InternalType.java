package androidx.navigation.serialization;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InternalType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InternalType[] $VALUES;
    public static final InternalType ARRAY;
    public static final InternalType BOOL;
    public static final InternalType BOOL_ARRAY;
    public static final InternalType BOOL_NULLABLE;
    public static final InternalType DOUBLE;
    public static final InternalType DOUBLE_ARRAY;
    public static final InternalType DOUBLE_NULLABLE;
    public static final InternalType ENUM;
    public static final InternalType ENUM_NULLABLE;
    public static final InternalType FLOAT;
    public static final InternalType FLOAT_ARRAY;
    public static final InternalType FLOAT_NULLABLE;
    public static final InternalType INT;
    public static final InternalType INT_ARRAY;
    public static final InternalType INT_NULLABLE;
    public static final InternalType LIST;
    public static final InternalType LONG;
    public static final InternalType LONG_ARRAY;
    public static final InternalType LONG_NULLABLE;
    public static final InternalType STRING;
    public static final InternalType STRING_NULLABLE;
    public static final InternalType UNKNOWN;

    static {
        InternalType internalType = new InternalType("INT", 0);
        INT = internalType;
        InternalType internalType2 = new InternalType("INT_NULLABLE", 1);
        INT_NULLABLE = internalType2;
        InternalType internalType3 = new InternalType("BOOL", 2);
        BOOL = internalType3;
        InternalType internalType4 = new InternalType("BOOL_NULLABLE", 3);
        BOOL_NULLABLE = internalType4;
        InternalType internalType5 = new InternalType("DOUBLE", 4);
        DOUBLE = internalType5;
        InternalType internalType6 = new InternalType("DOUBLE_NULLABLE", 5);
        DOUBLE_NULLABLE = internalType6;
        InternalType internalType7 = new InternalType("FLOAT", 6);
        FLOAT = internalType7;
        InternalType internalType8 = new InternalType("FLOAT_NULLABLE", 7);
        FLOAT_NULLABLE = internalType8;
        InternalType internalType9 = new InternalType("LONG", 8);
        LONG = internalType9;
        InternalType internalType10 = new InternalType("LONG_NULLABLE", 9);
        LONG_NULLABLE = internalType10;
        InternalType internalType11 = new InternalType("STRING", 10);
        STRING = internalType11;
        InternalType internalType12 = new InternalType("STRING_NULLABLE", 11);
        STRING_NULLABLE = internalType12;
        InternalType internalType13 = new InternalType("INT_ARRAY", 12);
        INT_ARRAY = internalType13;
        InternalType internalType14 = new InternalType("BOOL_ARRAY", 13);
        BOOL_ARRAY = internalType14;
        InternalType internalType15 = new InternalType("DOUBLE_ARRAY", 14);
        DOUBLE_ARRAY = internalType15;
        InternalType internalType16 = new InternalType("FLOAT_ARRAY", 15);
        FLOAT_ARRAY = internalType16;
        InternalType internalType17 = new InternalType("LONG_ARRAY", 16);
        LONG_ARRAY = internalType17;
        InternalType internalType18 = new InternalType("ARRAY", 17);
        ARRAY = internalType18;
        InternalType internalType19 = new InternalType("LIST", 18);
        LIST = internalType19;
        InternalType internalType20 = new InternalType("ENUM", 19);
        ENUM = internalType20;
        InternalType internalType21 = new InternalType("ENUM_NULLABLE", 20);
        ENUM_NULLABLE = internalType21;
        InternalType internalType22 = new InternalType("UNKNOWN", 21);
        UNKNOWN = internalType22;
        InternalType[] internalTypeArr = {internalType, internalType2, internalType3, internalType4, internalType5, internalType6, internalType7, internalType8, internalType9, internalType10, internalType11, internalType12, internalType13, internalType14, internalType15, internalType16, internalType17, internalType18, internalType19, internalType20, internalType21, internalType22};
        $VALUES = internalTypeArr;
        $ENTRIES = new EnumEntriesList(internalTypeArr);
    }

    public static InternalType valueOf(String str) {
        return (InternalType) Enum.valueOf(InternalType.class, str);
    }

    public static InternalType[] values() {
        return (InternalType[]) $VALUES.clone();
    }
}
