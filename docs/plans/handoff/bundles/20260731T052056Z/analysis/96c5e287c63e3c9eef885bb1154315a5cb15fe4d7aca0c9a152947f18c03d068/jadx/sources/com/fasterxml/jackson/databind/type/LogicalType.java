package com.fasterxml.jackson.databind.type;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LogicalType {
    private static final /* synthetic */ LogicalType[] $VALUES;
    public static final LogicalType Array;
    public static final LogicalType Binary;
    public static final LogicalType Boolean;
    public static final LogicalType Collection;
    public static final LogicalType DateTime;
    public static final LogicalType Enum;
    public static final LogicalType Float;
    public static final LogicalType Integer;
    public static final LogicalType Map;
    public static final LogicalType OtherScalar;
    public static final LogicalType POJO;
    public static final LogicalType Textual;
    public static final LogicalType Untyped;

    static {
        LogicalType logicalType = new LogicalType("Array", 0);
        Array = logicalType;
        LogicalType logicalType2 = new LogicalType("Collection", 1);
        Collection = logicalType2;
        LogicalType logicalType3 = new LogicalType("Map", 2);
        Map = logicalType3;
        LogicalType logicalType4 = new LogicalType("POJO", 3);
        POJO = logicalType4;
        LogicalType logicalType5 = new LogicalType("Untyped", 4);
        Untyped = logicalType5;
        LogicalType logicalType6 = new LogicalType("Integer", 5);
        Integer = logicalType6;
        LogicalType logicalType7 = new LogicalType("Float", 6);
        Float = logicalType7;
        LogicalType logicalType8 = new LogicalType("Boolean", 7);
        Boolean = logicalType8;
        LogicalType logicalType9 = new LogicalType("Enum", 8);
        Enum = logicalType9;
        LogicalType logicalType10 = new LogicalType("Textual", 9);
        Textual = logicalType10;
        LogicalType logicalType11 = new LogicalType("Binary", 10);
        Binary = logicalType11;
        LogicalType logicalType12 = new LogicalType("DateTime", 11);
        DateTime = logicalType12;
        LogicalType logicalType13 = new LogicalType("OtherScalar", 12);
        OtherScalar = logicalType13;
        $VALUES = new LogicalType[]{logicalType, logicalType2, logicalType3, logicalType4, logicalType5, logicalType6, logicalType7, logicalType8, logicalType9, logicalType10, logicalType11, logicalType12, logicalType13};
    }

    public static LogicalType valueOf(String str) {
        return (LogicalType) Enum.valueOf(LogicalType.class, str);
    }

    public static LogicalType[] values() {
        return (LogicalType[]) $VALUES.clone();
    }
}
