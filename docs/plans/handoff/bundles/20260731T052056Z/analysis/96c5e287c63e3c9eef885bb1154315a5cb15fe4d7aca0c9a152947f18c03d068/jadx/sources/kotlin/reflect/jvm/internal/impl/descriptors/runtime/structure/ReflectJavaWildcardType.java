package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaWildcardType extends ReflectJavaType {
    public final WildcardType reflectType;

    public ReflectJavaWildcardType(WildcardType wildcardType) {
        this.reflectType = wildcardType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return EmptyList.INSTANCE;
    }

    public final ReflectJavaType getBound$1() {
        WildcardType wildcardType = this.reflectType;
        Type[] upperBounds = wildcardType.getUpperBounds();
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            Gson$$ExternalSyntheticBUOutline0.m$5("Wildcard types with many bounds are not yet supported: ", wildcardType);
            return null;
        }
        if (lowerBounds.length == 1) {
            Object single = ArraysKt___ArraysKt.single(lowerBounds);
            single.getClass();
            Type type = (Type) single;
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    return new ReflectJavaPrimitiveType(cls);
                }
            }
            return ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) ? new ReflectJavaArrayType(type) : type instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) type) : new ReflectJavaClassifierType(type);
        }
        if (upperBounds.length == 1) {
            Type type2 = (Type) ArraysKt___ArraysKt.single(upperBounds);
            if (!Intrinsics.areEqual(type2, Object.class)) {
                type2.getClass();
                boolean z2 = type2 instanceof Class;
                if (z2) {
                    Class cls2 = (Class) type2;
                    if (cls2.isPrimitive()) {
                        return new ReflectJavaPrimitiveType(cls2);
                    }
                }
                return ((type2 instanceof GenericArrayType) || (z2 && ((Class) type2).isArray())) ? new ReflectJavaArrayType(type2) : type2 instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) type2) : new ReflectJavaClassifierType(type2);
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type getReflectType() {
        return this.reflectType;
    }
}
