package com.fasterxml.jackson.databind.introspect;

import coil3.memory.MemoryCacheService;
import com.fasterxml.jackson.databind.type.TypeBase;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotatedConstructor extends AnnotatedWithParams {
    public final Constructor _constructor;

    public AnnotatedConstructor(TypeResolutionContext typeResolutionContext, Constructor constructor, MemoryCacheService memoryCacheService, MemoryCacheService[] memoryCacheServiceArr) {
        super(typeResolutionContext, memoryCacheService, memoryCacheServiceArr);
        if (constructor != null) {
            this._constructor = constructor;
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Null constructor not allowed");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!ClassUtil.hasClass(obj, AnnotatedConstructor.class)) {
            return false;
        }
        Constructor constructor = ((AnnotatedConstructor) obj)._constructor;
        Constructor constructor2 = this._constructor;
        return constructor == null ? constructor2 == null : constructor.equals(constructor2);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Class getDeclaringClass() {
        return this._constructor.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Member getMember() {
        return this._constructor;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final String getName() {
        return this._constructor.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedWithParams
    public final TypeBase getParameterType(int i) {
        Type[] genericParameterTypes = this._constructor.getGenericParameterTypes();
        if (i >= genericParameterTypes.length) {
            return null;
        }
        return this._typeContext.resolveType(genericParameterTypes[i]);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final Class getRawType() {
        return this._constructor.getDeclaringClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final TypeBase getType() {
        return this._typeContext.resolveType(this._constructor.getDeclaringClass());
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Object getValue(Object obj) {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor of ".concat(this._constructor.getDeclaringClass().getName()));
    }

    public final int hashCode() {
        return this._constructor.getName().hashCode();
    }

    public final String toString() {
        Constructor constructor = this._constructor;
        int length = constructor.getParameterTypes().length;
        return String.format("[constructor for %s (%d arg%s), annotations: %s", ClassUtil.nameOf(constructor.getDeclaringClass()), Integer.valueOf(length), length == 1 ? "" : "s", this._annotations);
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public final Annotated withAnnotations(MemoryCacheService memoryCacheService) {
        return new AnnotatedConstructor(this._typeContext, this._constructor, memoryCacheService, this._paramAnnotations);
    }
}
