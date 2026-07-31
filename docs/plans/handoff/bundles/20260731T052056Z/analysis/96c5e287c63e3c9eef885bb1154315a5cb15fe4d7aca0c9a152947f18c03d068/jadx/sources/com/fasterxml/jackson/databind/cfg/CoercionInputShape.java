package com.fasterxml.jackson.databind.cfg;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CoercionInputShape {
    private static final /* synthetic */ CoercionInputShape[] $VALUES;
    public static final CoercionInputShape Array;
    public static final CoercionInputShape Binary;
    public static final CoercionInputShape Boolean;
    public static final CoercionInputShape EmptyArray;
    public static final CoercionInputShape EmptyObject;
    public static final CoercionInputShape EmptyString;
    public static final CoercionInputShape Float;
    public static final CoercionInputShape Integer;
    public static final CoercionInputShape Object;
    public static final CoercionInputShape String;

    static {
        CoercionInputShape coercionInputShape = new CoercionInputShape("Array", 0);
        Array = coercionInputShape;
        CoercionInputShape coercionInputShape2 = new CoercionInputShape("Object", 1);
        Object = coercionInputShape2;
        CoercionInputShape coercionInputShape3 = new CoercionInputShape("Integer", 2);
        Integer = coercionInputShape3;
        CoercionInputShape coercionInputShape4 = new CoercionInputShape("Float", 3);
        Float = coercionInputShape4;
        CoercionInputShape coercionInputShape5 = new CoercionInputShape("Boolean", 4);
        Boolean = coercionInputShape5;
        CoercionInputShape coercionInputShape6 = new CoercionInputShape("String", 5);
        String = coercionInputShape6;
        CoercionInputShape coercionInputShape7 = new CoercionInputShape("Binary", 6);
        Binary = coercionInputShape7;
        CoercionInputShape coercionInputShape8 = new CoercionInputShape("EmptyArray", 7);
        EmptyArray = coercionInputShape8;
        CoercionInputShape coercionInputShape9 = new CoercionInputShape("EmptyObject", 8);
        EmptyObject = coercionInputShape9;
        CoercionInputShape coercionInputShape10 = new CoercionInputShape("EmptyString", 9);
        EmptyString = coercionInputShape10;
        $VALUES = new CoercionInputShape[]{coercionInputShape, coercionInputShape2, coercionInputShape3, coercionInputShape4, coercionInputShape5, coercionInputShape6, coercionInputShape7, coercionInputShape8, coercionInputShape9, coercionInputShape10};
    }

    public static CoercionInputShape valueOf(String str) {
        return (CoercionInputShape) Enum.valueOf(CoercionInputShape.class, str);
    }

    public static CoercionInputShape[] values() {
        return (CoercionInputShape[]) $VALUES.clone();
    }
}
