package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.hcaptcha.sdk.HCaptchaHtml;
import j$.util.Objects;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Annotated {
    public static final HCaptchaHtml NO_ANNOTATIONS = new HCaptchaHtml();

    public static ParameterizedType maybeGetParameterizedType(Type type) {
        if (type instanceof ParameterizedType) {
            return (ParameterizedType) type;
        }
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return null;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length == 1) {
                return maybeGetParameterizedType(upperBounds[0]);
            }
        }
        return null;
    }

    public static TypeVariable maybeGetTypeVariable(Type type) {
        if (type instanceof TypeVariable) {
            return (TypeVariable) type;
        }
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return null;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length == 1) {
                return maybeGetTypeVariable(upperBounds[0]);
            }
        }
        return null;
    }

    public static boolean pessimisticallyValidateBound(AnnotatedClass annotatedClass, TypeBase typeBase, Type type) {
        if (typeBase.isTypeOrSubTypeOf(annotatedClass.resolveType(type)._class)) {
            ParameterizedType maybeGetParameterizedType = maybeGetParameterizedType(type);
            if (maybeGetParameterizedType == null || !Objects.equals(typeBase._class, maybeGetParameterizedType.getRawType())) {
                return true;
            }
            Type[] actualTypeArguments = maybeGetParameterizedType.getActualTypeArguments();
            TypeBindings bindings = typeBase.getBindings();
            if (bindings._types.length == actualTypeArguments.length) {
                for (int i = 0; i < bindings._types.length; i++) {
                    if (pessimisticallyValidateBound(annotatedClass, bindings.getBoundType(i), actualTypeArguments[i])) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public abstract Annotated addOrOverride(Annotation annotation);

    public abstract MemoryCacheService asAnnotationMap();

    public abstract Annotations asAnnotations();

    public abstract Annotation getAnnotation(Class cls);

    public abstract String getName();

    public abstract Class getRawType();

    public abstract TypeBase getType();

    public abstract boolean isPresent(Annotation annotation);
}
