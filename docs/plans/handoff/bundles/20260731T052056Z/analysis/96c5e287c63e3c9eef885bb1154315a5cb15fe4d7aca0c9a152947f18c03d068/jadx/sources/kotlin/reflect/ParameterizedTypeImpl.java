package kotlin.reflect;

import coil3.util.UtilsKt;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParameterizedTypeImpl implements ParameterizedType, Type {
    public final Type ownerType;
    public final Class rawType;
    public final Type[] typeArguments;

    public ParameterizedTypeImpl(Class cls, Type type, ArrayList arrayList) {
        this.rawType = cls;
        this.ownerType = type;
        this.typeArguments = (Type[]) arrayList.toArray(new Type[0]);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ParameterizedType)) {
            return false;
        }
        ParameterizedType parameterizedType = (ParameterizedType) obj;
        return this.rawType.equals(parameterizedType.getRawType()) && Intrinsics.areEqual(this.ownerType, parameterizedType.getOwnerType()) && Arrays.equals(this.typeArguments, parameterizedType.getActualTypeArguments());
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return this.typeArguments;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.ownerType;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.rawType;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        StringBuilder sb = new StringBuilder();
        Class cls = this.rawType;
        Type type = this.ownerType;
        if (type != null) {
            sb.append(UtilsKt.typeToString(type));
            sb.append("$");
            sb.append(cls.getSimpleName());
        } else {
            sb.append(UtilsKt.typeToString(cls));
        }
        Type[] typeArr = this.typeArguments;
        if (typeArr.length != 0) {
            ArraysKt___ArraysKt.joinTo(typeArr, sb, ", ", "<", ">", "...", ParameterizedTypeImpl$getTypeName$1$1.INSTANCE);
        }
        return sb.toString();
    }

    public final int hashCode() {
        int hashCode = this.rawType.hashCode();
        Type type = this.ownerType;
        return Arrays.hashCode(this.typeArguments) ^ (hashCode ^ (type != null ? type.hashCode() : 0));
    }

    public final String toString() {
        return getTypeName();
    }
}
