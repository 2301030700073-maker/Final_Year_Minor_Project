package com.google.gson.reflect;

import com.google.gson.internal.C$Gson$Types;
import j$.util.Objects;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeToken {
    public final int hashCode;
    public final Class rawType;
    public final Type type;

    public TypeToken(Type type) {
        Objects.requireNonNull(type);
        Type canonicalize = C$Gson$Types.canonicalize(type);
        this.type = canonicalize;
        this.rawType = C$Gson$Types.getRawType(canonicalize);
        this.hashCode = canonicalize.hashCode();
    }

    public static TypeToken getParameterized(Type... typeArr) {
        TypeVariable[] typeParameters = List.class.getTypeParameters();
        int length = typeParameters.length;
        int length2 = typeArr.length;
        if (length2 != length) {
            throw new IllegalArgumentException(List.class.getName() + " requires " + length + " type arguments, but got " + length2);
        }
        for (int i = 0; i < length; i++) {
            Type type = typeArr[i];
            Class<?> rawType = C$Gson$Types.getRawType(type);
            TypeVariable typeVariable = typeParameters[i];
            for (Type type2 : typeVariable.getBounds()) {
                if (!C$Gson$Types.getRawType(type2).isAssignableFrom(rawType)) {
                    throw new IllegalArgumentException("Type argument " + type + " does not satisfy bounds for type variable " + typeVariable + " declared by " + List.class);
                }
            }
        }
        return new TypeToken(new C$Gson$Types.ParameterizedTypeImpl(null, List.class, typeArr));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return C$Gson$Types.equals(this.type, ((TypeToken) obj).type);
        }
        return false;
    }

    public final int hashCode() {
        return this.hashCode;
    }

    public final String toString() {
        return C$Gson$Types.typeToString(this.type);
    }
}
