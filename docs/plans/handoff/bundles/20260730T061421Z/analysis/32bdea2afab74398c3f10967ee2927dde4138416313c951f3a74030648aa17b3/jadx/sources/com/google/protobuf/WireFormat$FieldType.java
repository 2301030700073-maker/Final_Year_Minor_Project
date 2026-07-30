package com.google.protobuf;

import c.b.b.Z0;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'i' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class WireFormat$FieldType {
    public static final WireFormat$FieldType i;
    public static final WireFormat$FieldType k;
    public static final WireFormat$FieldType l;
    public static final WireFormat$FieldType r;
    public static final /* synthetic */ WireFormat$FieldType[] s;
    public final WireFormat$JavaType javaType;
    public final int wireType;

    /* renamed from: a, reason: collision with root package name */
    public static final WireFormat$FieldType f3514a = new WireFormat$FieldType("DOUBLE", 0, WireFormat$JavaType.DOUBLE, 1);

    /* renamed from: b, reason: collision with root package name */
    public static final WireFormat$FieldType f3515b = new WireFormat$FieldType("FLOAT", 1, WireFormat$JavaType.FLOAT, 5);

    /* renamed from: c, reason: collision with root package name */
    public static final WireFormat$FieldType f3516c = new WireFormat$FieldType("INT64", 2, WireFormat$JavaType.LONG, 0);

    /* renamed from: d, reason: collision with root package name */
    public static final WireFormat$FieldType f3517d = new WireFormat$FieldType("UINT64", 3, WireFormat$JavaType.LONG, 0);
    public static final WireFormat$FieldType e = new WireFormat$FieldType("INT32", 4, WireFormat$JavaType.INT, 0);
    public static final WireFormat$FieldType f = new WireFormat$FieldType("FIXED64", 5, WireFormat$JavaType.LONG, 1);
    public static final WireFormat$FieldType g = new WireFormat$FieldType("FIXED32", 6, WireFormat$JavaType.INT, 5);
    public static final WireFormat$FieldType h = new WireFormat$FieldType("BOOL", 7, WireFormat$JavaType.BOOLEAN, 0);
    public static final WireFormat$FieldType j = new WireFormat$FieldType("GROUP", 9, WireFormat$JavaType.MESSAGE, 3) { // from class: com.google.protobuf.WireFormat$FieldType.2
    };
    public static final WireFormat$FieldType m = new WireFormat$FieldType("UINT32", 12, WireFormat$JavaType.INT, 0);
    public static final WireFormat$FieldType n = new WireFormat$FieldType("ENUM", 13, WireFormat$JavaType.ENUM, 0);
    public static final WireFormat$FieldType o = new WireFormat$FieldType("SFIXED32", 14, WireFormat$JavaType.INT, 5);
    public static final WireFormat$FieldType p = new WireFormat$FieldType("SFIXED64", 15, WireFormat$JavaType.LONG, 1);
    public static final WireFormat$FieldType q = new WireFormat$FieldType("SINT32", 16, WireFormat$JavaType.INT, 0);

    static {
        int i2 = 2;
        i = new WireFormat$FieldType("STRING", 8, WireFormat$JavaType.STRING, i2) { // from class: com.google.protobuf.WireFormat$FieldType.1
        };
        k = new WireFormat$FieldType("MESSAGE", 10, WireFormat$JavaType.MESSAGE, i2) { // from class: com.google.protobuf.WireFormat$FieldType.3
        };
        l = new WireFormat$FieldType("BYTES", 11, WireFormat$JavaType.BYTE_STRING, i2) { // from class: com.google.protobuf.WireFormat$FieldType.4
        };
        WireFormat$FieldType wireFormat$FieldType = new WireFormat$FieldType("SINT64", 17, WireFormat$JavaType.LONG, 0);
        r = wireFormat$FieldType;
        s = new WireFormat$FieldType[]{f3514a, f3515b, f3516c, f3517d, e, f, g, h, i, j, k, l, m, n, o, p, q, wireFormat$FieldType};
    }

    public WireFormat$FieldType(String str, int i2, WireFormat$JavaType wireFormat$JavaType, int i3) {
        this.javaType = wireFormat$JavaType;
        this.wireType = i3;
    }

    public static WireFormat$FieldType valueOf(String str) {
        return (WireFormat$FieldType) Enum.valueOf(WireFormat$FieldType.class, str);
    }

    public static WireFormat$FieldType[] values() {
        return (WireFormat$FieldType[]) s.clone();
    }

    public WireFormat$FieldType(String str, int i2, WireFormat$JavaType wireFormat$JavaType, int i3, Z0 z0) {
        this.javaType = wireFormat$JavaType;
        this.wireType = i3;
    }
}
