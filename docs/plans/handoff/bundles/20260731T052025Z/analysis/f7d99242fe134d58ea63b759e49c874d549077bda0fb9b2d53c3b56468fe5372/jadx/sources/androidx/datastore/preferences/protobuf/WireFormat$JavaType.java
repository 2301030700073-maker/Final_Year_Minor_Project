package androidx.datastore.preferences.protobuf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WireFormat$JavaType {
    public static final /* synthetic */ WireFormat$JavaType[] $VALUES;
    public static final WireFormat$JavaType BOOLEAN;
    public static final WireFormat$JavaType BYTE_STRING;
    public static final WireFormat$JavaType DOUBLE;
    public static final WireFormat$JavaType ENUM;
    public static final WireFormat$JavaType FLOAT;
    public static final WireFormat$JavaType INT;
    public static final WireFormat$JavaType LONG;
    public static final WireFormat$JavaType MESSAGE;
    public static final WireFormat$JavaType STRING;

    static {
        WireFormat$JavaType wireFormat$JavaType = new WireFormat$JavaType("INT", 0);
        INT = wireFormat$JavaType;
        WireFormat$JavaType wireFormat$JavaType2 = new WireFormat$JavaType("LONG", 1);
        LONG = wireFormat$JavaType2;
        WireFormat$JavaType wireFormat$JavaType3 = new WireFormat$JavaType("FLOAT", 2);
        FLOAT = wireFormat$JavaType3;
        WireFormat$JavaType wireFormat$JavaType4 = new WireFormat$JavaType("DOUBLE", 3);
        DOUBLE = wireFormat$JavaType4;
        WireFormat$JavaType wireFormat$JavaType5 = new WireFormat$JavaType("BOOLEAN", 4);
        BOOLEAN = wireFormat$JavaType5;
        WireFormat$JavaType wireFormat$JavaType6 = new WireFormat$JavaType("STRING", 5);
        STRING = wireFormat$JavaType6;
        ByteString$LiteralByteString byteString$LiteralByteString = ByteString$LiteralByteString.EMPTY;
        WireFormat$JavaType wireFormat$JavaType7 = new WireFormat$JavaType("BYTE_STRING", 6);
        BYTE_STRING = wireFormat$JavaType7;
        WireFormat$JavaType wireFormat$JavaType8 = new WireFormat$JavaType("ENUM", 7);
        ENUM = wireFormat$JavaType8;
        WireFormat$JavaType wireFormat$JavaType9 = new WireFormat$JavaType("MESSAGE", 8);
        MESSAGE = wireFormat$JavaType9;
        $VALUES = new WireFormat$JavaType[]{wireFormat$JavaType, wireFormat$JavaType2, wireFormat$JavaType3, wireFormat$JavaType4, wireFormat$JavaType5, wireFormat$JavaType6, wireFormat$JavaType7, wireFormat$JavaType8, wireFormat$JavaType9};
    }

    public static WireFormat$JavaType valueOf(String str) {
        return (WireFormat$JavaType) Enum.valueOf(WireFormat$JavaType.class, str);
    }

    public static WireFormat$JavaType[] values() {
        return (WireFormat$JavaType[]) $VALUES.clone();
    }
}
