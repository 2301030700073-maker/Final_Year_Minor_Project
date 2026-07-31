package kotlin.reflect;

import coil3.util.UtilsKt;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GenericArrayTypeImpl implements GenericArrayType, Type {
    public final Type elementType;

    public GenericArrayTypeImpl(Type type) {
        type.getClass();
        this.elementType = type;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GenericArrayType) {
            return Intrinsics.areEqual(this.elementType, ((GenericArrayType) obj).getGenericComponentType());
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.elementType;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return UtilsKt.typeToString(this.elementType) + "[]";
    }

    public final int hashCode() {
        return this.elementType.hashCode();
    }

    public final String toString() {
        return getTypeName();
    }
}
