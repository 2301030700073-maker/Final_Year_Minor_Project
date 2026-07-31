package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaArrayType extends ReflectJavaType {
    public final ReflectJavaType componentType;
    public final Type reflectType;

    /* JADX WARN: Multi-variable type inference failed */
    public ReflectJavaArrayType(Type type) {
        ReflectJavaType reflectJavaPrimitiveType;
        ReflectJavaType reflectJavaType;
        this.reflectType = type;
        if (!(type instanceof GenericArrayType)) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    componentType.getClass();
                    reflectJavaPrimitiveType = componentType.isPrimitive() ? new ReflectJavaPrimitiveType(componentType) : ((componentType instanceof GenericArrayType) || componentType.isArray()) ? new ReflectJavaArrayType(componentType) : componentType instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) componentType) : new ReflectJavaClassifierType(componentType);
                }
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m$1("Not an array type (", type.getClass(), "): ", type);
            throw null;
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        genericComponentType.getClass();
        boolean z = genericComponentType instanceof Class;
        if (z) {
            Class cls2 = (Class) genericComponentType;
            if (cls2.isPrimitive()) {
                reflectJavaType = new ReflectJavaPrimitiveType(cls2);
                this.componentType = reflectJavaType;
            }
        }
        reflectJavaPrimitiveType = ((genericComponentType instanceof GenericArrayType) || (z && ((Class) genericComponentType).isArray())) ? new ReflectJavaArrayType(genericComponentType) : genericComponentType instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) genericComponentType) : new ReflectJavaClassifierType(genericComponentType);
        reflectJavaType = reflectJavaPrimitiveType;
        this.componentType = reflectJavaType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type getReflectType() {
        return this.reflectType;
    }
}
