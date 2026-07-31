package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JavaType {
    public static final /* synthetic */ JavaType[] $VALUES;
    public static final JavaType BOOLEAN;
    public static final JavaType BYTE_STRING;
    public static final JavaType DOUBLE;
    public static final JavaType ENUM;
    public static final JavaType FLOAT;
    public static final JavaType INT;
    public static final JavaType LONG;
    public static final JavaType MESSAGE;
    public static final JavaType STRING;
    public static final JavaType VOID;

    static {
        JavaType javaType = new JavaType("VOID", 0);
        VOID = javaType;
        JavaType javaType2 = new JavaType("INT", 1);
        INT = javaType2;
        JavaType javaType3 = new JavaType("LONG", 2);
        LONG = javaType3;
        JavaType javaType4 = new JavaType("FLOAT", 3);
        FLOAT = javaType4;
        JavaType javaType5 = new JavaType("DOUBLE", 4);
        DOUBLE = javaType5;
        JavaType javaType6 = new JavaType("BOOLEAN", 5);
        BOOLEAN = javaType6;
        JavaType javaType7 = new JavaType("STRING", 6);
        STRING = javaType7;
        ByteString$LiteralByteString byteString$LiteralByteString = ByteString$LiteralByteString.EMPTY;
        JavaType javaType8 = new JavaType("BYTE_STRING", 7);
        BYTE_STRING = javaType8;
        JavaType javaType9 = new JavaType("ENUM", 8);
        ENUM = javaType9;
        JavaType javaType10 = new JavaType("MESSAGE", 9);
        MESSAGE = javaType10;
        $VALUES = new JavaType[]{javaType, javaType2, javaType3, javaType4, javaType5, javaType6, javaType7, javaType8, javaType9, javaType10};
    }

    public static JavaType valueOf(String str) {
        return (JavaType) Enum.valueOf(JavaType.class, str);
    }

    public static JavaType[] values() {
        return (JavaType[]) $VALUES.clone();
    }
}
