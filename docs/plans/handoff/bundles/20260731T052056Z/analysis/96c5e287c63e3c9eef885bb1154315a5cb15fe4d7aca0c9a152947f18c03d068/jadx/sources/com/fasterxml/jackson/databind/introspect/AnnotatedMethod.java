package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedMethod extends AnnotatedWithParams {
    public final transient Method _method;
    public Class[] _paramClasses;

    public AnnotatedMethod(TypeResolutionContext typeResolutionContext, Method method, MemoryCacheService memoryCacheService, MemoryCacheService[] memoryCacheServiceArr) {
        super(typeResolutionContext, memoryCacheService, memoryCacheServiceArr);
        if (method != null) {
            this._method = method;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot construct AnnotatedMethod with null Method");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!ClassUtil.hasClass(obj, AnnotatedMethod.class)) {
            return false;
        }
        Method method = ((AnnotatedMethod) obj)._method;
        Method method2 = this._method;
        return method == null ? method2 == null : method.equals(method2);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Class getDeclaringClass() {
        return this._method.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final String getFullName() {
        String fullName = super.getFullName();
        int length = getRawParameterTypes().length;
        if (length == 0) {
            return fullName.concat("()");
        }
        if (length != 1) {
            return String.format("%s(%d params)", super.getFullName(), Integer.valueOf(getRawParameterTypes().length));
        }
        StringBuilder sb = new StringBuilder(fullName);
        sb.append("(");
        Class[] rawParameterTypes = getRawParameterTypes();
        sb.append((rawParameterTypes.length <= 0 ? null : rawParameterTypes[0]).getName());
        sb.append(")");
        return sb.toString();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Member getMember() {
        return this._method;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return this._method.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final TypeBase getParameterType(int i) {
        Type[] genericParameterTypes = this._method.getGenericParameterTypes();
        if (i >= genericParameterTypes.length) {
            return null;
        }
        return this._typeContext.resolveType(genericParameterTypes[i]);
    }

    public final Class[] getRawParameterTypes() {
        Class[] clsArr = this._paramClasses;
        if (clsArr != null) {
            return clsArr;
        }
        Class<?>[] parameterTypes = this._method.getParameterTypes();
        this._paramClasses = parameterTypes;
        return parameterTypes;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class getRawType() {
        return this._method.getReturnType();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final TypeBase getType() {
        return this._typeContext.resolveType(this._method.getGenericReturnType());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Object getValue(Object obj) {
        try {
            return this._method.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new IllegalArgumentException("Failed to getValue() with method " + this.getFullName() + ": " + ClassUtil.exceptionMessage(e), e);
        }
    }

    public final int hashCode() {
        return this._method.getName().hashCode();
    }

    public final String toString() {
        return "[method " + getFullName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Annotated withAnnotations(MemoryCacheService memoryCacheService) {
        return new AnnotatedMethod(this._typeContext, this._method, memoryCacheService, this._paramAnnotations);
    }
}
