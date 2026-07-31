package kotlin.reflect.jvm.internal.impl.protobuf;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum WireFormat$JavaType {
    INT(0),
    LONG(1),
    FLOAT(2),
    DOUBLE(3),
    BOOLEAN(4),
    STRING(5),
    BYTE_STRING(6),
    ENUM(7),
    MESSAGE(8);

    private final Object defaultDefault;

    WireFormat$JavaType(int i) {
        this.defaultDefault = r2;
    }
}
