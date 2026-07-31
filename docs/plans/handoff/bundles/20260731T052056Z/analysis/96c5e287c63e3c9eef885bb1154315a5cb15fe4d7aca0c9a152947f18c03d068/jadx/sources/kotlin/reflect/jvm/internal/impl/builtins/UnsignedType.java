package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum UnsignedType {
    UBYTE(ClassId.fromString("kotlin/UByte", false)),
    USHORT(ClassId.fromString("kotlin/UShort", false)),
    UINT(ClassId.fromString("kotlin/UInt", false)),
    ULONG(ClassId.fromString("kotlin/ULong", false));

    private final ClassId arrayClassId;
    private final ClassId classId;
    private final Name typeName;

    UnsignedType(ClassId classId) {
        this.classId = classId;
        Name shortClassName = classId.getShortClassName();
        shortClassName.getClass();
        this.typeName = shortClassName;
        this.arrayClassId = new ClassId(classId.getPackageFqName(), Name.identifier(shortClassName.asString() + "Array"));
    }

    public final ClassId getArrayClassId() {
        return this.arrayClassId;
    }

    public final ClassId getClassId() {
        return this.classId;
    }

    public final Name getTypeName() {
        return this.typeName;
    }
}
