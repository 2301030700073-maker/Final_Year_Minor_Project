package com.fasterxml.jackson.annotation;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PropertyAccessor {
    private static final /* synthetic */ PropertyAccessor[] $VALUES;
    public static final PropertyAccessor ALL;
    public static final PropertyAccessor CREATOR;
    public static final PropertyAccessor FIELD;
    public static final PropertyAccessor GETTER;
    public static final PropertyAccessor IS_GETTER;
    public static final PropertyAccessor NONE;
    public static final PropertyAccessor SETTER;

    static {
        PropertyAccessor propertyAccessor = new PropertyAccessor("GETTER", 0);
        GETTER = propertyAccessor;
        PropertyAccessor propertyAccessor2 = new PropertyAccessor("SETTER", 1);
        SETTER = propertyAccessor2;
        PropertyAccessor propertyAccessor3 = new PropertyAccessor("CREATOR", 2);
        CREATOR = propertyAccessor3;
        PropertyAccessor propertyAccessor4 = new PropertyAccessor("FIELD", 3);
        FIELD = propertyAccessor4;
        PropertyAccessor propertyAccessor5 = new PropertyAccessor("IS_GETTER", 4);
        IS_GETTER = propertyAccessor5;
        PropertyAccessor propertyAccessor6 = new PropertyAccessor("NONE", 5);
        NONE = propertyAccessor6;
        PropertyAccessor propertyAccessor7 = new PropertyAccessor("ALL", 6);
        ALL = propertyAccessor7;
        $VALUES = new PropertyAccessor[]{propertyAccessor, propertyAccessor2, propertyAccessor3, propertyAccessor4, propertyAccessor5, propertyAccessor6, propertyAccessor7};
    }

    public static PropertyAccessor valueOf(String str) {
        return (PropertyAccessor) Enum.valueOf(PropertyAccessor.class, str);
    }

    public static PropertyAccessor[] values() {
        return (PropertyAccessor[]) $VALUES.clone();
    }
}
