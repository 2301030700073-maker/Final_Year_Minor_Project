package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaElement;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaClassifierType extends ReflectJavaType {
    public final JavaClassifier classifier;
    public final Type reflectType;

    public ReflectJavaClassifierType(Type type) {
        JavaClassifier reflectJavaClass;
        type.getClass();
        this.reflectType = type;
        if (type instanceof Class) {
            reflectJavaClass = new ReflectJavaClass((Class) type);
        } else if (type instanceof TypeVariable) {
            reflectJavaClass = new ReflectJavaTypeParameter((TypeVariable) type);
        } else {
            if (!(type instanceof ParameterizedType)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("Not a classifier type (", type.getClass(), "): ", type);
                throw null;
            }
            Type rawType = ((ParameterizedType) type).getRawType();
            rawType.getClass();
            reflectJavaClass = new ReflectJavaClass((Class) rawType);
        }
        this.classifier = reflectJavaClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType, kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        fqName.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaType
    public final Type getReflectType() {
        return this.reflectType;
    }

    public final ArrayList getTypeArguments() {
        JavaElement reflectJavaArrayType;
        List<Type> parameterizedTypeArguments = ReflectClassUtilKt.getParameterizedTypeArguments(this.reflectType);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parameterizedTypeArguments, 10));
        for (Type type : parameterizedTypeArguments) {
            type.getClass();
            boolean z = type instanceof Class;
            if (z) {
                Class cls = (Class) type;
                if (cls.isPrimitive()) {
                    reflectJavaArrayType = new ReflectJavaPrimitiveType(cls);
                    arrayList.add(reflectJavaArrayType);
                }
            }
            reflectJavaArrayType = ((type instanceof GenericArrayType) || (z && ((Class) type).isArray())) ? new ReflectJavaArrayType(type) : type instanceof WildcardType ? new ReflectJavaWildcardType((WildcardType) type) : new ReflectJavaClassifierType(type);
            arrayList.add(reflectJavaArrayType);
        }
        return arrayList;
    }

    public final boolean isRaw() {
        Type type = this.reflectType;
        if (type instanceof Class) {
            TypeVariable[] typeParameters = ((Class) type).getTypeParameters();
            typeParameters.getClass();
            if (!(typeParameters.length == 0)) {
                return true;
            }
        }
        return false;
    }
}
