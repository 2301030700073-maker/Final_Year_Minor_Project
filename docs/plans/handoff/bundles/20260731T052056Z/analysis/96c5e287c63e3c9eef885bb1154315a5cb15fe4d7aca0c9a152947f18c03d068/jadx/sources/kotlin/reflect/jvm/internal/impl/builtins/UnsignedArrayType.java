package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum UnsignedArrayType {
    UBYTEARRAY(ClassId.fromString("kotlin/UByteArray", false)),
    USHORTARRAY(ClassId.fromString("kotlin/UShortArray", false)),
    UINTARRAY(ClassId.fromString("kotlin/UIntArray", false)),
    ULONGARRAY(ClassId.fromString("kotlin/ULongArray", false));

    private final ClassId classId;
    private final Name typeName;

    UnsignedArrayType(ClassId classId) {
        this.classId = classId;
        Name shortClassName = classId.getShortClassName();
        shortClassName.getClass();
        this.typeName = shortClassName;
    }

    public final Name getTypeName() {
        return this.typeName;
    }
}
